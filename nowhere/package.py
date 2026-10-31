from pathlib import Path
from copy import copy
import zipfile, struct, subprocess, hashlib
import os
r=Path(__file__).resolve().parent; base=r/'JiajiaBox-0.0.5-beta-442-file-groups.apk'
def run(*args): return subprocess.run([str(a) for a in args],check=True,stdout=subprocess.PIPE,stderr=subprocess.STDOUT,text=True).stdout
with zipfile.ZipFile(base) as z:
 m=bytearray(z.read('AndroidManifest.xml')); pos=8; ids=[]; changed=0
 while pos<len(m):
  kind,head,size=struct.unpack_from('<HHI',m,pos)
  if kind==0x180: ids=list(struct.unpack_from('<'+'I'*((size-head)//4),m,pos+head))
  if kind==0x102:
   start,stride,count=struct.unpack_from('<HHH',m,pos+24)
   for i in range(count):
    a=pos+16+start+i*stride; name=struct.unpack_from('<I',m,a+4)[0]
    if name<len(ids) and ids[name]==0x0101021b:
     assert struct.unpack_from('<I',m,a+16)[0]==442; struct.pack_into('<I',m,a+16,443); changed+=1
  pos+=size
 assert changed==1
 script=(r/'dex_version.py').read_text().replace('previous in (347,)','previous in (442,)').replace('(418).to_bytes','(443).to_bytes'); scope={}; exec(script,scope)
 patch={'AndroidManifest.xml':bytes(m),'classes10.dex':bytes(scope['patch_buildconfig'](z.read('classes10.dex'))),'classes16.dex':(r/'patched16.dex').read_bytes(),'lib/arm64-v8a/libgojni.so':(r/'libgojni.so').read_bytes()}
 with zipfile.ZipFile(r/'unsigned.apk','w') as out:
  for info in z.infolist():
   n=info.filename
   if n.startswith('META-INF/') and (n=='META-INF/MANIFEST.MF' or n.endswith(('.RSA','.DSA','.EC','.SF'))): continue
   out.writestr(copy(info),patch.get(n,z.read(n)))
  assert 'classes43.dex' not in z.namelist(); out.writestr('classes43.dex',(r/'helper-dex/classes.dex').read_bytes())
zipalign=os.environ.get('ZIPALIGN','zipalign'); run(zipalign,'-p','-f','4',r/'unsigned.apk',r/'aligned.apk')
apk=r/'JiajiaBox-0.0.5-beta-443-nowhere-experimental.apk'
signer=os.environ.get('APKSIGNER','apksigner'); keystore=os.environ.get('JIAJIA_KEYSTORE',str(r/'signing/debug.keystore'))
run('bash',signer,'sign','--ks',keystore,'--ks-key-alias',os.environ.get('JIAJIA_KEY_ALIAS','androiddebugkey'),'--ks-pass',os.environ.get('JIAJIA_KEYSTORE_PASS','pass:android'),'--key-pass',os.environ.get('JIAJIA_KEY_PASS','pass:android'),'--out',apk,r/'aligned.apk')
a=run('bash',signer,'verify','--verbose','--print-certs',apk); b=run('bash',signer,'verify','--print-certs',base)
assert [x for x in a.splitlines() if 'certificate SHA-256 digest:' in x]==[x for x in b.splitlines() if 'certificate SHA-256 digest:' in x]
run(zipalign,'-c','4',apk)
aapt=os.environ.get('AAPT','aapt'); assert "versionCode='443' versionName='0.0.5 beta'" in run(aapt,'dump','badging',apk)
with zipfile.ZipFile(base) as a, zipfile.ZipFile(apk) as b:
 assert b.testzip() is None
 names={n for n in a.namelist() if not n.startswith('META-INF/')}; assert {n for n in b.namelist() if not n.startswith('META-INF/')}==names|{'classes43.dex'}
 assert {n for n in names if a.read(n)!=b.read(n)}==set(patch)
print(apk,hashlib.sha256(apk.read_bytes()).hexdigest())
