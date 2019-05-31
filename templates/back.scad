use <lib.scad>;
thickness = 1.5;
base_width = 150;
base_height = 72;


number_of_penetrations = 4;

spacing = base_width / (number_of_penetrations + 1);

echo("Spacing ", spacing, "mm");

iec_in = 9.5;
ac_out_printer = 32;
ac_out_fan = ac_out_printer;
data_rpi_and_firealarm = 15;

holes = [
    iec_in,
    ac_out_printer,
    ac_out_printer,
    data_rpi_and_firealarm
];

projection() difference() {
    cube([base_width, base_height, thickness]);

    for(i=[1:1:4]) {
        translate([
            spacing * i,
            base_height / 2,
            0
        ]) located_cylinder(holes[i - 1], thickness * 2);
    }
}
