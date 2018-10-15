// https://en.wikipedia.org/wiki/ISO_metric_screw_thread#Preferred_sizes
// min distance sensor/lense is filter_height + filter_lock_overhang + body_height - body_roof_thickness + lenserest_height
//                                   2        +          1.5         +     4       -        1.5          +        1          = 7
version = "0.9"; // this helps to identify parts later
lense_housing_inner_thread_diameter = 7; // M7 fine thread; 6mm lense plus 1mm
lense_housing_inner_thread_pitch = .75;  // M7 fine thread
lense_holder_peakhole_diameter = 4.5;

lenselock_height = 1.5;
lenselock_inner_diameter = 6; // M6 fine thread
lenselock_inner_pitch = .75;  // M6 fine thread
body_height = 5;
body_thickness = 1.5;
body_roof_thickness = 1.5;
body_width = 25;
filter_height = 2; // thickness of filter
filter_lock_overhang = 1.5; // depth of thread for filter lock
filter_diameter = 12.5;
filter_house_thread_diameter = 14; // M14 fine thread; this gives the filter 1.5mm wiggle room
filter_house_thread_pitch = 1.5; // M14 fine thread
filter_house_inner_diameter = 12; // needs to be slightly smaller than filter diameter
sensor_center_x = 12.5;
sensor_center_y = 14.5;
lenserest_height = 1;
outer_diameter = 12;
lense_height = 1.5;
lensehousing_height = 6;
lensehousing_diameter = 18;
handle_diameter = lensehousing_diameter;
handle_height = 2;


body_lense_holder_mating_thread_height = body_roof_thickness + lensehousing_height - filter_height - filter_lock_overhang;
body_lense_holder_mating_thread_diameter = 8; // M8 fine thread
body_lense_holder_mating_thread_pitch = .75;  // M8 fine thread

plug_depth = body_lense_holder_mating_thread_height + handle_height - lenserest_height - lense_height - lenselock_height;

fn = 100;
