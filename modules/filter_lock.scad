include <threads.scad>
include <vars.scad>

module filter_lock() {
    difference() {
        metric_thread(diameter = filter_house_thread_diameter, pitch = filter_house_thread_pitch, length = filter_lock_overhang);
        cylinder(d = filter_house_inner_diameter, h = filter_lock_overhang, $fn = fn);
        cube([filter_house_thread_diameter, 1, 1], center = true);   
    }
}
