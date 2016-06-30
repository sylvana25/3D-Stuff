$fn = 100;

translate([0,0,21]){
difference(){
union(){//outside
sphere(20);
translate([0,0,-21]){cylinder(d=16,h=58);}
}
union(){//inside
sphere(16);
cylinder(d=12,h=37);}
}
}
translate([25,25,-40]){
union(){
translate([0,0,40]){cylinder(d=11.5,h=12);}
translate([0,0,55]){sphere(8);}
}
}
