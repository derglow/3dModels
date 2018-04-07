baseDia=85;
upperDia=135;
filterHeight=57;

partThickness=1.2;

gridThickness=2;
gridSep=10;

$fn=100;

union(){
difference(){
    union(){
cylinder(r1=baseDia/2+partThickness,r2=upperDia/2+partThickness,h=filterHeight);
    
cylinder(h=partThickness, d1=125+12.5,d2=125+12.5);
    }
    
    
translate([0,0,-0.005])
cylinder(r1=baseDia/2,r2=upperDia/2,h=filterHeight+0.01);
    
}

intersection(){
    
    translate([0,0,-0.005])
    cylinder(r1=baseDia/2+partThickness,r2=baseDia/2+partThickness,h=partThickness+.01);
    
translate([-14*gridSep/2-gridThickness/2,-14*gridSep/2-gridThickness/2,0])
color("blue")
union(){
for(indexVar=[0:1:13])
    translate([indexVar*gridSep,0,0])
cube([gridThickness,upperDia,partThickness]);

translate([upperDia,0,0])
rotate([0,0,90])
for(indexVar=[0:1:13])
    translate([indexVar*gridSep,0,0])
cube([gridThickness,upperDia,partThickness]);
}
}
}