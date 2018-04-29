overallDia=75;
$fn=100;


rotate([180,0,0])
difference(){
    
cylinder(h=10+1.5,d1=overallDia+1+1.5,d2=overallDia+1+1.5);
    translate([0,0,-0.01])
cylinder(h=10,d1=overallDia+1,d2=overallDia+1);
}