array_foreach(eirframe_primary_weapons, function (primary_weapon) {
	if (!primary_weapon.weapon_on_cooldown) {
		audio_play_sound(primary_weapon.weapon_sound, 1, false);

	    // Calculate bullet position relative to the eirframe's orientation
	    var bullet_x = x;
	    var bullet_y = y;
	
    
		// Create a bullet instance at the calculated position
		var bullet = instance_create_layer(bullet_x, bullet_y, layer, primary_weapon.weapon_round);
		// Set bullet properties
		bullet.direction = image_angle + (random_range(-50, 50) / primary_weapon.weapon_accuracy);
		bullet.owner = eirframe_eirnaut;
    

	    // Set cooldown flag and start cooldown timer
	    primary_weapon.weapon_on_cooldown = true;
	    primary_weapon.alarm[0] = primary_weapon.weapon_cooldown; // Adjust alarm number as needed
	}
});