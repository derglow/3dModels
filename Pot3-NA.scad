mainWidth=112.5;
mainHeight=129.5;

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

for(a=[0:360/22:360])
    specSphere(10,mainWidth/2,a);

translate([0,0,7])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,14])
for(a=[0:360/22:360])
    specSphere(10,mainWidth/2,a);

translate([0,0,21])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,28])
for(a=[0:360/22:360])
    specSphere(10,mainWidth/2,a);

translate([0,0,35])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,42])
for(a=[0:360/22:360])
    specSphere(10,mainWidth/2,a);

translate([0,0,49])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,56])
for(a=[0:360/22:360])
    specSphere(10,mainWidth/2,a);

translate([0,0,63])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

rotate([0,0,360/22/2])
translate([0,0,70])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,77])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

rotate([0,0,360/22/2])
translate([0,0,84])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,91])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

rotate([0,0,360/22/2])
translate([0,0,98])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,105])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

rotate([0,0,360/22/2])
translate([0,0,112])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

translate([0,0,119])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);

rotate([0,0,360/22/2])
translate([0,0,126])
for(a=[360/22/2:360/22:360+360/22/2])
    specSphere(10,mainWidth/2,a);


}

union(){
translate([0,0,-10])
cylinder(h=20,r1=100,r2=100,center=true);

translate([0,0,137.5])
cylinder(h=20,r1=100,r2=100,center=true);
}
}