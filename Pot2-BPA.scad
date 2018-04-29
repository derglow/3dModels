mainWidth=112.5;
mainHeight=129.5;
cubeDim=20;
numAround=11;
zTrans=28;

module specSphere(cubeSize,patternRad,degree){
    rotate([0,0,degree])
translate([patternRad,0])
hull(){

translate([3,0,0])
resize([8,0,0])
rotate([45,45,0])
cube(size=cubeSize,center=true);

translate([-5,0,0])
resize([8,0,0])
rotate([45,45,0])
cube(size=cubeSize,center=true);
}
}
difference(){
union(){
cylinder(h=mainHeight, r1=mainWidth/2, r2=mainWidth/2, center=false);

for(a=[0:360/numAround:360])
    specSphere(cubeDim,mainWidth/2,a);

translate([0,0,zTrans])
for(a=[360/numAround/2:360/numAround:360+360/numAround/2])
    specSphere(cubeDim,mainWidth/2,a);

translate([0,0,zTrans*2])
for(a=[0:360/numAround:360])
    specSphere(cubeDim,mainWidth/2,a);

translate([0,0,zTrans*3])
for(a=[360/numAround/2:360/numAround:360+360/numAround/2])
    specSphere(cubeDim,mainWidth/2,a);

translate([0,0,zTrans*4])
for(a=[0:360/numAround:360])
    specSphere(cubeDim,mainWidth/2,a);

translate([0,0,zTrans*5])
for(a=[360/numAround/2:360/numAround:360+360/numAround/2])
    specSphere(cubeDim,mainWidth/2,a);

}

union(){
translate([0,0,-50])
cylinder(h=50,r1=100,r2=100,center=false);

translate([0,0,mainHeight])
cylinder(h=50,r1=100,r2=100,center=false);
}
}