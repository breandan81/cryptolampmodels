 box();
module box()
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

translate([-4.5,20,23-8.5])
cube([9,30,6]);

translate([-25,45,14])
rotate([90,0,0])
cylinder(r=10.5/2,h=30);
translate([25,45,14])
rotate([90,0,0])
cylinder(r=10.5/2,h=30);

}

nodemcumounts();

}

module nodemcumounts()
{   
    translate([-15.1384,-3.8862,0])
    {
    difference(){
    union()
    {
    cylinder(h = 17, r1=8,r2=1.5);
    translate([-5,-2.5,0])    
    cube([7,5,23]);
    }    
  cylinder(h=25, r=1.5);
        }}
    translate([15.1384,-3.8862,0])
    {
        difference(){
   union()
            {
            cylinder(h = 17, r1=8,r2=1.5);
    translate([-2,-2.5,0])    
    cube([7,5,23]);
            }
            cylinder(h=25, r=1.5); 
    }
    }
    }
    translate([-15.3416,30.4038,0])
    {
        difference()
        {
        union(){
            cylinder(h = 17, r1=8,r2=1.5);
        translate([-5,-2.5,0])    
        cube([7,5,23]); 
        }
            cylinder(h=25, r=1.5);
        
    }
    }
    translate([15.3416,30.4038,0])
    {
        difference(){
        union()
            {
         translate([-2,-2.5,0])    
        cube([7,5,23]); 
                cylinder(h = 17, r1=8,r2=1.5);
                
            }
            cylinder(h=25, r=1.5);
    }
}