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
    args=parser.parse_args();token=os.environ.get('GH_TOKEN','')
    if not token:parser.error('Set GH_TOKEN to a token with repository Contents write permission')
    if any(not path.is_file() for path in args.asset):parser.error('Every asset must be a local file')
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
    try:release=request(base+'/releases/tags/'+urllib.parse.quote(args.tag,safe=''))
    except RuntimeError as error:
        if 'HTTP 404' not in str(error):raise
        release=request(base+'/releases','POST',{'tag_name':args.tag,'target_commitish':args.commit,'name':args.title,'body':args.notes_file.read_text(),'draft':True,'prerelease':True})
    assets={asset['name']:asset for asset in release['assets']}
    for path in args.asset:
        digest=hashlib.sha256(path.read_bytes()).hexdigest();existing=assets.get(path.name)
        if existing:
            if existing.get('digest')!='sha256:'+digest:raise RuntimeError('Existing asset differs: '+path.name)
            print('Verified existing asset:',path.name,flush=True);continue
        url=release['upload_url'].split('{',1)[0]+'?'+urllib.parse.urlencode({'name':path.name})
        mime='application/vnd.android.package-archive' if path.suffix=='.apk' else 'application/octet-stream'
        with path.open('rb') as stream:asset=request(url,'POST',stream,mime,path.stat().st_size)
        if asset.get('size')!=path.stat().st_size or asset.get('digest')!='sha256:'+digest:raise RuntimeError('Uploaded asset verification failed: '+path.name)
        print('Uploaded and verified:',path.name,flush=True)
    release=request(base+'/releases/'+str(release['id']),'PATCH',{'name':args.title,'body':args.notes_file.read_text(),'draft':False,'prerelease':True})
    summary={'repository':args.repo,'tag':args.tag,'commit':args.commit,'release_id':release['id'],'release_url':release['html_url'],'assets':[{'name':a['name'],'id':a['id'],'size':a['size'],'digest':a.get('digest'),'url':a['browser_download_url']} for a in release['assets']]}
    if args.output_json:args.output_json.write_text(json.dumps(summary,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps(summary,ensure_ascii=False,indent=2))
if __name__=='__main__':main()
