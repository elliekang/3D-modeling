w=100;
h=10;
d=90;
dims=[w,d,h];

//creating the surface
translate([0,0,0]){
cube(dims, center=true);
}

//5
//creating feet
translate([-10,0,7]){
color([1,0,0]) cube([13,20,4], center=true);
}

translate([10,0,7]){
color([1,0,0]) cube([13,20,4], center=true);
}

//9
//creating legs
translate([-10,3,21]){
color([1,1,1]) cube([13,14,24], center=true);
}

translate([10,3,21]){
color([1,1,1]) cube([13,14,24], center=true);
}

//33
//creating body

translate([0,0,33]){
color([2,1,2]) cube([40,38,20], center=true);
}
