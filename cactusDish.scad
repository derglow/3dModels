bendRad=10;
mainWidth=100;
mainLength=100;
mainDepth=20;

partThickness=1.2;

$fn=200;

difference(){
difference(){
translate([bendRad,bendRad,0])
linear_extrude(height=mainDepth){
hull(){
    translate([mainWidth-2*bendRad,0,0])
    circle(r=bendRad);
    translate([mainWidth-2*bendRad,mainWidth-2*bendRad,0])
    circle(r=bendRad);
    translate([0,mainWidth-2*bendRad,0])
    circle(r=bendRad);
    circle(r=bendRad);
}
}

color("orange")
translate([bendRad+partThickness,bendRad+partThickness,partThickness+0.01])
linear_extrude(height=mainDepth-partThickness){
hull(){
    translate([mainWidth-2*bendRad-2*partThickness,0,0])
    circle(r=bendRad);
    translate([mainWidth-2*bendRad-2*partThickness,mainWidth-2*bendRad-2*partThickness,0])
    circle(r=bendRad);
    translate([0,mainWidth-2*bendRad-2*partThickness,0])
    circle(r=bendRad);
    circle(r=bendRad);
}
}

}

translate([0,0,0.01])
difference(){
    union(){
color("blue")
translate([-mainLength/2,mainLength/2,partThickness])
rotate([0,90,0])
cylinder(d=4,h=mainLength*2);

color("blue")
translate([mainWidth/2,3*mainWidth/2,partThickness])
rotate([90,0,0])
cylinder(d=4,h=mainLength*2);
    }
translate([-20,-20,0])
cube([200,200,1.2]);
}
}