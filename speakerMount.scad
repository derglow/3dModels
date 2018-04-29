handleDia=7/8*25.4;

speakerWidth=45.3+1;//1 fudge factor
speakerRad=5;
speakerLipHeight=5;

partThickness=3;
thinThickness=1.5;

rubberBandRad=2;
rubberBandLength=12;

mainWidth=speakerWidth+2*thinThickness;

boltDia=3+0.125;
boltHeadDia=5.5+0.125;
nutWidth=5.5+0.25;
nutThick=2.4+0.25;
boltLength=10;

$fn=100;


difference(){
translate([0,0,partThickness+handleDia/2])
union(){
color("purple")

translate([mainWidth-0.01,rubberBandLength/2,speakerLipHeight-rubberBandRad-thinThickness])
rotate([90,0,0])
intersection(){
    
    cube([20,20,20]);
difference(){
cylinder(r=rubberBandRad+thinThickness,h=rubberBandLength);
    translate([0,0,-0.005])
cylinder(r=rubberBandRad,h=rubberBandLength+0.01);
}
}

color("purple")

translate([0.01,rubberBandLength/2,speakerLipHeight-rubberBandRad-thinThickness])
rotate([90,270,0])
intersection(){
    
    cube([20,20,20]);
difference(){
cylinder(r=rubberBandRad+thinThickness,h=rubberBandLength);
    translate([0,0,-0.005])
cylinder(r=rubberBandRad,h=rubberBandLength+0.01);
}
}


color("green")
difference(){
linear_extrude(height=speakerLipHeight)
translate([speakerRad,speakerRad-mainWidth/2,0])
hull(){
    
    translate([mainWidth-2*speakerRad,0,0])
    circle(r=speakerRad);
    translate([0,mainWidth-2*speakerRad,0])
    circle(r=speakerRad);
    translate([mainWidth-2*speakerRad,mainWidth-2*speakerRad,0])
    circle(r=speakerRad);
    circle(r=speakerRad);
    
}

translate([0,0,0.01])
linear_extrude(height=speakerLipHeight)
translate([speakerRad,speakerRad-mainWidth/2,0])
hull(){
    
    translate([mainWidth-2*speakerRad-thinThickness,thinThickness,0])
    circle(r=speakerRad);
    translate([thinThickness,mainWidth-2*speakerRad-thinThickness,0])
    circle(r=speakerRad);
    translate([mainWidth-2*speakerRad-thinThickness,mainWidth-2*speakerRad-thinThickness,0])
    circle(r=speakerRad);
    translate([thinThickness,thinThickness,0])
    circle(r=speakerRad);
    
}
}

translate([0,0,0.01])
difference(){
hull(){
linear_extrude(height=0.01)
translate([speakerRad,speakerRad-mainWidth/2,0])
hull(){
    
    translate([mainWidth-2*speakerRad,0,0])
    circle(r=speakerRad);
    translate([0,mainWidth-2*speakerRad,0])
    circle(r=speakerRad);
    translate([mainWidth-2*speakerRad,mainWidth-2*speakerRad,0])
    circle(r=speakerRad);
    circle(r=speakerRad);
    
}


translate([0,0,-handleDia/2-partThickness])
rotate([0,90,0])

cylinder(r=handleDia/2+partThickness,h=mainWidth);
        
 }
translate([-0.005,0,-handleDia/2-partThickness])
rotate([0,90,0])
 color("blue")
cylinder(r=handleDia/2,h=mainWidth+.01);
    }
}

union(){//this union collects all the bolt cutouts
translate([mainWidth/4,handleDia/2+partThickness,-2])
union(){
cylinder(r=boltDia/2,h=boltLength+5);
translate([0,0,-29.99])
cylinder(r=boltHeadDia/2,h=30);

translate([0,0,boltLength])
union(){
    translate([0,15,0])
cube([nutWidth,1.15*nutWidth/2+30,nutThick],center=true);
rotate([0,0,60])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
rotate([0,0,120])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
}
}

translate([3*mainWidth/4,handleDia/2+partThickness,-2])
union(){
cylinder(r=boltDia/2,h=boltLength+5);
translate([0,0,-29.99])
cylinder(r=boltHeadDia/2,h=30);

translate([0,0,boltLength])
union(){
    translate([0,15,0])
cube([nutWidth,1.15*nutWidth/2+30,nutThick],center=true);
rotate([0,0,60])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
rotate([0,0,120])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
}
}

translate([mainWidth/4,-handleDia/2-partThickness,-2])
rotate([0,0,180])
union(){
cylinder(r=boltDia/2,h=boltLength+5);
translate([0,0,-29.99])
cylinder(r=boltHeadDia/2,h=30);

translate([0,0,boltLength])
union(){
    translate([0,15,0])
cube([nutWidth,1.15*nutWidth/2+30,nutThick],center=true);
rotate([0,0,60])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
rotate([0,0,120])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
}
}

translate([3*mainWidth/4,-handleDia/2-partThickness,-2])
rotate([0,0,180])
union(){
cylinder(r=boltDia/2,h=boltLength+5);
translate([0,0,-29.99])
cylinder(r=boltHeadDia/2,h=30);

translate([0,0,boltLength])
union(){
    translate([0,15,0])
cube([nutWidth,1.15*nutWidth/2+30,nutThick],center=true);
rotate([0,0,60])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
rotate([0,0,120])
cube([nutWidth,1.15*nutWidth/2,nutThick],center=true);
}
}
}
}