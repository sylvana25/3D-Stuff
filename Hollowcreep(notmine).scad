
b=8;   // Scale factor. A creeper is 24 of these high
w=3;   // Wall thickness in mm
t=0.5; // Tolerance between neck and head

echo("Total body height is",5*b+12*b+3*b);
echo("Total head height is",8*b);
echo("Total width is",8*b);

// Simple creeper body
module body() {
    cube([4*b,8*b,12*b]);
    translate([-4*b,0,-5*b]) cube([4*b,8*b,6*b]);
    translate([4*b,0,-5*b]) cube([4*b,8*b,6*b]);
} 

// The negative space to hollow out the creeper body
module tummy() {
    translate([w,w,w]) cube([4*b-2*w,8*b-2*w,12*b-2*w]);
    translate([2*b,4*b,12*b-w]) cylinder(r=2*b-w,h=w+4*b);
}

// The body with a neck added and the tummy removed
module body2() {
    layer=0.6; // Layer thickness used to make thin disks for support
    difference() {
        union() {
            body();
            translate([2*b,4*b,12*b-w]) cylinder(r=2*b,h=w+3*b);
        }
        tummy();
    }
    // Some discs for support
    //translate([2*b,4*b,12*b-w]) cylinder(r=2*b,h=layer);
    //translate([2*b,4*b,13.5*b+layer]) cylinder(r=2*b,h=layer);
    //translate([2*b,4*b,15*b-layer]) cylinder(r=2*b,h=layer);
}

// The negative space to make the creeper face
module face(){
    translate([7.5*b,0,0]) {
        translate([0,2*b,1*b]) cube([2*b,1*b,2*b]);
        translate([0,5*b,1*b]) cube([2*b,1*b,2*b]);
        translate([0,3*b,2*b]) cube([2*b,2*b,2*b]);
        translate([0,5*b,4.5*b]) cube([2*b,1.5*b,1.5*b]);
        translate([0,1.5*b,4.5*b]) cube([2*b,1.5*b,1.5*b]);    
    }
}

// Simple creeper head
module head(){
    difference() {
        cube([8*b,8*b,8*b]);
        face();
    }
}

// Head with a hole for the neck
module head2(){
    difference(){
        head();
        translate([4*b,4*b,0]) cylinder(r=2*b+t,h=w+3*b);
    }
}

// Show the assembled creeper
module creeper() {
    body2();
    translate([-2*b,0,12*b]) head2();
}

//body();
//tummy();
//head2();
//body2();
//creeper();

// These next lines show both pieces in print orientation
translate([0,-b,8*b]) rotate([0,-180,90]) head2();
translate([2*b,2*b,0]) rotate([90,0,0]) body2();

// Make a small piece to print an overhang test
/*
translate([-2*b, 12*b,0]) difference() {
  rotate([90,0,0]) tummy2();
  translate([-5*b,-10*b,-b]) cube([14*b, 24*b, 10*b]); // Just leave the neck
  //translate([-5*b,-16*b,4*b]) cube([14*b, 24*b, 10*b]); // Cross section
}
*/

