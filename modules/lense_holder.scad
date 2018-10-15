include <threads.scad>
include <vars.scad>
// focal length is 9mm, so thread should be 6mm high
// 6mm Dia. x 9mm FL UV-AR Coated, UV Plano-Convex Lens
// 310nm CWL, 10nm FWHM, 12.5mm Mounted Diameter
// 330nm CWL, 10nm FWHM, 12.5mm Mounted Diameter

module lense_holder() {
    difference() {
        union() {
            // outer thread
            metric_thread(
                diameter = body_lense_holder_mating_thread_diameter,
                pitch = body_lense_holder_mating_thread_pitch,
                length = body_lense_holder_mating_thread_height
            );

            // handle
            translate([0, 0, body_lense_holder_mating_thread_height])
                cylinder(d = handle_diameter, h = handle_height, $fn = fn);
        }

        // lense rest
        cylinder(d = lense_holder_peakhole_diameter, h = lenserest_height, $fn = fn);

        // lense lock thread
        translate([0, 0, lenserest_height])
            metric_thread(
                diameter = lense_housing_inner_thread_diameter,
                pitch = lense_housing_inner_thread_pitch,
                length = body_lense_holder_mating_thread_height + handle_height - lenserest_height,
                internal = true
            );
    }
}
