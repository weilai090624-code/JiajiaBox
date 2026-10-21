/* Copyright (c) 2026 weilai090624-code. MIT license; see LICENSE. */
'use strict';
const fs=require('fs'),vm=require('vm'),assert=require('assert');
const source=fs.readFileSync('assets/globe/index.html','utf8');
function runtime(html=source,width=320,height=240){
  let now=0,id=0;const frames=new Map(),timers=new Map(),events={},documentEvents={},uniforms={};
  let textPaints=0;
  const noop=()=>{},context=new Proxy({measureText:text=>({width:text.length*6}),strokeText(){textPaints++;}}, {get:(target,key)=>key in target?target[key]:noop});
  const gl=new Proxy({getUniformLocation:(_,name)=>name,uniform2f:(name,...args)=>uniforms[name]=args,uniform4f:(name,...args)=>uniforms[name]=args}, {get(target,key){if(key in target)return target[key];if(/^[A-Z0-9_]+$/.test(key))return 1;if(key==='getShaderParameter'||key==='getProgramParameter')return ()=>true;if(key==='getExtension')return ()=>null;if(key==='getAttribLocation')return ()=>0;if(key.startsWith('create'))return ()=>({});return noop;}});
  const canvas={clientWidth:width,clientHeight:height,width:0,height:0,addEventListener:(name,fn)=>events[name]=fn,setPointerCapture:noop,getContext:()=>gl};
  const overlay={width:0,height:0,getContext:()=>context};
  const elements={globe:canvas,labels:overlay,credit:{style:{}},error:{style:{}}};
  const document={hidden:false,getElementById:key=>elements[key],createElement:()=>({getContext:()=>context}),addEventListener:(name,fn)=>documentEvents[name]=fn};
  const window={devicePixelRatio:2,addEventListener:noop};
  class Image {set src(value){this.complete=true;this.naturalWidth=1024;this.naturalHeight=512;this.onload();}}
  class ClockDate extends Date {constructor(...args){super(...(args.length?args:[1792576800000+now]));}static now(){return 1792576800000+now;}}
  const sandbox={window,document,Date:ClockDate,Image,performance:{now:()=>now},ResizeObserver:class{observe(){}},requestAnimationFrame(fn){frames.set(++id,fn);return id;},cancelAnimationFrame:key=>frames.delete(key),setTimeout(fn,delay){timers.set(++id,{fn,at:now+delay});return id;},clearTimeout:key=>timers.delete(key)};
  vm.createContext(sandbox);vm.runInContext(html.match(/<script>([\s\S]*?)<\/script>/)[1],sandbox);
  function time(at){assert(at>=now,'clock must be monotonic');now=at;}
  function frame(at){time(at);for(const [key,timer] of [...timers])if(timer.at<=now){timers.delete(key);timer.fn();}const batch=[...frames.values()];frames.clear();batch.forEach(fn=>fn(now));}
  function pointer(type,pointerId,clientX,clientY){events[type]({type,pointerId,clientX,clientY,preventDefault:noop});}
  function hidden(value){document.hidden=value;documentEvents.visibilitychange();}
  return {globe:window.Globe,events,frame,time,pointer,hidden,frames,timers,uniforms,canvas,textPaints:()=>textPaints};
}
function close(actual,expected,message,tolerance=1e-9){assert(Math.abs(actual-expected)<tolerance,`${message}: ${actual} != ${expected}`);}
function easeReference(input){let lo=0,hi=1;for(let i=0;i<60;i++){const t=(lo+hi)/2,r=1-t,x=3*r*r*t*.16+3*r*t*t*.3+t*t*t;if(x<input)lo=t;else hi=t;}return 1-(1-(lo+hi)/2)**3;}
const nodes=[{id:'self',role:'origin',code:'CN',lon:116.4,lat:39.9},{id:'exit:hk',role:'exit',code:'HK',lon:114.1,lat:22.3},{id:'dest:TW',role:'destination',code:'TW',lon:121,lat:23.5}];
const links=[{from:'self',to:'exit:hk',kind:'uplink',count:2},{from:'exit:hk',to:'dest:TW',kind:'request',count:2}];
const countries=[{code:'HK',lon:114.1,lat:22.3,count:1},{code:'TW',lon:121,lat:23.5,count:2}];
function start(r,autoRotate=false){r.globe.setState({paused:false,autoRotate,nodes,links,countries});r.frame(0);}

