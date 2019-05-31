use <lib.scad>;
thickness = 1.5;
base_width = 150;
base_height = 72;

number_of_penetrations = 3;

spacing = base_width / (number_of_penetrations + 1);

echo("Spacing ", spacing, "mm");

iec_in = 9.5;
ac_out_printer = 31;
ac_out_fan = ac_out_printer;
data_rpi_and_firealarm = 15;

holes = [
    iec_in,
    ac_out_printer,
    ac_out_printer,
    // data_rpi_and_firealarm
];

projection() difference() {
    cube([base_width, base_height, thickness]);

    translate([
        spacing * 2,
        base_height / 2,
        0
    ]) located_cylinder(holes[1] / 2, thickness * 2);

    translate([
        spacing * 3.3,
        base_height / 2,
        0
    ]) located_cylinder(holes[2] / 2, thickness * 2);

    translate([
    spacing * 1 + (22.5 / 2),
    base_height / 2 - (50 / 2),
    4
    ]) rotate([-90, 0, 90]) iec_socket();

    translate([22.5 / 2, base_height / 2, 0]) located_cylinder(9.5 / 2, thickness * 2);
}
