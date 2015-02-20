//Ellie Kang
//Section B03
//GTID: 903079262
//elliekang@gatech.edu
//"I worked on this lab assignment alone, using only this semester's course materials."

//module creates an index card holder
//I decided to create a holder for index card after finding multiple index cards that lie around in the room, creating a mess. 
//I created a second floor to the object to maximize the usability and space to organize 


module indexCardHolder(w,d,h)
{
	$fn=100;
	dimension=[w,d,h];
	$fs=40;

	difference(){

	for (x=[0,-26]) //creates 2nd floor
{

	for (z = [-15, 10]) //creates slot
{
    translate([x, 0, z])

	difference(){ //creates the space within the solid
	cube(dimension,center=true,$fn);
	translate([-1,5,-10]){
	 color([1,0,0]) cube([w-10, d-10,h],center=true,$fn);}
}
}
};

}
}

//This module creates a model of a croissant. I created a model of croissant because I was hungry at the time of writing this code. Then I thought of how great it would be if I could have a croissant and nutella jam to eat. This gave me inspiration to create this module.

module croissant()
{
	translate([0,-30,0])
	for (i=[0:10])
	{
		rotate(i* 360/11, [1,0,0])
		translate([-60,10,0])
		if(i > 0)
		{
			sphere(r=i);
		}
	}
		
}

//This module creates a shape of a square ring. This model of a ring emphasizes simplicity. I got the idea that it will be interesting to create a ring that deviates from the traditional beauty of a ring. 

//module ring()
//{
//	translate([0,-50,0])
//	difference(){
//	
//	intersection() {
//	        cylinder (h = 20, r=10, center = true, $fn=100);
//	        rotate ([90,0,0]) cylinder (h = 20, r=9.9, center = true, $fn=100);
//	};
//	
//	translate([0,0,0]){
//	color([1,0,0]) cube([40, 17,17],center=true,$fn=100);}
//	}
//}

module lego()
{
w=100;
h=10;
d=90;
dims=[w,d,h];

//creating the surface
translate([0,-70,0]){
cube(dims, center=true);
}

//5
//creating feet
translate([-10,-70,7]){
color([1,0,0]) cube([13,20,4], center=true);
}

translate([10,-70,7]){
color([1,0,0]) cube([13,20,4], center=true);
}

//9
//creating legs
translate([-10,-73,21]){
color([1,1,1]) cube([13,14,24], center=true);
}

translate([10,-73,21]){
color([1,1,1]) cube([13,14,24], center=true);
}

//33
//creating body

translate([0,-70,33]){
color([2,1,2]) sphere(20) ,center=true);
}
}

//cube([40,38,20]


indexCardHolder(26,80,130);
croissant();
ring();
lego()
