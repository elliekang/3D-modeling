
//F5 render option gives colors to the design that is not shown through F6 render option. 


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

//This module creates a model of a croissant. I created a model of croissant because I was hungry at the time of writing this code. Then I thought of how great it would be if I could create a model of a person eating the croissant. This gave me inspiration to create this module to be used in combination with the following module, lego.

module croissant()
{
	translate([30,-70,40])
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


//This module, lego(), and the modules following create a model of a lego person. This person is holding a croissant in one hand. I got the inspiration from seeing an advertisement about legoland in Florida on Facebook.

module lego()
{
surfacespace();
feet();
legs(); 
body();
arms();
head();
neck();
body();
eyes();
mouth();
}


module surfacespace()
{
	w=100;
	h=10;
	d=90;
	dims=[w,d,h];
	
	
	//creating the surface
	translate([0,-70,0]){
	color("LightPink") cube(dims, center=true);
	}

}

//creating feet

module feet()
{
	for (x=[-12,12])
	{
		translate([x,-70,7]){
		//rotate([0,0,180])
		color("green") cube([13,20,4], center=true);
		}
	}

}

//creating legs

module legs()
{
	for(x=[-12,12])
	{
	translate([x,-67,21]){
	color("green") cube([13,14,24], center=true);
	}
	}
	
	
}

//creating body


module body()
{
	translate([0,-70,57]){
	rotate([0,0,45])
	color("red") cylinder(r1=30,h=50,r2=20,center=true,$fn=4);
	}
}


//creating the neck


module neck()
{
	translate([0,-70,85]){
	color("yellow") cube([23,20,6],center=true);
	}
}
//creating the head


module head()
{
	translate([0,-70,101])
	{
	color("yellow") cube([30,30,26],center=true);
	}
	
	
	translate([0,-70,116])
	{
		color("yellow") cube([23,20,4],center=true);
	}

}


//create the arms

module arms()
{
	translate([-20,-70,56])
	{
		rotate([0,30,0])
		color("red") cube([12,10,53],center=true);
	}
	translate([20,-70,56])
	{
		rotate([0,-30,0])
		color("red") cube([12,10,53],center=true);
	}
	croissant();
}

//creating the eyes

module eyes()
{
	for(x=[-6,6])
	{	
		translate([x,-81,107])
		intersection(){
			color("black") sphere(r=5,center=true,$fn=100);
			color("black") cube([10,10,10],center=true);
		}
	
		};
}

module mouth()
{
	translate([0,-83,97])
	intersection(){
		color("black") cylinder(r=5,h=6,center=true);
		color("black") cylinder(r=5,h=6,center=true);
	}
}




indexCardHolder(26,80,130);
lego();