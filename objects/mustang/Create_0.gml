//Sprites
sprite_side = mustang_3;
sprite_down = mustang3_up;
sprite_up = mustang3_down;
sprite_turning_up = mustang3_turndown;
sprite_turning_down = mustang3_turning;

// Eirframe Physics variables
eirframe_weight = 3;
image_angle = 0; // Initial angle of the player eirframe (facing right)
dir_x = 0;
dir_y = 0;
health = 200;

//Eirframe Pilot variables
eirframe_eirnaut = 1;

//Eirframe Armor variables
eirframe_armor = 1;

//Eirframe Engine variables
eirframe_engine = instance_create_layer(x, y, layer, item_eirframe_engine_propeller_merlin);
current_thrust = eirframe_engine.engine_thrust;

//Eirframe Weapon variables
eirframe_primary_weapons = [
	instance_create_layer(x, y, layer, item_eirframe_weapon_mg_browning),
	instance_create_layer(x, y, layer, item_eirframe_weapon_mg_browning),
	instance_create_layer(x, y, layer, item_eirframe_weapon_mg_browning),
	instance_create_layer(x, y, layer, item_eirframe_weapon_mg_browning)
];
primary_weapon_x_offset_distance = 0;
primary_weapon_y_offset_distance = 0;