include <vars.scad>

module screwsupport() {
    cylinder(d=4, h=2, $fn=fn);
}
module screwhole() {
    cylinder(d=2.5, h=13, $fn=fn);
}

module base() {
    union() {
        difference() {
            cube([17, 25, 2]);
            translate([1.5, 1.5, 0])
                cube([14, 22, 2]);
        }
        translate([2, 2, 0])
            screwsupport();
      
        translate([2, 23, 0])
            screwsupport();

        translate([15, 2, 0])
            screwsupport();

        translate([15, 23, 0])
            screwsupport();
    }
}

module back() {
    difference() {
        union (){
            cube([17, 70, 2], center=true);
            translate([-8.5, 0, 1])
                base();

            translate([-8.5, -25, 1])
                base();
        }

        translate([6.5, 2, -2])
            screwhole();

        translate([6.5, 23, -2])
            screwhole();

        translate([-6.5, 2, -2])
            screwhole();

        translate([-6.5, 23, -2])
            screwhole();

        translate([6.5, -2, -2])
            screwhole();

        translate([6.5, -23, -2])
            screwhole();

        translate([-6.5, -23, -2])
            screwhole();

        translate([-6.5, -2, -2])
            screwhole();
    }
}