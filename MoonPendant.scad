/*
Moon Pendant
by Corrinne Casey
Note: This is meant to be strung and worn.
Please scale appropriately.
*/
$fn = 100;
module star(){//star
linear_extrude(2){
    polygon([[0,0],[1,4],[-2,7],[2,7],[3,11],[4,7],[8,7],[5,4],[6,0],[3,2]]);
}
}
//
starscale = .8;
hole = 1.5;
module moonstar(){//creates pendant base
cylinder(d=25,h=3);
translate([0,0,3]){//raised moon
difference(){//moon shape
cylinder(d=20,h=2);
translate([6,0,0]){cylinder(d=17,h=5);}
}
}

translate([2,-3,3]){//moved star
scale([starscale,starscale,starscale]){star();}

}
}





module pendant(){//creates pendant with hole
difference(){//pendant
moonstar();
translate([-15,10,1.5]){ //hole
rotate([0,90,0]){cylinder(d=hole, h=30);}
}
}
}


scale([1,1,1]){//runs module
    pendant();
}