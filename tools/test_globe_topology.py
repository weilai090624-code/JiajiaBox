#!/usr/bin/env python3
"""Compile and execute the online globe topology tests on Android ART."""
import argparse,subprocess
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('--android-jar',default='/root/codex-apk/sdk36/android.jar')
p.add_argument('--d8',default='/data/data/com.termux/files/usr/share/java/d8.jar')
p.add_argument('--art',default='/data/data/com.termux/files/usr/bin/dalvikvm')
a=p.parse_args()
b=ROOT/'build/online-globe-tests';classes=b/'classes';dex=b/'dex'
classes.mkdir(parents=True,exist_ok=True);dex.mkdir(exist_ok=True)
def run(*args):
 result=subprocess.run(args,capture_output=True,text=True)
 if result.returncode:raise RuntimeError(result.stdout+result.stderr)
 return result.stdout
sources=[ROOT/'addon-src/io/nekohasekai/sagernet/ui'/name for name in ['GlobeCountries.java','GlobeTopology.java']]
run('javac','--release','8','-cp',a.android_jar,'-d',str(classes),*[str(s) for s in sources],str(ROOT/'tests/OnlineGlobeTest.java'))
jar=b/'tests.jar';run('jar','cf',str(jar),'-C',str(classes),'.')
run('java','-cp',a.d8,'com.android.tools.r8.D8','--release','--min-api','21','--lib',a.android_jar,'--output',str(dex),str(jar))
result=run('bash',a.art,'-Xverify:all','-cp',str(dex/'classes.dex'),'OnlineGlobeTest')
(b/'validation.txt').write_text(result);print(result,end='')
