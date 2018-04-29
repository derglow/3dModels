partThickness=2;
cupDia=125;
funnelHeight=75;
$fn=100;

difference(){
union(){
cylinder(h=partThickness, d1=cupDia+12.5,d2=cupDia+12.5);

translate([0,0,-12.5])
difference(){
cylinder(h=funnelHeight, d1=0,d2=cupDia+12.5);
    translate([0,0,partThickness])
    cylinder(h=funnelHeight, d1=0,d2=cupDia+12.5);
}
}
translate([0,0,-25])
cylinder(h=150, d1=25,d2=25);
}