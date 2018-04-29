mainWidth=100;
mainHeight=100;
testWidth=56;
$fn=100;
prismDepth=3;
prismWidth=11;
prismRad=47;
numCircle=11;
numHigh=20;
zTrans=9;
module prismCut(radius,degree,tilt){

rotate([0,0,degree])
rotate([tilt,0,0])
translate([prismDepth+radius,0,0])
rotate([0,-90,0])
resize([prismWidth,prismWidth,prismDepth])
polyhedron(
  points=[ [10,10,0],[10,-10,0],[-10,-10,0],[-10,10,0], // the four points at base
           [0,0,10]  ],                                 // the apex point 
  faces=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],              // each triangle side
              [1,0,3],[2,1,3] ]                         // two triangles for square base
 );
}

difference(){
cylinder(h=100,r=50);
    union(){
for(b=[1:1:numHigh])
translate([0,0,(b-1)*zTrans])
rotate([0,0,(b%2)*360/numCircle/4])
union(){
rotate([0,0,360/numCircle/2])
for(a=[1:1:numCircle])
prismCut(prismRad,(a-1)/numCircle*360,45);
for(a=[1:1:numCircle])
prismCut(prismRad,(a-1)/numCircle*360,45);
}

}
}
