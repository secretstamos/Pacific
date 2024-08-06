if(array_length(eirframe_parts) != 0){
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



	//Particle System
	//part_system_position(eirframe_engine.engine_smoke_trail, x-10, y+5);
	//part_system_angle(eirframe_engine.engine_smoke_trail, image_angle);

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
		sprite_direction = "_e";
	} else if (angle > 22.5 && angle <= 67.5) {
	    sprite_direction = "_ne";
	} else if (angle > 67.5 && angle <= 112.5) {
	    sprite_direction = "_n";
	} else if (angle > 112.5 && angle <= 157.5) {
	    sprite_direction = "_ne";
	} else if (angle > 157.5 && angle <= 202.5) {
	    sprite_direction = "_e";
	} else if (angle > 202.5 && angle <= 247.5) {
	    sprite_direction = "_se";
	} else if (angle > 247.5 && angle <= 292.5) {
	    sprite_direction = "_s";
	} else if (angle > 292.5 && angle <= 337.5) {
	    sprite_direction = "_se";
	}

	array_foreach(eirframe_parts, function (eirframe_part) {
		eirframe_part.image_angle = image_angle;
		eirframe_part.x = x;
		eirframe_part.y = y;
		var currentSprite = eirframe_part.base_sprite_root + sprite_direction;
		eirframe_part.sprite_index = asset_get_index(currentSprite);
	});

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
}
