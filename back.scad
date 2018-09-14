
module screwsupport() {
    cylinder(d=4, h=2, $fn=30);
}
module screwhole() {
    cylinder(d=2.5, h=13, $fn=30);
}

module back() {
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
 
difference() {
    union (){
        cube([17, 70, 2], center=true);
        translate([-8.5, 0, 1])
            back();

        translate([-8.5, -25, 1])
            back();
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