
module mrCreeps(){
    $fn = 100
translate([0,0,6]){cube([10,7,20]);}
translate([0,-3.5,0]){cube([5,5,7]);}
translate([5,-3.5,0]){cube([5,5,7]);}
translate([0,5,0]){cube([5,5,7]);}
translate([5,5,0]){cube([5,5,7]);}
difference(){
translate([-1,-2.5,25]){
    cube([12,12,12]);}
union(){
translate([6.5,8,32]){cube([3.2,3.2,3.2]);}
translate([0.5,8,32]){cube([3.2,3.2,3.2]);}
translate([2.5,7.5,28.5]){cube([5,3,2]);}
translate([3.7,7.5,30]){cube([2.5,3,1.7]);}}
translate([5.8,7.5,27]){cube([1.7,3,2]);}
translate([2.5,7.5,27]){cube([1.7,3,2]);}

}}
scale([1,1,1]){
    mrCreeps();
}