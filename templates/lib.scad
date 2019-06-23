module located_cylinder(radius, height) {
    translate([0, 0, -1]) {
        difference() {
            cylinder(height, r=radius);
            translate([0, 0, -1]) cylinder(height + 2, r=0.5);
        }
    }
}

module iec_socket(thickness = 4.5, width = 50) {
    rect_width = 31.5;
    edge_width = (width - rect_width) / 2;   
    height = 22.5;

    cutout_base_width = 27;
    cutout_top_width = 16;
    cutout_top_width_offset = (cutout_base_width - cutout_top_width) / 2; 

    cutout_base_height = 14;
    cutout_height = 19;

    screw_hole_center_from_rectangle = 5;

    translate([edge_width, 0, 0]) {
        difference() {
            union(){
                cube([rect_width, thickness, height]);

                translate([0, thickness, 0]) {
                    rotate([90, 0, 0]) linear_extrude(thickness) polygon([
                        [0, 0],
                        [-edge_width, height / 2],
                        [0, height]
                    ]);

                    rotate([90, 0, 0]) linear_extrude(thickness) polygon([
                        [rect_width, height],
                        [rect_width + edge_width, height / 2],
                        [rect_width, 0]
                    ]);

                }    
            }
            translate([-screw_hole_center_from_rectangle, 2, height / 2]) rotate([90, 0, 0]) cylinder(h=thickness + 2, r=1.5, center=true);
            
            translate([rect_width + screw_hole_center_from_rectangle, 2, height / 2]) rotate([90, 0, 0]) cylinder(h=thickness + 2, r=1.5, center=true);
            
            translate([(rect_width - cutout_base_width) / 2, thickness + 1, (height - cutout_height) / 2]) rotate([90, 0, 0]) linear_extrude(thickness + 2) polygon([
                [0, 0],
                [cutout_base_width, 0],
                [cutout_base_width, cutout_base_height],
                [cutout_base_width - cutout_top_width_offset, cutout_height],
                [cutout_top_width_offset, cutout_height],
                [0, cutout_base_height],
            ]);
        }
    }
}