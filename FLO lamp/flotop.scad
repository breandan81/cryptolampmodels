flogowithhole();

//h ole();

module flogowithhole()
{
    difference()
    {
    translate([0,12.5,50])
    rotate([90,0,0])
    flogo();
    nohole();
    }
}


module flogo()
{
    difference()
    {
    cylinder(r=40, h=25);
    scale([.6,.6,1])
    translate([-90,-90,1])
    linear_extrude(height=35)
    scale([20,20,20])
    import("FLOGO.dxf");
    }
}
module nohole()
{
difference()
{
union()
    {
standBTC();
    translate([-5.1,-5.1,0])
    cube([10.2,10.2,15]);
    cylinder(r=5.3/2, h=17.5);
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
}
module hole()
{
difference()
{
union()
    {
standBTC();
    translate([-5,-5,0])
    cube([10,10,15]);
  //  cylinder(r=5.3/2, h=20);
    }
    cylinder(r=5.3/2, h=18);
    
    translate([37,37,0])
    cylinder(r=3.3/2, h=9);
    translate([-37,37,0])
    cylinder(r=3.3/2, h=9);
    translate([37,-37,0])
    cylinder(r=3.3/2, h=9);
    translate([-37,-37,0])
    cylinder(r=3.3/2, h=9);
    

}  
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