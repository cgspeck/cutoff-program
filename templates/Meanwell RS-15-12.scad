use <lib.scad>;

thickness = 1;

// Underside of Meanwell RS-15-12
// https://www.meanwell.com/productPdf.aspx?i=1#1


projection() difference() {
    union() {
        cube([62.5, 51, thickness]);
        translate([62.5, 51 - 39.99 - 1.2, 0]) cube([13, 39.66, thickness]);
    };
    translate([14.65, 25.25, 0]) located_cylinder(1.5, thickness * 2);

    translate([14.65 + 39.1, 25.25, 0]) located_cylinder(1.5, thickness * 2);
};
