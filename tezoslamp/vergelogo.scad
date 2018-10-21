vergelogohole();


module vergelogohole()
{
difference()
    {
basiclogo();
translate([0,-4,9])
rotate([-90,0,0])
nohole();
}}


module basiclogo()
{
scale([.125,.125,.125])
translate([-245,-177,0])    
{
linear_extrude(height=50)
import("vergeupper.dxf");
difference()
{
linear_extrude(height=150)
import("vergelower.dxf");

translate([0,0,10])
linear_extrude(height=130)
offset(-20)
import("vergelower.dxf");
}
}}

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