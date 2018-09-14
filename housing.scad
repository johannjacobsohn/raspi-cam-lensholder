include <threads.scad>
// TODO: thickness body + housing height

module fixsupport() {
    cylinder(d=4, h=5, $fn=30);
}
module fixthread() {
    translate([0, 0, 1])
        metric_thread(diameter=2, pitch=0.4, length=4, internal=true);
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

module thread_housing() {
    translate([12.5, 14.5, -1])
        cylinder(d=17.5, h=4);
}

module body() {
    difference() {
        cube([25, 24, 5]);
        translate([1.5, 1.5, 3])
            cube([22, 21, 4]);
    }
}

module lock() {
    translate([12.5, 14.5, 1.5])
    rotate([-90, 0, 0])
        metric_thread(diameter=2, pitch=0.4, length=10, internal=true);
}

module thread() {
     translate([12.5, 14.5, -2])
            metric_thread(diameter=12, pitch=0.75, length=5, internal=true);
}


difference() {
    union() {
        body();
        thread_housing();
        fixsupports();
    }
    fixthreads();
    thread();
    lock();
}
