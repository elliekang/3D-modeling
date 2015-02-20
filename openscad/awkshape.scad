difference(){

intersection() {
        cylinder (h = 125, r=20, center = true, $fn=100);
        rotate ([30,0,0]) cylinder (h = 125, r=19.9, center = true, $fn=100);
};



translate([0,0,0]){
color([1,0,0]) cube([70, 20,20],center=true,$fn=100);}
}