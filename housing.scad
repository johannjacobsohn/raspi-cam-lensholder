include <threads.scad>

difference() {
    union() {
        // Grundkörper
        difference() {
            cube([25, 24, 5]);
            // ausschnitt
            translate([1.5, 1.5, 3]) cube([22, 21, 2]);
        }
        
        // Befestigung
        translate([23, 2, 0]) cylinder(d=4, h=5, $fn=30);
        translate([2, 2, 0]) cylinder(d=4, h=5, $fn=30);
        translate([23, 14.5, 0]) cylinder(d=4, h=5, $fn=30);
        translate([2, 14.5, 0]) cylinder(d=4, h=5, $fn=30);
    }
        
    // befestigungslöcher
    translate([23, 2, 1]) metric_thread(diameter=2, pitch=0.4, length=4, internal=true);
    translate([2, 2, 1]) metric_thread(diameter=2, pitch=0.4, length=4, internal=true);
    translate([23, 14.5, 1]) metric_thread(diameter=2, pitch=0.4, length=4, internal=true);
    translate([2, 14.5, 1]) metric_thread(diameter=2, pitch=0.4, length=4, internal=true);
    
    // Objektivhalterung
    translate([12.5, 14.5, 0]) metric_thread(diameter=12, pitch=0.75, length=5, internal=true);

    // Verriegelung für Linsenhalter
    translate([12.5, 14.5, 1.5]) rotate([-90, 0, 0]) metric_thread(diameter=2, pitch=0.4, length=10, internal=true);
}