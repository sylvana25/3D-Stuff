/*
Sun Pendant 
by Corrinne Casey
Note: this is meant to be put on a string and worn. Please scale appropriately.
*/
module sun(){
$fn= 100;
cyldiam = 25.6;
thickness = 6.4;
tri1 = [0,0];
tri2 = [4.8,12.8];
tri3 = [9.6,0];
holediam = 4.2;
holelength = 8;
holemove = [-3.8,-3.2,16];
trimove = [-4.8,9.6,0];
circout = 1;
xmovetotal = 25;
ymovetotal = 25;
zmovetotal = 7.5;

translate([25,25,7.5]){
rotate([90,0,0]){
rotate([90,0,0]){
cylinder(d = cyldiam, h = thickness);}
difference(){
    rotate([90,0,0]){
translate(trimove){linear_extrude(thickness){polygon([tri1,tri2,tri3]);}}}
translate(holemove){
rotate([0,90,0]){cylinder(d=holediam,h=holelength);}}}

for(i= [30:30:330]){
    rotate([90,i,0]){
translate(trimove){linear_extrude(thickness){polygon([tri1,tri2,tri3]);}}}}



rotate([90,-180,0]){
 translate([0,0,circout]){rotate([0,0,90]){
cylinder(d = cyldiam, h = thickness);}}
 translate([0,0,(circout*-1)]){rotate([0,0,90]){
     cylinder(d = cyldiam, h = thickness);}}}}}
 }
 scale([.7,.7,.7]){
     sun();}