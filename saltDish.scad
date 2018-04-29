overallDia=75;
$fn=100;


difference(){
cylinder(h=25.4,d1=overallDia,d2=overallDia);
translate([0,0,overallDia/2+2])
sphere(d=overallDia);
}