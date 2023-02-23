//
// ktHOLDER6
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;

main = 31;
mmrg = 3;
main2 = 31;
mmrg2 = 0;
sub = 12;
smrg = 0;



//A();

difference()
{
    union()
    {
        translate([0, 0, 2]) B();
        translate([0, 0, 0]) C();
    }
    translate([0, 0, 2]) BB();
    scale([0.7, 0.8, 1.1]) C1();
}


module A()
{
difference()
{
    union()
    {
        translate([0, 0, 0]) cylinder(h=2, r=(main+mmrg)/2, center=true, $fn=100);
        translate([0, 0, 2]) cylinder(h=5, r=(main2+mmrg2)/2-0.5, center=true, $fn=100);
    }
    
    translate([0, main/2-14.5, 0])
    {
        translate([0, sub/2, 0]) cylinder(h=20, r=(sub+smrg)/2, center=true, $fn=100);
        rotate([0, 0, 120]) translate([0, sub/2, 0]) cylinder(h=20, r=(sub+smrg)/2, center=true, $fn=100);
        rotate([0, 0, -120]) translate([0, sub/2, 0]) cylinder(h=20, r=(sub+smrg)/2, center=true, $fn=100);
        translate([0, -1, 20/2+2/2]) cylinder(h=20, r=13, center=true, $fn=100);
        
        #translate([0, -1, 20/2+2/2-5]) cylinder(h=20, r=13-1.5, center=true, $fn=100);
    }
    
    translate([-15/2, 0, 2/2]) cube([15, 30, 5]);

}
}



module B()
{
difference()
{
    union()
    {
        hull()
        {
            translate([0,0,28+3])
            cylinder(h=4, r=(39+4)/2, center=true, $fn=100);
            cylinder(h=4, r=(40+4)/2, center=true, $fn=100);
        }
    }

    
    
}
}

module BB()
{
difference()
{
    union()
    {
    translate([0, 0, -gap1]) hull()
    {
        translate([0,0,28+gap2])
        cylinder(h=4, r=(39)/2, center=true, $fn=100);
        cylinder(h=4, r=(40)/2, center=true, $fn=100);
    }
    }
    

    
    
}
}


module C()
{
difference()
{
    union()
    {
        C1();
    }
    //scale([0.7, 0.8, 1.1]) C1();
}
}


module C1()
{
        translate([0, 0, 55/2]) cube([33, 20, 55], center=true);
        translate([33/2, 0, 55/2]) cylinder(h=55, r=(20)/2, center=true, $fn=100);
        translate([-33/2, 0, 55/2]) cylinder(h=55, r=(20)/2, center=true, $fn=100);
}
