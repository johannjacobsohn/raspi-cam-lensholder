include <threads.scad>

difference() {
    union() {
        // M12 Feingewinde DIN13
        metric_thread(diameter=12, pitch=0.75, length=4);
        translate([0, 0, 4]) cylinder(d=14, h=3);    
        translate([0, 0, 7]) cylinder(d=24, h=12);
    }
    
    cylinder(d=9, h=100, $fs=0.2);
}
