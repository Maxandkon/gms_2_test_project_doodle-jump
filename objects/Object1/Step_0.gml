/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_left)){
	x-=10;	
}
if(keyboard_check(vk_right)){
	x+=10;	
}

//jump = place_meeting(x,y,Object2);

if(instance_exists(Object1)){
y+=y_spd*n;
}

if (y_spd < 0){
	y_spd++;
}
else{	
	if(y_spd >= 10) { y_spd=10; }
	else {y_spd++;}
	if(place_meeting(x,y,Object2)) {
		y_spd = -30; 
	}
}

if(keyboard_check_pressed(vk_space)){ game_restart(); }

if (qwq > 200){
	//nn = random_range(0.4,0.8);
	//if (nn > 0.4){
		instance_create_layer(random_range(35,350),random_range(y-qw-50,y-100-qw),"Instances",Object2);
	//}
	//if (nn > 0.8){
		instance_create_layer(random_range(350,665),random_range(y-qw-200,y-qw-400),"Instances",Object2);
	//}
	qwq=qwq-qw/10;
	qw=qw+random_range(200,400); 
}

