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
    }
    
    translate([-15/2, 0, 2/2]) cube([15, 30, 5]);

}
