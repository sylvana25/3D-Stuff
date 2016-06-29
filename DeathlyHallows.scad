/*
Deathly Hallows Pendant
by Corrinne Casey
Note: this is meant to be put on a string and worn. Please scale appropriately.
*/
module Hallows(){
$fn = 100;

triside = 20;
tridiff = .75;
stickwidth = 2;
thickness = 2;
holesize = 1.3;
insidetrimove = [.125*triside,.07*triside,0];
//insidetrimove = [2.5*size,1.4*size,0];

difference(){
difference(){
linear_extrude(thickness){polygon([[0,0],[triside,0],[(triside/2),triside*.8]]);}
translate(insidetrimove){linear_extrude((thickness+1)){polygon([[0,0],[triside*tridiff,0],[(triside/2)*tridiff,(triside*.8)*tridiff]]);}}}
rotate([0,90,0]){translate([(-thickness*.5),(triside*.72),0]){cylinder(d=holesize,h=12);}}}
difference(){
translate([(triside*.45),0,0]){
    cube([stickwidth,(triside*.72),thickness]);}
rotate([0,90,0]){translate([(-thickness*.5),(triside*.72),0]){cylinder(d=holesize,h=12);}}}
translate([(triside*.5),(triside*.27),0]){
difference(){
cylinder(d=(triside*.5),h=thickness);
    cylinder(d=(triside*.4),h=thickness);}}}
scale([1.5,1.5,1.5]){
    Hallows();
}