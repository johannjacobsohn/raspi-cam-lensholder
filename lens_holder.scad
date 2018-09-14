include <threads.scad>
//
// focal length is 9mm, so thread should be 6mm high
// 6mm Dia. x 9mm FL UV-AR Coated, UV Plano-Convex Lens
// 310nm CWL, 10nm FWHM, 12.5mm Mounted Diameter
// 330nm CWL, 10nm FWHM, 12.5mm Mounted Diameter


// M12 thread DIN13
// height 6mm
module thread(){
    difference() {
        metric_thread(diameter=12, pitch=0.75, length=6);
        translate([0, 0, -1])
            cylinder(d=5.6, h=100, $fs=0.2);
    }
}

// height 4mm
// lens is 6mm diameter, cutout should then be 6.1mm
module lenshousing() {
    difference() {
        cylinder(d=17.5, h=4);
        cube(size = [10,2.5,20], center = true);
        translate([0, 0, -1])
            cylinder(d=6.1, h=100, $fs=0.2);
    }
}

// filter is 12.5mm wide, cutout is .1mm wider
module filterhousing() {
    difference() {
        cylinder(d=17.5, h=8);
        translate([0, 0, -1])
            cylinder(d=12.6, h=100, $fs=0.2);
    }
}

union() {
    thread();
    translate([0, 0, 6]) lenshousing();
    translate([0, 0, 10]) filterhousing();
}

