// Player rotation
var rotation_input = 0;
rotation_input -= keyboard_check(ord("D")); // Left
rotation_input += keyboard_check(ord("A")); // Right
image_angle += rotation_input * eirframe_engine.engine_rotation_speed;



// Player thrust
eirframe_engine.engine_on = keyboard_check(ord("W"));
if (eirframe_engine.engine_on) {
	// Calculate the direction vector based on the current angle
	dir_x = lengthdir_x(1, image_angle); // Use unit vector for direction
	dir_y = lengthdir_y(1, image_angle);
	
	current_thrust = eirframe_engine.engine_thrust;
    // Apply thrust only when the W key is pressed
    x += dir_x * eirframe_engine.engine_thrust;
    y += dir_y * eirframe_engine.engine_thrust;
	eirframe_trail.image_alpha = 255;
}
else{
	current_thrust = current_thrust * .99
    // Apply thrust only when the W key is pressed
    x += dir_x * current_thrust;
    y += dir_y * current_thrust;
	
    // Gravity
    y += eirframe_weight; // Adjust the value as needed
	eirframe_trail.image_alpha = 0;
}

array_foreach(eirframe_parts, function (eirframe_part) {
	eirframe_part.image_angle = image_angle;
	eirframe_part.x = x;
	eirframe_part.y = y;
});


//Particle System
//part_system_position(eirframe_engine.engine_smoke_trail, x-10, y+5);
//part_system_angle(eirframe_engine.engine_smoke_trail, image_angle);

// Wrap around the screen
if (x < 0) {
    x = room_width;
}
if (x > room_width) {
    x = 0;
}
if (y < 0) {
    y = room_height;
}
if (y > room_height) {
    y = 0;
}



// Get the current angle of the plane
var angle = image_angle;

// Normalize angle to be within 0 to 360 degrees
while (angle < 0) {
    angle += 360;
}
while (angle >= 360) {
    angle -= 360;
}

// Check the direction and set the appropriate sprite
if ((angle > 337.5 && angle <= 360) || (angle >= 0 && angle <= 22.5)) {
    eirframe_chasis.sprite_index = sprite_e;       // Right
	eirframe_engine.sprite_index = eirframe_engine.sprite_e;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_e;
	eirframe_wings.sprite_index = eirframe_wings.sprite_e;
	eirframe_trail.sprite_index = eirframe_trail.sprite_e;
} else if (angle > 22.5 && angle <= 67.5) {
    eirframe_chasis.sprite_index = sprite_ne;    // Up-Right
	eirframe_engine.sprite_index = eirframe_engine.sprite_ne;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_ne;
	eirframe_wings.sprite_index = eirframe_wings.sprite_ne;
	eirframe_trail.sprite_index = eirframe_trail.sprite_ne;
} else if (angle > 67.5 && angle <= 112.5) {
    eirframe_chasis.sprite_index = sprite_n;          // Up
	eirframe_engine.sprite_index = eirframe_engine.sprite_n;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_n;
	eirframe_wings.sprite_index = eirframe_wings.sprite_n;
	eirframe_trail.sprite_index = eirframe_trail.sprite_n;
} else if (angle > 112.5 && angle <= 157.5) {
    eirframe_chasis.sprite_index = sprite_ne;     // Up-Left
	eirframe_engine.sprite_index = eirframe_engine.sprite_ne;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_ne;
	eirframe_wings.sprite_index = eirframe_wings.sprite_ne;
	eirframe_trail.sprite_index = eirframe_trail.sprite_ne;
} else if (angle > 157.5 && angle <= 202.5) {
    eirframe_chasis.sprite_index = sprite_e;        // Left
	eirframe_engine.sprite_index = eirframe_engine.sprite_e;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_e;
	eirframe_wings.sprite_index = eirframe_wings.sprite_e;
	eirframe_trail.sprite_index = eirframe_trail.sprite_e;
} else if (angle > 202.5 && angle <= 247.5) {
    eirframe_chasis.sprite_index = sprite_se;   // Down-Left
	eirframe_engine.sprite_index = eirframe_engine.sprite_se;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_se;
	eirframe_wings.sprite_index = eirframe_wings.sprite_se;
	eirframe_trail.sprite_index = eirframe_trail.sprite_se;
} else if (angle > 247.5 && angle <= 292.5) {
    eirframe_chasis.sprite_index = sprite_s;        // Down
	eirframe_engine.sprite_index = eirframe_engine.sprite_s;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_s;
	eirframe_wings.sprite_index = eirframe_wings.sprite_s;
	eirframe_trail.sprite_index = eirframe_trail.sprite_s;
} else if (angle > 292.5 && angle <= 337.5) {
    eirframe_chasis.sprite_index = sprite_se;  // Down-Right
	eirframe_engine.sprite_index = eirframe_engine.sprite_se;
	eirframe_rudder.sprite_index = eirframe_rudder.sprite_se;
	eirframe_wings.sprite_index = eirframe_wings.sprite_se;
	eirframe_trail.sprite_index = eirframe_trail.sprite_se;
}