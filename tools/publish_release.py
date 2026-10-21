#!/usr/bin/env python3
"""Create/resume a versioned prerelease, upload assets, and publish after upload.
Authentication: GH_TOKEN environment variable. Python standard library only.
"""
import argparse,hashlib,json,os,sys,urllib.error,urllib.parse,urllib.request
from pathlib import Path

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--repo',default='weilai090624-code/JiajiaBox')
    parser.add_argument('--tag',required=True)
    parser.add_argument('--commit',required=True)
    parser.add_argument('--title',required=True)
    parser.add_argument('--notes-file',required=True,type=Path)
    parser.add_argument('--asset',action='append',required=True,type=Path)
    parser.add_argument('--output-json',type=Path)
    parser.add_argument('--release-id',type=int,help='Resume a specific existing release')
    args=parser.parse_args();token=os.environ.get('GH_TOKEN','')
    if not token:parser.error('Set GH_TOKEN to a token with repository Contents write permission')
    if any(not path.is_file() for path in args.asset):parser.error('Every asset must be a local file')
    if len({path.name for path in args.asset})!=len(args.asset):parser.error('Asset filenames must be unique')
    base='https://api.github.com/repos/'+args.repo
    class Redirect(urllib.request.HTTPRedirectHandler):
        def redirect_request(self,req,fp,code,msg,headers,newurl):
            out=super().redirect_request(req,fp,code,msg,headers,newurl)
            if out and urllib.parse.urlparse(newurl).hostname not in ('api.github.com','uploads.github.com'):out.remove_header('Authorization')
            return out
    opener=urllib.request.build_opener(Redirect)
    def request(url,method='GET',data=None,content_type='application/json',length=None):
        if urllib.parse.urlparse(url).hostname not in ('api.github.com','uploads.github.com'):raise RuntimeError('Unexpected API host')
        headers={'Authorization':'Bearer '+token,'Accept':'application/vnd.github+json','X-GitHub-Api-Version':'2026-03-10','Content-Type':content_type}
        if isinstance(data,dict):data=json.dumps(data,ensure_ascii=False).encode()
        if length is not None:headers['Content-Length']=str(length)
        try:
            with opener.open(urllib.request.Request(url,data=data,headers=headers,method=method),timeout=120) as response:return json.load(response)
        except urllib.error.HTTPError as error:
            try:message=json.load(error).get('message','API request failed')
            except Exception:message='API request failed'
            raise RuntimeError(f'GitHub HTTP {error.code}: {message}') from None
    # The release's tag must identify the pushed source revision.
    tag_url=base+'/git/ref/tags/'+urllib.parse.quote(args.tag,safe='')
    tag=request(tag_url)['object']
    while tag['type']=='tag':tag=request(base+'/git/tags/'+tag['sha'])['object']
    if tag['sha']!=args.commit:raise RuntimeError('Tag does not match --commit')
    release_id=args.release_id
    if not release_id and args.output_json and args.output_json.is_file():
        checkpoint=json.loads(args.output_json.read_text())
        if checkpoint.get('repository')==args.repo and checkpoint.get('tag')==args.tag and checkpoint.get('commit')==args.commit:release_id=checkpoint.get('release_id')
    if release_id:release=request(base+'/releases/'+str(release_id))
    else:
        try:release=request(base+'/releases/tags/'+urllib.parse.quote(args.tag,safe=''))
        except RuntimeError as error:
            if 'HTTP 404' not in str(error):raise
            # A draft may not be returned by the tag endpoint. Reuse it instead
            # of creating a second draft after an interrupted attachment upload.
            matches=[r for r in request(base+'/releases?per_page=100') if r['tag_name']==args.tag]
            if len(matches)>1:raise RuntimeError('Multiple releases match this tag; select --release-id')
            release=matches[0] if matches else request(base+'/releases','POST',{'tag_name':args.tag,'target_commitish':args.commit,'name':args.title,'body':args.notes_file.read_text(),'draft':True,'prerelease':True})
    if release['tag_name']!=args.tag:raise RuntimeError('Release does not match --tag')
    def save_summary(value):
        summary={'repository':args.repo,'tag':args.tag,'commit':args.commit,'release_id':value['id'],'release_url':value['html_url'],'draft':value['draft'],'assets':[{'name':a['name'],'id':a['id'],'size':a['size'],'digest':a.get('digest'),'url':a['browser_download_url']} for a in value['assets']]}
        if args.output_json:
            args.output_json.parent.mkdir(parents=True,exist_ok=True)
            temporary=args.output_json.with_suffix(args.output_json.suffix+'.tmp')
            temporary.write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n');temporary.replace(args.output_json)
        return summary
    # Persist the release ID before any upload can lose its response.
    save_summary(release)
    assets={asset['name']:asset for asset in release['assets']}
    for path in args.asset:
        digest=hashlib.sha256(path.read_bytes()).hexdigest();existing=assets.get(path.name)
        if existing:
            if existing.get('digest')!='sha256:'+digest or existing.get('size')!=path.stat().st_size or existing.get('state')!='uploaded':raise RuntimeError('Existing asset differs or is incomplete: '+path.name)
            print('Verified existing asset:',path.name,flush=True);continue
        url=release['upload_url'].split('{',1)[0]+'?'+urllib.parse.urlencode({'name':path.name})
        mime='application/vnd.android.package-archive' if path.suffix=='.apk' else 'application/octet-stream'
        with path.open('rb') as stream:asset=request(url,'POST',stream,mime,path.stat().st_size)
        if asset.get('size')!=path.stat().st_size or asset.get('digest')!='sha256:'+digest:raise RuntimeError('Uploaded asset verification failed: '+path.name)
        print('Uploaded and verified:',path.name,flush=True)
    release=request(base+'/releases/'+str(release['id']),'PATCH',{'name':args.title,'body':args.notes_file.read_text(),'draft':False,'prerelease':True})
    summary=save_summary(release)
    print(json.dumps(summary,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
