include <threads.scad>
include <vars.scad>

module plug() {
    union() {
        metric_thread(diameter = lenselock_inner_diameter, pitch = lenselock_inner_pitch, length = plug_depth);
        translate([0, 0, plug_depth])
            cylinder(d = handle_diameter, h = handle_height, $fn = fn);
    }
}
