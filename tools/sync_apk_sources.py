#!/usr/bin/env python3
"""Synchronize decoded smali source and runtime libraries with a reviewed APK."""
import argparse,concurrent.futures,shutil,subprocess,zipfile
from pathlib import Path

def main():
 p=argparse.ArgumentParser(description=__doc__);p.add_argument('apk',type=Path);p.add_argument('--root',type=Path,default=Path(__file__).resolve().parents[1]);args=p.parse_args()
 work=args.root/'build/source-snapshot';work.mkdir(parents=True,exist_ok=True)
 with zipfile.ZipFile(args.apk) as apk:
  names=[name for name in apk.namelist() if name.startswith('classes') and name.endswith('.dex')]
  for name in names:(work/name).write_bytes(apk.read(name))
  for name in apk.namelist():
   if name.startswith('lib/') and name.endswith('.so'):
    out=args.root/name;out.parent.mkdir(parents=True,exist_ok=True);out.write_bytes(apk.read(name))
 def disassemble(name):
  target=work/Path(name).stem
  if target.exists():shutil.rmtree(target)
  r=subprocess.run(['baksmali','disassemble',str(work/name),'-o',str(target)],capture_output=True,text=True)
  if r.returncode:raise RuntimeError(r.stdout+r.stderr)
  return name,target
 count=0
 with concurrent.futures.ThreadPoolExecutor(max_workers=2) as executor:
  for name,source in executor.map(disassemble,names):
   folder='smali' if name=='classes.dex' else 'smali_'+Path(name).stem;target=args.root/folder
   expected={f.relative_to(source) for f in source.rglob('*.smali')}
   for old in target.rglob('*.smali'):
    if old.relative_to(target) not in expected:old.unlink()
   shutil.copytree(source,target,dirs_exist_ok=True);count+=len(expected)
 print(f'Synchronized {count} assembly source files from {len(names)} DEX files; restored runtime libraries (Git ignored).')
if __name__=='__main__':main()
