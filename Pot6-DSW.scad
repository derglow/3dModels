totalDesiredHeight=100;
totalDesiredDia=100;
sinAmp=3;
waves=10;
$fn=100;
twistFactor=360/4;

list=[ for (iterator = [0:1:360])  let ( r=sinAmp*sin(iterator*waves)+(totalDesiredDia/2-sinAmp), a = cos(iterator), b = sin(iterator)) [r* a,r * b] ];
union(){
linear_extrude(height = totalDesiredHeight, convexity = 10, twist = twistFactor)
polygon(points=list);
linear_extrude(height = totalDesiredHeight, convexity = 10, twist = -twistFactor)
polygon(points=list);
}