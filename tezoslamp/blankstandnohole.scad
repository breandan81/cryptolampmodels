tezoslogowithhole();
nohole();
//hole();

module tezoslogowithhole()
{
    difference()
    {
    translate([0,12.5,53])
    rotate([90,0,0])
    tezoslogo();
    nohole();
    }
}

module tezoslogo()
{
    difference()
    {
    linear_extrude(height=25)
    scale([.2,.2,.2])
    translate([-400,-1900,0])
    import("tezos.dxf");
    
    translate([0,0,2])
    linear_extrude(height=21)
    offset(r=-2.5)
    scale([.2,.2,.2])
    translate([-400,-1900,0])
    import("tezos.dxf");
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
    cube([10.1,10.1,16]);
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