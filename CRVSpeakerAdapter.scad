partDepth=18.3;
holePos=77+4;
threeHoleOffset=4.5;
threeHoleDia=3;
mountHoleDia=5.7;
overallDia=25.4*6.5;
innerDia=overallDia-2*12.5;
clipSqWid=115;
clipSqOffset=8.7;
clipSqDepth=partDepth;
clipSqHeight=25;
clipX=92/2;
clipY=-(overallDia/2-clipSqOffset)+15;
clipWidth=7;
clipLength=9;
clipThickness=2;
clipAngle=30;

$fn=200;



difference(){
    union(){
        cylinder(d=overallDia,h=partDepth);
        translate([0,-(overallDia/2-clipSqOffset-clipSqHeight/2),clipSqDepth/2])
        cube([clipSqWid,clipSqHeight,clipSqDepth],center=true);
                    translate([0,holePos,0])
       cylinder(d=mountHoleDia+2,h=partDepth);
             translate([clipX,clipY,partDepth-1.5])
rotate([-30,0,0])
translate([-clipWidth/2,-clipLength,0])
cube([clipWidth,clipLength,clipThickness]);
translate([-clipX,clipY,partDepth-1.5])
rotate([-30,0,0])
translate([-clipWidth/2,-clipLength,0])
cube([clipWidth,clipLength,clipThickness]);
        }
        union(){
    translate([0,0,-0.005])
    cylinder(d=innerDia,h=partDepth+0.01);
            translate([0,holePos,-1/2])
       cylinder(d=mountHoleDia,h=partDepth+1);
            
                           translate([overallDia/2-threeHoleOffset,0,-.5])
       cylinder(d=threeHoleDia,h=partDepth+1);
                            translate([-(overallDia/2-threeHoleOffset),0,-.5])
       cylinder(d=threeHoleDia,h=partDepth+1);
                            translate([0,-(overallDia/2-threeHoleOffset),-.5])
       cylinder(d=threeHoleDia,h=partDepth+1);
        }
}
