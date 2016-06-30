$fn = 50;
boltscale = .6;
holesize = .6;
totalscale = 1;

module bolt(){//creates bolt function
linear_extrude(4){//3d bolt
union(){//2d bolt
polygon([[0,0],[1,3],[4,4],[2,.5]]);
polygon([[1,1],[4,1.5],[1.5,-2],[.2,-2.5]]);
polygon([[1,-1.5],[3,-1],[0,-5]]);
}
} 
}



module pendant(){//makes entire pendant
difference(){
difference(){//broken heart
union(){//Heart
difference(){//fixed circles
union(){//circles
translate([-1.9,5.5,0]){cylinder(d=4.25,h=3);}
translate([1.9,5.5,0]){cylinder(d=4.25,h=3);}
}
difference(){//triborder
linear_extrude(3){polygon([[0,0],[4.5,5],[-4.5,5]]);}
linear_extrude(3){polygon([[0,0],[4,5],[-4,5]]);}
}
}
linear_extrude(3){//triangle
    polygon([[0,0],[4,5],[-4,5]]);}
}
translate([-.8,5.25,0]){//moved bolt
scale([boltscale,boltscale,1]){
    bolt();
}
}
}
translate([-5,6.5,1.5]){//hole cylinder
rotate([0,90,0]){cylinder(d=holesize, h=12);}
}
}
}

scale([totalscale,totalscale,totalscale]){
    pendant();
}