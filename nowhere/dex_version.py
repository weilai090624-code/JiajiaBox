import hashlib,struct,zlib
def uleb(data,pos):
 value=0;shift=0
 while True:
  v=data[pos];pos+=1;value|=(v&127)<<shift
  if v<128:return value,pos
  shift+=7

def patch_buildconfig(data):
 d=bytearray(data)
 def uint(p):return struct.unpack_from('<I',d,p)[0]
 def ushort(p):return struct.unpack_from('<H',d,p)[0]
 strings=[]
 for i in range(uint(56)):
  off=uint(uint(60)+i*4);_,off=uleb(d,off);end=d.index(0,off);strings.append(bytes(d[off:end]).decode('utf-8','surrogateescape'))
 types=[strings[uint(uint(68)+i*4)] for i in range(uint(64))]
 fields=[(types[ushort(uint(84)+i*8)],strings[uint(uint(84)+i*8+4)]) for i in range(uint(80))]
 count=0
 for i in range(uint(96)):
  off=uint(100)+i*32
  if types[uint(off)]!='Lio/nekohasekai/sagernet/BuildConfig;':continue
  class_data=uint(off+24);values=uint(off+28)
  sizes=[]
  for _ in range(4):v,class_data=uleb(d,class_data);sizes.append(v)
  static=[];index=0
  for _ in range(sizes[0]):delta,class_data=uleb(d,class_data);_,class_data=uleb(d,class_data);index+=delta;static.append(index)
  n,pos=uleb(d,values)
  for field_idx in static[:n]:
   tag=d[pos];pos+=1;typ=tag&31;size=(tag>>5)+1
   if fields[field_idx][1]=='VERSION_CODE':
    assert typ==4 and size>=2,(typ,size)
    previous=int.from_bytes(d[pos:pos+size],'little',signed=True)
    assert previous in (347,),previous
    d[pos:pos+size]=(418).to_bytes(size,'little',signed=True);count+=1
   assert typ not in (0x1c,0x1d),'unexpected composite in BuildConfig'
   if typ not in (0x1e,0x1f):pos+=size
 assert count==1,count
 d[12:32]=hashlib.sha1(d[32:]).digest();struct.pack_into('<I',d,8,zlib.adler32(d[12:])&0xffffffff)
 assert struct.unpack_from('<I',d,8)[0] == zlib.adler32(d[12:]) & 0xffffffff
 assert d[12:32] == hashlib.sha1(d[32:]).digest()
 return d
