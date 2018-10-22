//hole();
chestahedron();

module chestahedron()
{
    difference()
    {
    union()
    {
    translate([0,8,48])
    rotate([0,0,30])
    scale([.8,.8,.8])
    import("chestahedron.stl");
    
    standBTC();
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
module dogelogo()
{
    difference()
    {
    translate([0,8,53])
    rotate([90,0,0])
    {
    cylinder(r=45, h =9);
    translate([0,0,15])
    scale([.05,.05,.07])
    import("dogecoin.stl");
    }
    
    nohole();
}
}
module vergeBox()
{
translate([-36,-40,5])
rotate([90,0,0])
scale([1.5,1.5,1.5])
importVergeText();
box();
}

module vergeText(h, ang)
{
    
  d = h*tan(ang);
  minkowski(){
    linear_extrude(height=h*0.0001)
        import("vergetext.dxf");
    
    linear_extrude(height=h,scale=h*0.0001)
      circle(d);
    }
}
module importVergeText()
{
    import("vergetext.stl");
    }
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
scale([.14,.14,.14])
translate([-245,-150,0])    
{
linear_extrude(height=50)
import("vergeupper.dxf");
    
linear_extrude(height=150)
{ 
    intersection(){
import("vergelower.dxf");    
import("vergeupper.dxf");
}   
}
difference()
{
linear_extrude(height=150)
import("vergelower.dxf");

translate([0,0,20])
linear_extrude(height=110)
offset(-20)
import("vergelower.dxf");
}
}
translate([-13/2,0,3])
difference()
{
cube([13,20,13]);
translate([2.5,0,2.5])
cube([8,20,8]); 
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

module chamfer_text(text, font, h, ang) {
  d = h*tan(ang);
  minkowski(){
    linear_extrude(height=h*0.0001)
      offset(-d)
        text(text, font=font);
    
    linear_extrude(height=h,scale=h*0.0001)
      circle(d);
  }
}

module box()
{
difference()
{
union()
{    
difference()
{
union()    
{
difference()
{
translate([-40,-40,0])
cube([80,80,30]);
translate([-38,-38,2])
cube([76,76,30]);    
}

 translate([37,37,0])
 cylinder(r=6/2, h=30);
 translate([-37,37,0])
 cylinder(r=6/2, h=30);
 translate([37,-37,0])
 cylinder(r=6/2, h=30);
 translate([-37,-37,0])
 cylinder(r=6/2, h=30);
}
 translate([37,37,0])
 cylinder(r=3/2, h=30);
 translate([-37,37,0])
 cylinder(r=3/2, h=30);
 translate([37,-37,0])
 cylinder(r=3/2, h=30);
 translate([-37,-37,0])
 cylinder(r=3/2, h=30);



translate([-25,45,14])
rotate([90,0,0])
cylinder(r=10.5/2,h=30);
translate([25,45,14])
rotate([90,0,0])
cylinder(r=10.5/2,h=30);

}
translate([0,14,1])
nodemcumounts();
}
translate([-4.5,30,20])
cube([9,30,6]);
}
}

module nodemcumounts()
{
    translate([0,0,10])
    difference()
    {
    cube([27,48.5,20], center=true);
    cube([27,39,20], center=true);
        
    translate([20.7/2,43.6/2,0])
    cylinder(r=1.5, h=30);
    translate([20.7/2,-43.6/2,0])
    cylinder(r=1.5, h=30);
    translate([-20.7/2,-43.6/2,0])
    cylinder(r=1.5, h=30);
    translate([-20.7/2,43.6/2,0])
    cylinder(r=1.5, h=30);
    }
    
    }
