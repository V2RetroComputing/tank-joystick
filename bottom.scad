$fn=64;

// Bottom
difference() {
    minkowski() {
        hull() {
            translate([0, 0, 30])
                cube([160, 110, 60], center=true);
            translate([0, 0, 40])
                cube([169.5, 119.5, 15], center=true);
            
        }
        cylinder(d=2, h=0.1, center=true);
    }
    
    // Slice off the top, but leave the cable retention nub
    difference() {
        translate([0, 0, 62.25])
            cube([200, 150, 60], center=true);

        hull() {
        translate([-25, -50, 35])
            rotate([90,0,0])
            cylinder(d=4.9, h=50, center=true);

        translate([-25, -50, 30])
            rotate([90,0,0])
            cylinder(d=5, h=50, center=true);
        }
    }

    // Cable
    translate([-25, -50, 35])
        rotate([90,0,0])
        cylinder(d=5, h=50, center=true);

    // Optional through-pegs for the Joystick screws.
    /*
    translate([66/2+25, 77/2, 0])
        cylinder(d=11, h=6, center=true);
    translate([-66/2+25, 77/2, 0])
        cylinder(d=11, h=6, center=true);
    translate([66/2+25, -77/2, 0])
        cylinder(d=11, h=6, center=true);
    translate([-66/2+25, -77/2, 0])
        cylinder(d=11, h=6, center=true);

    translate([66/2+25, 77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    translate([-66/2+25, 77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    translate([66/2+25, -77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    translate([-66/2+25, -77/2, 30])
        cylinder(d=5.25, h=65, center=true);
    */

    // Case mounting holes
    translate([-75, -87.5/2, 30])
        cylinder(d=5.25, h=15, center=true);
    translate([-75, 87.5/2, 30])
        cylinder(d=5.25, h=15, center=true);
    translate([75, -87.5/2, 30])
        cylinder(d=5.25, h=15, center=true);
    translate([75, 87.5/2, 30])
        cylinder(d=5.25, h=15, center=true);

    // Tapered channels for case screws
    hull() {
        translate([70, 82.5/2, 0])
            cylinder(d=11, h=5, center=true);
        translate([75, 87.5/2, 25])
            cylinder(d=11, h=5, center=true);
    }
    hull() {
        translate([-70, 82.5/2, 0])
            cylinder(d=11, h=5, center=true);
        translate([-75, 87.5/2, 25])
            cylinder(d=11, h=5, center=true);
    }
    hull() {
        translate([70, -82.5/2, 0])
            cylinder(d=11, h=5, center=true);
        translate([75, -87.5/2, 25])
            cylinder(d=11, h=5, center=true);
    }
    hull() {
        translate([-70, -82.5/2, 0])
            cylinder(d=11, h=5, center=true);
        translate([-75, -87.5/2, 25])
            cylinder(d=11, h=5, center=true);
    }

    // Hollowed out void of the Joystick's heart
    difference() {
        translate([0, 0, 32.5])
            cube([155, 95, 60], center=true);

        translate([66/2+25, 77/2, 0])
            cylinder(d=15, h=10, center=true);
        translate([-66/2+25, 77/2, 0])
            cylinder(d=15, h=10, center=true);
        translate([66/2+25, -77/2, 0])
            cylinder(d=15, h=10, center=true);
        translate([-66/2+25, -77/2, 0])
            cylinder(d=15, h=10, center=true);

        hull() {
            translate([70, 82.5/2, 0])
                cylinder(d=18, h=5, center=true);
            translate([75, 87.5/2, 30])
                cylinder(d=18, h=5, center=true);
        }

        hull() {
            translate([-70, 82.5/2, 0])
                cylinder(d=18, h=5, center=true);
            translate([-75, 87.5/2, 30])
                cylinder(d=18, h=5, center=true);
        }

        hull() {
            translate([70, -82.5/2, 0])
                cylinder(d=18, h=5, center=true);
            translate([75, -87.5/2, 30])
                cylinder(d=18, h=5, center=true);
        }

        hull() {
            translate([-70, -82.5/2, 0])
                cylinder(d=18, h=5, center=true);
            translate([-75, -87.5/2, 30])
                cylinder(d=18, h=5, center=true);
        }

    }
}
