//Sprites
sprite_e = mustang_e;
sprite_n = mustang_n;
sprite_ne = mustang_ne;
sprite_s = mustang_s;
sprite_se = mustang_se;

//Eirframes parts
eirframe_wings = instance_create_layer(x, y, layer, part_eirframe_wings_laminar);
eirframe_engine = instance_create_layer(x, y, layer, part_eirframe_engine_propeller_alisturm);
eirframe_rudder = instance_create_layer(x, y, layer, part_eirframe_rudder_balanced);
eirframe_chasis = instance_create_layer(x, y, layer, part_eirframe_chasis_mustang);

eirframe_parts = [
eirframe_engine,
eirframe_rudder,
eirframe_wings,
eirframe_chasis
];

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
current_thrust = eirframe_engine.engine_thrust;

//Eirframe Weapon variables
eirframe_primary_weapons = [
	instance_create_layer(x, y, layer, part_eirframe_weapon_mg_browning),
	instance_create_layer(x, y, layer, part_eirframe_weapon_mg_browning),
	instance_create_layer(x, y, layer, part_eirframe_weapon_mg_browning),
	instance_create_layer(x, y, layer, part_eirframe_weapon_mg_browning)
];
primary_weapon_x_offset_distance = 0;
primary_weapon_y_offset_distance = 0;