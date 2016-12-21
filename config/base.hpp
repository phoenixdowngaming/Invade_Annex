class base_phoenix
{
	name = "Camp Phoenix";
	isOwned = 1;
	groups = 2;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		//Land Vehicles
		{"B_APC_Tracked_01_rcws_F", "phoenix_spawn_1_land"},
		{"B_APC_Wheeled_01_cannon_F", "phoenix_spawn_2_land"},
		{"B_MBT_01_TUSK_F", "phoenix_spawn_3_land"},
		{"B_APC_Tracked_01_AA_F", "phoenix_spawn_4_land"},
		{"I_C_Offroad_02_unarmed_F", "phoenix_spawn_5_land"},
		{"I_C_Offroad_02_unarmed_F", "phoenix_spawn_6_land"},
		{"B_LSV_01_armed_F", "phoenix_spawn_7_land"},
		{"B_LSV_01_armed_F", "phoenix_spawn_8_land"},
		{"B_LSV_01_unarmed_F", "phoenix_spawn_9_land"},
		{"B_LSV_01_unarmed_F", "phoenix_spawn_10_land"},
		{"B_MRAP_01_hmg_F", "phoenix_spawn_11_land"},
		{"B_MRAP_01_F", "phoenix_spawn_12_land"},

		//Air Vehicles
		{"B_T_VTOL_01_infantry_F", "phoenix_spawn_1_air"},
		{"B_Heli_Transport_03_unarmed_F", "phoenix_spawn_2_air"},
		{"B_Heli_Attack_01_F", "phoenix_spawn_3_air"},
		{"B_Heli_Transport_01_F", "phoenix_spawn_4_air"},
		{"B_Heli_Light_01_F", "phoenix_spawn_5_air"},
		{"B_Heli_Light_01_F", "phoenix_spawn_6_air"},
		{"B_Plane_CAS_01_F", "phoenix_spawn_7_air"}
	};
};


class base_alpha
{
	name = "Base Alpha";
	isOwned = 1;
	groups = 3;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_G_Offroad_01_armed_F", "base_alpha_respawn_1"},
		{"I_Truck_02_covered_F", "base_alpha_respawn_2"},
		{"I_Truck_02_covered_F", "base_alpha_respawn_3"}
	};
};

class base_bravo
{
	name = "Base Bravo";
	isOwned = 0;
	groups = 4;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_APC_Wheeled_01_cannon_F", "base_bravo_respawn_1"},
		{"I_Truck_02_covered_F", "base_bravo_respawn_2"}
	};
};

class base_charlie
{
	name = "Base Charlie";
	isOwned = 0;
	groups = 7;
	respawnGroups = 2;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_Heli_Transport_01_F", "base_charlie_respawn_1"},
		{"B_Plane_CAS_01_F", "base_charlie_respawn_2"},
		{"B_Plane_CAS_01_F", "base_charlie_respawn_3"},
		{"B_Truck_01_transport_F", "base_charlie_respawn_4"},
		{"B_Truck_01_transport_F", "base_charlie_respawn_5"}
	};
};

class base_delta
{
	name = "Base Delta";
	isOwned = 0;
	groups = 4;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_APC_Tracked_01_AA_F", "base_delta_respawn_1"}
	};
};

class base_echo
{
	name = "Base Echo";
	isOwned = 0;
	groups = 2;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_MRAP_01_hmg_F", "base_echo_respawn_1"},
		{"B_MRAP_01_hmg_F", "base_echo_respawn_2"},
		{"B_Truck_01_covered_F", "base_echo_respawn_3"},
		{"C_SUV_01_F", "base_echo_respawn_4"},
		{"C_SUV_01_F", "base_echo_respawn_5"}
	};
};

class base_foxtrot
{
	name = "Base Foxtrot";
	isOwned = 0;
	groups = 2;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_UAV_02_F", "base_foxtrot_respawn_1"},
		{"B_MBT_01_cannon_F", "base_foxtrot_respawn_2"},
		{"B_Truck_01_transport_F", "base_foxtrot_respawn_3"},
		{"B_Truck_01_transport_F", "base_foxtrot_respawn_4"}
	};
};

class base_golf
{
	name = "Base Golf";
	isOwned = 0;
	groups = 3;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_Heli_Light_01_armed_F", "base_golf_respawn_1"},
		{"B_G_Offroad_01_armed_F", "base_golf_respawn_2"},
		{"B_Truck_01_covered_F", "base_golf_respawn_3"},
		{"B_Quadbike_01_F", "base_golf_respawn_4"},
		{"B_Quadbike_01_F", "base_golf_respawn_5"}
	};
};

class base_hotel
{
	name = "Base Hotel";
	isOwned = 0;
	groups = 3;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_Heli_Light_01_F", "base_hotel_respawn_1"},
		{"B_Truck_01_covered_F", "base_hotel_respawn_2"},
		{"B_Quadbike_01_F", "base_hotel_respawn_3"},
		{"B_G_Offroad_01_armed_F", "base_hotel_respawn_4"}
	};
};

class base_india
{
	name = "Base India";
	isOwned = 0;
	groups = 2;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"I_Heli_Transport_02_F", "base_india_respawn_1"},
		{"B_G_Offroad_01_armed_F", "base_india_respawn_2"},
		{"B_G_Offroad_01_armed_F", "base_india_respawn_3"}
	};
};

class base_juliet
{
	name = "Base Juliet";
	isOwned = 0;
	groups = 2;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_Boat_Transport_01_F", "base_juliet_respawn_1"},
		{"B_Boat_Transport_01_F", "base_juliet_respawn_2"},
		{"B_SDV_01_F", "base_juliet_respawn_3"},
		{"B_SDV_01_F", "base_juliet_respawn_4"}
	};
};

class base_kilo
{
	name = "Base Kilo";
	isOwned = 0;
	groups = 2;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"B_APC_Tracked_01_CRV_F", "base_kilo_respawn_1"},
		{"B_Truck_01_covered_F", "base_kilo_respawn_2"},
		{"B_Truck_01_covered_F", "base_kilo_respawn_3"},
		{"B_Heli_Transport_01_camo_F", "base_kilo_respawn_4"}
	};
};

class base_lima
{
	name = "Base Lima";
	isOwned = 0;
	groups = 4;
	respawnGroups = 1;
	respawnTime = 300;
	vehicles[] = 
	{
		{"C_Hatchback_01_sport_F", "base_lima_respawn_1"},
		{"C_Hatchback_01_sport_F", "base_lima_respawn_2"},
		{"B_UGV_01_F", "base_lima_respawn_3"}
	};
};