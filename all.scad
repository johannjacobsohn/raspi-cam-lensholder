include <modules/back.scad>;
include <modules/body.scad>;
include <modules/lense_holder.scad>
include <modules/filter_lock.scad>
include <modules/lense_lock.scad>
include <modules/plug.scad>

translate([-13, -1, 11])
rotate([180, 0, 0])
    body();

translate([-13, 26, 11])
rotate([180, 0, 0])
    body();


translate([10, 0, 18])
    lense_holder();

translate([-10, 0, 18])
    lense_holder();


translate([0, 20, 20])
    filter_lock();

translate([0, -20, 20])
    filter_lock();


translate([0, 20, 25])
    lense_lock();

translate([0, -20, 25])
    lense_lock();


translate([0, 20, 30])
    plug();

translate([0, -20, 30])
    plug();


back();