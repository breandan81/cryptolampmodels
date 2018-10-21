difference()
{
union()
    {
standBTC();
    cylinder(h=10, r1=6, r2 =4);
    cylinder(r=5.3/2, h=18);
    }
  //  cylinder(r=5.3/2, h=18);
    
    translate([37,37,0])
    cylinder(r=3.3/2, h=9);
    translate([-37,37,0])
    cylinder(r=3.3/2, h=9);
    translate([37,-37,0])
    cylinder(r=3.3/2, h=9);
    translate([-37,-37,0])
    cylinder(r=3.3/2, h=9);
    

}  

module standBTC()
{
translate([-40,-40,0])
cube([80,80,4]);
//coin();
}
module coin()
{


rotate([0,0,45])
translate([0,0,43])
    {
union()
        {
logo();
translate([0,5,0])
rotate([90,0,0])
cylinder(h=10, r=50);
            
}
}
}




module oldlogo()
{
import("logo3.stl");
}
module logo()
{
    import("btclogo2.stl");
    }