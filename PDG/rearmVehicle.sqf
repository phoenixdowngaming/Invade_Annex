private ["_veh"];
_veh = _this select 0;

if (vehicle player==player) exitWith {};
if (_veh isKindOf "ParachuteBase" || !alive _veh) exitWith {};
if ((_veh isKindOf "helicopter")) exitWith 
	{ 
		_veh vehicleChat "This pad is for vehicle service only"; 
	};
	
	
_veh vehicleChat "Servicing vehicle, please wait ...";
_veh setFuel 0;
_veh vehicleChat "Re-arming ...";

sleep 6;
_veh setVehicleAmmo 1;
_veh vehicleChat "Re-armed (100%)";
_veh vehicleChat "Repairing Damage ...";

sleep 6;
_veh setDamage 0;
_veh vehicleChat "Repaired (100%)";
_veh vehicleChat "Refueling ...";
sleep 6;
_veh setFuel 1;
_veh vehicleChat "Refuelled (100%)";
sleep 1;
_veh vehicleChat "Rearm, Repairs and Refueling is complete!";