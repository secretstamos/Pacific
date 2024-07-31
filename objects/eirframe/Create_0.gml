base_sprite_root = "frame";

// Eirframe Physics variables
eirframe_weight = 3;
image_angle = 0; // Initial angle of the player eirframe (facing right)
dir_x = 0;
dir_y = 0;
health = 200;
sprite_direction = "";

//Eirframes parts
eirframe_wings = instance_create_layer(x, y, layer, part_eirframe_wings_laminar);
eirframe_engine = instance_create_layer(x, y, layer, part_eirframe_engine_standard_alisturm);
eirframe_rudder = instance_create_layer(x, y, layer, part_eirframe_rudder_standard);
eirframe_hull = instance_create_layer(x, y, layer, part_eirframe_hull_mustang);
eirframe_trail = instance_create_layer(x, y, layer, part_eirframe_trail_trail);
eirframe_eirnaut = instance_create_layer(x, y, layer, part_human_pilot_confed);

eirframe_parts = [
self,
eirframe_eirnaut,
eirframe_hull,
eirframe_engine,
eirframe_rudder,
eirframe_wings,
eirframe_trail,
];


//Eirframe Armor variables
eirframe_armor = 1;

//Eirframe Engine variables 
current_thrust = eirframe_engine.engine_thrust;

//Eirframe Weapon variables
eirframe_primary_weapons = [
	instance_create_layer(x, y, layer, part_eirframe_weapon_lightmg),
	//instance_create_layer(x, y, layer, part_eirframe_weapon_lightmg),
	//instance_create_layer(x, y, layer, part_eirframe_weapon_lightmg),
	//instance_create_layer(x, y, layer, part_eirframe_weapon_lightmg)
];
primary_weapon_x_offset_distance = 0;
primary_weapon_y_offset_distance = 0;