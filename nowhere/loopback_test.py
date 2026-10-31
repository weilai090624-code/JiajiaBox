import subprocess,tempfile,json,time,socket,http.server,threading,os
exe='/root/jiajiabox-nowhere/sing-box-loopback'; key='0123456789abcdef0123456789abcdef'
with tempfile.TemporaryDirectory() as d:
 cert=d+'/cert.pem'; priv=d+'/key.pem'
 subprocess.run(['openssl','req','-x509','-newkey','rsa:2048','-nodes','-keyout',priv,'-out',cert,'-days','1','-subj','/CN=localhost'],stdout=subprocess.DEVNULL,stderr=subprocess.DEVNULL,check=True)
 class H(http.server.BaseHTTPRequestHandler):
  def do_GET(self): self.send_response(200);self.end_headers();self.wfile.write(b'nw3-loopback-ok')
  def log_message(self,*args):pass
 server=http.server.HTTPServer(('127.0.0.1',0),H); threading.Thread(target=server.serve_forever,daemon=True).start()
 for transport in ['tcp','udp']:
  port=39880 if transport=='tcp' else 39881
  portal={'log':{'level':'warn'},'inbounds':[{'type':'nowhere','listen':'127.0.0.1','listen_port':port,'password':key,'net':transport,'morph':True,'tls':{'enabled':True,'certificate_path':cert,'key_path':priv}}],'outbounds':[{'type':'direct','tag':'direct'}]}
  client={'log':{'level':'warn'},'inbounds':[{'type':'socks','listen':'127.0.0.1','listen_port':39882}],'outbounds':[{'type':'nowhere','tag':'proxy','server':'127.0.0.1','server_port':port,'password':key,'net':transport,'morph':True,'tls':{'enabled':True,'insecure':True}}], 'route':{'final':'proxy'}}
  ps=[]
  try:
   for label,cfg in [('portal',portal),('client',client)]:
    path=d+'/'+label+'.json';open(path,'w').write(json.dumps(cfg));ps.append(subprocess.Popen([exe,'run','-c',path],stdout=subprocess.DEVNULL,stderr=subprocess.PIPE,text=True))
   time.sleep(3)
   r=subprocess.run(['curl','--noproxy','','-sS','--socks5-hostname','127.0.0.1:39882','--max-time','12',f'http://127.0.0.1:{server.server_port}/'],capture_output=True,text=True)
   print(transport,'PASS' if r.stdout=='nw3-loopback-ok' else 'FAIL '+r.stderr.strip(),flush=True)
  finally:
   for p in ps:
    if p.poll() is None:p.terminate()
   for p in ps:
    try: _,err=p.communicate(timeout=3)
    except subprocess.TimeoutExpired:p.kill();_,err=p.communicate()
    if r.returncode and err: print(err[-1600:],flush=True)
 server.shutdown()
