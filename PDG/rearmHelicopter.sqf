private ["_veh"];
_veh = _this select 0;

if (vehicle player==player) exitWith {};
if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};
if (!(_veh isKindOf "helicopter")) exitWith 
	{ 
		_veh vehicleChat "This pad is for helicopter service only"; 
	};
	
	
_veh vehicleChat "Servicing aircraft, please wait ...";
_veh setFuel 0;
sleep 5;
_veh vehicleChat "Re-arming ...";
_veh setVehicleAmmo 1;
_veh vehicleChat "Re-armed (100%)";
sleep 5;
_veh vehicleChat "Repairing ...";
_veh setDamage 0;
_veh vehicleChat "Repaired (100%)";
sleep 5;
_veh vehicleChat "Refueling ...";
sleep 5;
_veh setFuel 1;
_veh vehicleChat "Refuelled (100%)";







	
	
	
	
	
	