{
 const r=runtime();start(r,true);const before=r.globe.inspect();
 for(let i=1;i<=120;i++)r.frame(i*1000/120);
 const after=r.globe.inspect();assert.strictEqual(after.draws-before.draws,120,'every delivered vsync can draw, including 120 Hz');
 assert(after.yaw>before.yaw,'automatic rotation advances');after.earthAxis.forEach((v,i)=>close(v,before.earthAxis[i],'poles stay fixed during axial rotation'));
 close(Math.hypot(...after.earthAxis),1,'axis is a unit vector');close(Math.atan2(after.earthAxis[0],after.earthAxis[1]),23.43928*Math.PI/180,'inclined north-south axis');
 const m=after.rotation;for(let row=0;row<3;row++){close(Math.hypot(...m.slice(row*3,row*3+3)),1,'rotation row norm');for(let other=row+1;other<3;other++)close(m[row*3]*m[other*3]+m[row*3+1]*m[other*3+1]+m[row*3+2]*m[other*3+2],0,'rotation rows orthogonal');}
 // Independently undo the GLSL roll, pitch and yaw, then compare against CPU's world-to-view matrix.
 const world=[.3,.4,Math.sqrt(.75)],view=[0,1,2].map(i=>m[i*3]*world[0]+m[i*3+1]*world[1]+m[i*3+2]*world[2]);
 const [cy,sy,cp,sp]=r.uniforms.u_rotation,[cr,sr]=r.uniforms.u_roll;
 const x=cr*view[0]+sr*view[1],y=-sr*view[0]+cr*view[1],z=view[2],py=cp*y+sp*z,pz=-sp*y+cp*z;
 [cy*x-sy*pz,py,sy*x+cy*pz].forEach((v,i)=>close(v,world[i],'shader inverse matches overlay rotation'));
 r.globe.setState({paused:true});assert.strictEqual(r.frames.size,0);assert.strictEqual(r.timers.size,0);
 console.log('PASS: no 30-fps gate; 120/120 delivered refresh callbacks draw; fixed inclined axis and independent shader/overlay transform parity');
}
{
 const r=runtime();start(r);const before=r.globe.inspect();r.pointer('pointerdown',1,100,100);r.time(5);r.pointer('pointermove',1,120,106);r.frame(10);
 const after=r.globe.inspect(),tilt=before.axisTilt,angle=(20*Math.cos(tilt)-6*Math.sin(tilt))*2*Math.PI/480;
 close(after.yaw,before.yaw+angle,'finger follows projected equator immediately');close(after.pitch,before.pitch+(20*Math.sin(tilt)+6*Math.cos(tilt))*2*Math.PI/480,'manual drag changes viewing latitude');assert(after.earthAxis.some((v,i)=>Math.abs(v-before.earthAxis[i])>1e-5),'manual drag can change axis view');
 r.pointer('pointercancel',1,120,106);r.frame(20);assert.strictEqual(r.frames.size,0,'cancel does not fling or loop');
 r.pointer('pointerdown',1,100,100);r.pointer('pointerdown',2,200,100);r.time(25);r.pointer('pointermove',2,220,100);r.frame(30);
 close(r.globe.inspect().zoom,1.2,'first pinch move applies directly without a dead movement or tween');
 r.pointer('pointerup',2,220,100);r.pointer('pointerup',1,100,100);r.frame(40);close(r.globe.inspect().zoom,1.2,'pinch cannot become a reset tap');assert.strictEqual(r.frames.size,0);
 r.globe.setState({autoRotate:true});const manual=r.globe.inspect();for(let i=1;i<=120;i++)r.frame(2300+i*1000/120);const spun=r.globe.inspect();assert(spun.yaw>manual.yaw);close(spun.pitch,manual.pitch,'auto rotation preserves manually chosen latitude');spun.earthAxis.forEach((v,i)=>close(v,manual.earthAxis[i],'only auto spin keeps viewed poles fixed'));
 console.log('PASS: free manual drag, axial automatic spin after manual movement, cancellation, immediate pinch and multi-touch tap isolation');
}
{
 const r=runtime();start(r);const before=r.globe.inspect();r.pointer('pointerdown',1,100,100);r.time(20);r.pointer('pointermove',1,100,140);r.frame(25);const dragged=r.globe.inspect();assert(Math.abs(dragged.pitch-before.pitch)>.1,'vertical dragging freely changes latitude');r.time(30);r.pointer('pointerup',1,100,140);r.frame(530);assert(dragged.pitch<r.globe.inspect().pitch,'release keeps vertical inertia');
 r.pointer('pointerdown',1,100,100);r.time(540);r.pointer('pointermove',1,100,10000);r.frame(550);assert(r.globe.inspect().pitch<=1.3,'manual latitude remains inside camera bounds');r.pointer('pointercancel',1,100,10000);r.frame(560);
 console.log('PASS: vertical-only manual drag, vertical release inertia and camera latitude bounds');
}
{
 const r=runtime();start(r);const initial=r.globe.inspect();r.pointer('pointerdown',1,100,100);r.pointer('pointerdown',2,200,100);
 r.time(10);r.pointer('pointermove',2,220,140);r.frame(20);const moved=r.globe.inspect();
 close(moved.zoom,Math.hypot(120,40)/100,'pinch and twist apply on the first move');close(moved.roll,initial.roll-Math.atan2(40,120),'finger angle rotates the globe around the viewing axis');
 const scale=2*Math.PI/480;close(moved.yaw,initial.yaw+(10*Math.cos(initial.roll)-20*Math.sin(initial.roll))*scale,'two-finger midpoint rotates longitude');close(moved.pitch,initial.pitch+(10*Math.sin(initial.roll)+20*Math.cos(initial.roll))*scale,'two-finger midpoint rotates latitude');
 const [cr,sr]=r.uniforms.u_roll;close(cr,Math.cos(moved.roll),'GPU uses manual roll cosine');close(sr,Math.sin(moved.roll),'GPU uses manual roll sine');
 const m=moved.rotation,world=[.3,.4,Math.sqrt(.75)],view=[0,1,2].map(i=>m[i*3]*world[0]+m[i*3+1]*world[1]+m[i*3+2]*world[2]);
 const [cy,sy,cp,sp]=r.uniforms.u_rotation,x=cr*view[0]+sr*view[1],y=-sr*view[0]+cr*view[1],z=view[2],py=cp*y+sp*z,pz=-sp*y+cp*z;
 [cy*x-sy*pz,py,sy*x+cy*pz].forEach((v,i)=>close(v,world[i],'twisted shader and route overlay remain aligned'));
 r.pointer('pointerup',2,220,140);r.frame(30);const one=r.globe.inspect();r.time(35);r.pointer('pointermove',1,105,110);r.frame(40);const continued=r.globe.inspect();close(continued.zoom,one.zoom,'two-to-one transition keeps scale');assert(continued.pitch!==one.pitch,'remaining finger immediately rotates');r.pointer('pointerup',1,105,110);r.frame(550);
 r.globe.setState({autoRotate:true});const beforeSpin=r.globe.inspect();for(let i=1;i<=60;i++)r.frame(2400+i*1000/60);const spun=r.globe.inspect();assert(spun.yaw>beforeSpin.yaw);close(spun.roll,beforeSpin.roll,'auto spin preserves user twist');spun.earthAxis.forEach((v,i)=>close(v,beforeSpin.earthAxis[i],'auto spin remains axial after twist'));
 r.globe.reset();r.frame(3820);close(r.globe.inspect().roll,initial.roll,'reset restores initial tilted orientation');close(r.globe.inspect().zoom,1,'reset restores zoom');
 console.log('PASS: simultaneous two-finger scaling, twist and free rotation; shader/overlay parity, finger handoff, axial spin and reset');
}
{
 const r=runtime();start(r);r.pointer('pointerdown',1,200,100);r.pointer('pointerdown',2,100,101);const before=r.globe.inspect();r.time(5);r.pointer('pointermove',2,100,99);r.frame(10);assert(Math.abs(r.globe.inspect().roll-before.roll)<.03,'angle wrap takes the short rotation');
 r.pointer('pointerdown',3,150,160);const beforeThird=r.globe.inspect();r.time(15);r.pointer('pointermove',3,170,180);r.frame(20);close(r.globe.inspect().roll,beforeThird.roll,'third finger does not disturb the active pair');r.pointer('pointerup',1,200,100);const handoff=r.globe.inspect();r.time(25);r.pointer('pointermove',2,100,99);r.frame(30);close(r.globe.inspect().roll,handoff.roll,'pair replacement rebases twist');close(r.globe.inspect().zoom,handoff.zoom,'pair replacement rebases scale');
 r.pointer('pointercancel',2,100,99);r.pointer('pointercancel',3,170,180);r.frame(40);assert.strictEqual(r.frames.size,0);
 console.log('PASS: twist angle wrap, third finger isolation, active pair replacement and cancellation');
}
{
 const r=runtime();start(r,true);r.pointer('pointerdown',1,100,100);r.pointer('pointerup',1,100,100);r.frame(20);
 assert.strictEqual(r.frames.size,0,'stationary hold does not poll requestAnimationFrame');r.frame(2210);assert(r.frames.size>0,'spin resumes after hold timer');
 r.hidden(true);assert.strictEqual(r.frames.size,0);assert.strictEqual(r.timers.size,0);r.hidden(false);r.frame(2230);assert(r.frames.size>0,'visible unpaused host resumes');
 r.globe.setState({paused:true});r.hidden(true);r.hidden(false);assert.strictEqual(r.frames.size,0,'visibility cannot resume a host-paused globe');
 console.log('PASS: spin hold sleeps without frame polling; pause/visibility stop all clocks and respect native host state');
}
{
 const r=runtime(source,150,240);start(r);const before=r.globe.inspect();assert.strictEqual(before.viewport.span,150);
 const [px,py]=r.uniforms.u_projection;close(px*150,py*240,'projection keeps sphere round');
 const globeRadius=3*150/(2*Math.sqrt(11.25));assert(globeRadius<75,'default sphere fits the narrow touch viewport');
 assert(r.uniforms.u_extent[0]<1&&r.uniforms.u_extent[1]<1,'transparent margins do not execute the Earth fragment shader');
 const built=before.routeBuilds,labels=before.labelSprites;r.globe.setState({nodes:JSON.parse(JSON.stringify(nodes)),links:links.map(edge=>({...edge,count:edge.count+1}))});r.frame(20);
 assert.strictEqual(r.globe.inspect().routeBuilds,built,'count-only snapshots reuse geographic curves');assert.strictEqual(r.globe.inspect().labelSprites,labels,'stable labels reuse cached raster text');
 r.globe.setState({nodes:nodes.map(node=>node.id==='dest:TW'?{...node,lat:node.lat+.1}:node)});r.frame(40);assert.strictEqual(r.globe.inspect().routeBuilds,built+1,'coordinate change rebuilds the affected arc');
 for(const landing of r.globe.inspect().landings){close(Math.hypot(...landing.start),1,'arc starts on surface');close(Math.hypot(...landing.end),1,'arc ends on surface');assert(landing.liftStart>1&&landing.liftEnd>1);}
 r.globe.setState({autoRotate:true});for(let i=1;i<=120;i++)r.frame(40+i*1000/120);assert.strictEqual(r.globe.inspect().routeBuilds,built+1,'rotation does not rebuild route geometry');
 console.log('PASS: full sphere in narrow viewport, bounded shader quad, geometry/text caches, geographic invalidation and surface landings');
}
{
 const r=runtime();start(r);let before=r.globe.inspect();r.globe.focusCountry('HK');let target=r.globe.inspect();r.frame(250);
 close(r.globe.inspect().yaw,before.yaw+(target.targetYaw-before.yaw)*easeReference(.5),'camera cubic midpoint',1e-7);r.frame(500);
 const info=r.globe.inspect(),lon=114.1*Math.PI/180,lat=22.3*Math.PI/180,world=[Math.cos(lat)*Math.sin(lon),Math.sin(lat),Math.cos(lat)*Math.cos(lon)];
 [0,1].forEach(row=>close(info.rotation[row*3]*world[0]+info.rotation[row*3+1]*world[1]+info.rotation[row*3+2]*world[2],0,'focused country is centered despite axial tilt',1e-7));
 const sun=JSON.stringify(info.sun.vector);r.events.wheel({deltaY:-400,preventDefault(){}});target=r.globe.inspect();r.frame(580);
 close(r.globe.inspect().zoom,1+(target.targetZoom-1)*easeReference(.5),'wheel cubic midpoint',1e-7);r.frame(660);close(r.globe.inspect().zoom,target.targetZoom,'wheel endpoint');
 assert.strictEqual(JSON.stringify(r.globe.inspect().sun.vector),sun,'rotating/focusing does not move the Earth-fixed day/night vector');
 r.events.webglcontextlost({preventDefault(){}});assert(r.globe.inspect().lost);assert.strictEqual(r.frames.size,0);assert.strictEqual(r.timers.size,0);
 r.events.webglcontextrestored();r.frame(680);assert(r.globe.inspect().ready&&!r.globe.inspect().failed&&!r.globe.inspect().lost);assert.strictEqual(r.globe.inspect().curves,2);
 r.frame(16000);assert(r.globe.inspect().sun.timestamp>info.sun.timestamp,'solar clock continues after GPU restore');
 console.log('PASS: country focus, zoom easing, Earth-fixed illumination, WebGL context recovery and real-time solar updates');
}
if(process.argv[2]){
 const baseline=fs.readFileSync(process.argv[2],'utf8'),many=nodes.slice(),edges=links.slice();
 for(let i=0;i<80;i++){many.push({id:'load:'+i,role:'destination',code:'US',lon:(i*137.5)%360-180,lat:Math.sin(i)*65});edges.push({from:'exit:hk',to:'load:'+i,kind:'request',count:1});}
 function benchmark(html,step){const r=runtime(html);r.globe.setState({paused:false,autoRotate:true,nodes:many,links:edges,countries});r.frame(0);for(let i=1;i<=20;i++)r.frame(i*step);const times=[];for(let run=0;run<3;run++){const t=process.hrtime.bigint();for(let i=1;i<=100;i++)r.frame((20+run*100+i)*step);times.push(Number(process.hrtime.bigint()-t)/1e6);}times.sort((a,b)=>a-b);return times[1];}
 console.log(JSON.stringify({scope:'mock-canvas JS CPU, 100 rendered frames with 82 routes; not real GPU/device FPS',baseline_ms:benchmark(baseline,baseline.includes("now-lastFrame<32")?34:17),optimized_ms:benchmark(source,17)}));
}
