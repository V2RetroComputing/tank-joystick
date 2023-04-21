$fn=64;

// Top
difference() {
    // This forms the outer rounded rectangle tapered -oid that everything is subtracted from for the top.
    minkowski() {
        hull() {
            translate([0, 0, 50])
                cube([160, 105, 20], center=true);
            translate([0, 0, 40])
                cube([170, 115, 15], center=true);
        }
        // Corner Roundover
        cylinder(d=2, h=0.1, center=true);
    }

    // Joystick
    translate([25, 0, 45])
        cylinder(d=20, h=55, $fn=8, center=true);

    // Joystick Mounting Screws
    translate([66/2+25, 77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    translate([-66/2+25, 77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    translate([66/2+25, -77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    translate([-66/2+25, -77/2, 30])
        cylinder(d=5.25, h=65, center=true);

    // Arcade Buttons
    translate([-50, 22.5, 45])
        cylinder(d=28, h=55, center=true);

    translate([-50, -22.5, 45])
        cylinder(d=28, h=55, center=true);

    // Case Screws
    translate([-75, -87.5/2, 29.5])
    rotate([0, 180, 0])
    import("m5.stl");

    translate([-75, 87.5/2, 29.5])
    rotate([0, 180, 0])
    import("m5.stl");

    translate([75, -87.5/2, 29.5])
    rotate([0, 180, 0])
    import("m5.stl");

    translate([75, 87.5/2, 29.5])
    rotate([0, 180, 0])
    import("m5.stl");

    // Hollow Cavity
    difference() {
        translate([0, 0, 25])
            cube([155, 100, 60], center=true);

        translate([-75, -87.5/2, 30])
            rotate([0, 0, 39])
                cylinder(d=15, h=65, $fn=5, center=true);
        translate([-75, 87.5/2, 30])
            rotate([0, 0, 33])
                cylinder(d=15, h=65, $fn=5, center=true);
        translate([75, -87.5/2, 30])
            rotate([0, 0, -3])
                cylinder(d=15, h=65, $fn=5, center=true);
        translate([75, 87.5/2, 30])
            rotate([0, 0, 3])
                cylinder(d=15, h=65, $fn=5, center=true);

        // Joystick Alignment Dimples
        translate([47/2+25, 77/2, 55])
            sphere(d=4.5);
        translate([-47/2+25, 77/2, 55])
            sphere(d=4.5);
        translate([47/2+25, -77/2, 55])
            sphere(d=4.5);
        translate([-47/2+25, -77/2, 55])
            sphere(d=4.5);
    }

    // Cable Notch
    hull() {
        translate([-25, -50, 35])
            rotate([90,0,0])
                cylinder(d=5, h=50, center=true);

        translate([-25, -50, 30])
            rotate([90,0,0])
                cylinder(d=5, h=50, center=true);
    }
}
