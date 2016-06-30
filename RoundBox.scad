$fn = 100;

boxdepth = 20;
boxdiam = 50;
wall = 4;

module box(x){
    scale([x,x,x]){
        difference(){
            cylinder(d=(boxdiam+(wall*2)),h=(boxdepth+wall));
            translate([0,0,wall]){
                cylinder(d=boxdiam,h=boxdepth);
            }
        }
    }
}
box(1);




module lid(x){
    scale([x,x,x]){
        translate([0,0,boxdepth+wall+1]){
            cylinder(d=(boxdiam+(wall*2)),h=wall);}
        
        difference(){ 
            translate([0,0,boxdepth+1]){
            cylinder(d=(boxdiam-1),h=(wall*2));
            cylinder(d=(boxdiam-wall-1),h=(wall*2));}
        }
    }
}
lid(1);
            