import json,urllib.parse,tempfile,os,subprocess,time
p='/root/.codex/sessions/2026/10/30/rollout-2026-10-30T08-58-52-01a18c08-8c07-7771-a882-605dc89a132a.jsonl'
links=[]
for line in open(p):
 v=json.loads(line).get('payload',{})
 if v.get('role')=='user':
  for part in v.get('content',[]):
   s=part.get('text',''); i=s.find('nowhere://')
   if i>=0: links.append(s[i:].strip())
for link in links[-2:]:
 u=urllib.parse.urlsplit(link); q=urllib.parse.parse_qs(u.query); net=q['net'][0]
 config={'log':{'level':'warn'},'inbounds':[{'type':'socks','listen':'127.0.0.1','listen_port':39877}],'outbounds':[{'type':'nowhere','tag':'proxy','server':u.hostname,'server_port':u.port,'password':u.username,'net':net,'morph':True,'tls':{'enabled':True,'server_name':u.hostname}}], 'route':{'final':'proxy'}}
 with tempfile.TemporaryDirectory() as d:
  path=d+'/config.json'; open(path,'w').write(json.dumps(config)); os.chmod(path,0o600)
  proc=subprocess.Popen(['/root/jiajiabox-nowhere/sing-box-test','run','-c',path],stdout=subprocess.DEVNULL,stderr=subprocess.PIPE,text=True)
  try:
   time.sleep(1)
   r=subprocess.run(['curl','--silent','--show-error','--socks5-hostname','127.0.0.1:39877','--connect-timeout','10','--max-time','18','https://www.cloudflare.com/cdn-cgi/trace'],capture_output=True,text=True)
   print(net, 'PASS: HTTPS response via proxy' if r.returncode==0 and 'ip=' in r.stdout else 'FAIL: '+r.stderr.strip()[:200])
  finally:
   proc.terminate()
   try: _,err=proc.communicate(timeout=3)
   except subprocess.TimeoutExpired: proc.kill(); _,err=proc.communicate()
   if r.returncode: print('core:',err[-1000:].replace(u.username,'[redacted]'))
