coin();

module standBTC()
{
translate([-40,-40,0])
cube([80,80,4]);
coin();
}
module coin()
{
difference()
    {
union()
        {
rotate([0,0,45])
translate([0,0,43])
    {

logo();
translate([0,5,0])
rotate([90,0,0])
cylinder(h=10, r=50);
}
}
translate([-25,-25,-50])
cube([50,50,50]);
}
}
module logo()
{
import("logo7.stl");
}