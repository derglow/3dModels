overallWidth=125;
cutBoxWidth=100;
partThickness=1.5;
razorWidth=1;
triangleMargin=5;

difference(){
cube([overallWidth,overallWidth,partThickness]);
union(){
rotate([0,0,45])
translate([(sqrt(2)*overallWidth-sqrt(2)*cutBoxWidth)/2,-razorWidth/2,-0.5])
cube([sqrt(2)*cutBoxWidth,razorWidth,4]);

translate([0,overallWidth,0])
rotate([0,0,-45])
translate([(sqrt(2)*overallWidth-sqrt(2)*cutBoxWidth)/2,-razorWidth/2,-0.5])
cube([sqrt(2)*cutBoxWidth,razorWidth,partThickness+1]);
 
color("blue")
translate([overallWidth/2,overallWidth/2,-0.5])
linear_extrude(height=partThickness+1)
for(a=[0:3])
rotate([0,0,90*a])
translate([0,-sqrt(2)*triangleMargin,0])
translate([-(cutBoxWidth-2*triangleMargin)/2,-(cutBoxWidth-2*triangleMargin)/2,0])
polygon(points=[[0,0],[cutBoxWidth-2*triangleMargin,0],[(cutBoxWidth-2*triangleMargin)/2,(cutBoxWidth-2*triangleMargin)/2]]); 


translate([overallWidth/2,5,-0.5])
linear_extrude(height=partThickness+1)
text("Film Curl Template v1",halign="center",valign="center",size=6);

}
}
