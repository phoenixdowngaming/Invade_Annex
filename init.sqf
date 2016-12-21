/***********************************************************\
	LEAVE THESE BE AND THE REST OF THE FILE IS YOURS!

	*/
		debugMode = false;

		enableSaving [false, false];
		if (isServer) exitWith { [] execVM "init\server.sqf"; };
		_settings = player execVM "init\player.sqf"; waitUntil { scriptDone _settings };
	/*

	YE-ARGH! THANK YE!
\***********************************************************/
call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";

[] execVM "PDG\xian_ai_act.sqf";
[] execvm "PDG\injured.sqf";
[] execVM "PDG\zlt_fieldrepair.sqf";
[] execVM "PDG\sa_ropes.sqf";
