include <threads.scad>
include <vars.scad>;
// focal length (fl) is 9mm
// fl = body_height - lensehouse_height/2

module fixsupport() {
    cylinder(d = 4, h = body_height, $fn = fn);
}

// lock threads to fix camera module to body
module fixthread() {
    translate([0, 0, 1])
        // M2 coarse thread
        metric_thread(
            diameter = 2,
            pitch = 0.4,
            length = body_height,
            internal = true
        );
}

module fixsupports(){
    translate([23, 2, 0])
        fixsupport();
    translate([2, 2, 0])
        fixsupport();
    translate([23, 14.5, 0])
        fixsupport();
    translate([2, 14.5, 0])
        fixsupport();
}

module fixthreads() {
    translate([23, 2, 0])
        fixthread();
    translate([2, 2, 0])
        fixthread();
    translate([23, 14.5, 0])
        fixthread();
    translate([2, 14.5, 0])
        fixthread();
}

module mainbody() {
    t = body_thickness;
    r = body_roof_thickness;
    h = body_height;
    w = body_width;
    difference() {
        cube([w, w, h]);
        translate([t, t, r])
            cube([w - 2 * t, w - 2 * t, h - r]);
    }
}

module versiontext() {
    translate([body_thickness + 2, body_thickness + 2, body_roof_thickness + 0.5])
        linear_extrude(height = .5) {
            text(version, size = 4);
        }
}

// the lock screw fixes the lense in transport
module lock() {
    translate([body_width/2, body_width/2, 2 - lensehousing_height])
    rotate([-90, 0, 0])
        // M2 coarse thread
        metric_thread(
            diameter = 2,
            pitch = 0.4,
            length = body_width/2,
            internal = true
        );
}

module thread() {

    translate([sensor_center_x, sensor_center_y, -lensehousing_height])
            metric_thread(
                diameter = body_lense_holder_mating_thread_diameter,
                pitch = body_lense_holder_mating_thread_pitch,
                length = body_lense_holder_mating_thread_height,
                internal = true
            );
}

// filter mount
module filterhouse() {
    translate([sensor_center_x, sensor_center_y, body_roof_thickness - filter_height - filter_lock_overhang])
        metric_thread(
            diameter = filter_house_thread_diameter,
            pitch = filter_house_thread_pitch,
            length = filter_height + filter_lock_overhang,
            internal = true
        );
}


module lense_house() {
    translate([12.5, 14.5, -lensehousing_height])
            cylinder(d = lensehousing_diameter, h = lensehousing_height, $fn = fn);
}

module body() {
    difference() {
        union() {
            mainbody();
            fixsupports();
            versiontext();
            lense_house();
        }
        filterhouse();
        fixthreads();
        thread();
        lock();
    }
}
