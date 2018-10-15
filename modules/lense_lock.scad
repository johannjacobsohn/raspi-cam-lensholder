include <threads.scad>
include <vars.scad>

module lense_lock() {
    difference() {
        metric_thread(
            diameter = lenselock_inner_diameter,
            pitch = lenselock_inner_pitch,
            length = lenselock_height
        );
        cylinder(d = lense_holder_peakhole_diameter, h = lenselock_height, $fn = fn);
        cube([12, 1, 1], center = true);
    }
}
