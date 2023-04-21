$fn=64;

// Inner post to add support between top and bottom shell (may not be required)
difference() {
    translate([0, 0, 25])
        cylinder(d=8, h=47, center=true);

    translate([0, 0, 51.5])
        import("m5.stl");

    translate([0, 0, -1.5])
        rotate([0, 180, 0])
            import("m5.stl");
}
