totalDesiredHeight=100;
totalDesiredDia=100;
sqAmp=2.5;
waves=10;
$fn=100;
twistFactor=360/4;

list=[ for (iterator = [0:1:360])  let ( r=sqAmp*(((iterator%(360/waves)/(360/waves))<(1/2))?1:-1)+(totalDesiredDia/2-sqAmp), a = cos(iterator), b = sin(iterator)) [r* a,r * b] ];
union(){
linear_extrude(height = totalDesiredHeight, convexity = 10, twist = twistFactor)
polygon(points=list);
linear_extrude(height = totalDesiredHeight, convexity = 10, twist = -twistFactor)
polygon(points=list);
}