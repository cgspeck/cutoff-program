use <lib.scad>;
thickness = 1.5;
base_width = 150;
base_height = 72;


number_of_penetrations = 6;

spacing = base_width / (number_of_penetrations + 1);

echo("Spacing ", spacing, "mm");

ac_pilot_light = 9.5;
led_pilot_light = 8;
red_button = 12;
green_button = red_button;
printer_mode_switch = 6;
fan_mode_switch = printer_mode_switch;

holes = [
    ac_pilot_light,
    led_pilot_light,
    red_button,
    green_button,
    printer_mode_switch,
    fan_mode_switch
];

projection() difference() {
    cube([base_width, base_height, thickness]);

    for(i=[1:1:6]) {
        translate([
            spacing * i,
            base_height / 2,
            0
        ]) located_cylinder(holes[i - 1] / 2, thickness * 2);
    }
}
