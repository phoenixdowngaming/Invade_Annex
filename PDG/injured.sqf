


if (isServer) then {
//by Larrow
Lar_fnc_setunconscious = {
	params[ "_unit" ];
[ _unit, true ] remoteExec [ "setUnconscious", _unit ];
	
};

Lar_fnc_wake = {
	params[ "_unit" ];
[ _unit, false ] remoteExec [ "setUnconscious", _unit ];
	
};

};

sleep 1;


//function injured 
fnc_injured = { 
     private ["_unit"];
	_unit = _this select 0;

//change chance between hit react and unconscious 
_chance = random 5;
if (_chance == 1) then {
	
     _unit removeAllMPEventHandlers "MPHit";

	_unit forceSpeed 10;
	_unit setBehaviour "COMBAT";
		
	if ( (!isNull _unit) && (unitPos _unit != "DOWN") ) then 
	{
		_rnd = [0,1,2,3,4] call BIS_fnc_selectRandom;		
if (_rnd == 0) then {_unit switchmove "AmovPercMevaSrasWrflDfl_AmovPknlMstpSrasWrflDnon";};			
if (_rnd == 1) then {_unit switchmove "AmovPercMevaSrasWrflDfr_AmovPknlMstpSrasWrflDnon";};			
if (_rnd == 2) then {_unit switchmove "AmovPercMrunSlowWrflDf_AmovPpneMstpSrasWrflDnon_old";};			
if (_rnd == 3) then {_unit switchmove "AmovPercMevaSrasWrflDf_AmovPknlMstpSrasWrflDnon";};			
if (_rnd == 4) then {_unit switchmove "AmovPercMstpSrasWrflDnon_AadjPpneMstpSrasWrflDright";};			

        _unit forceSpeed -1;
		_unit setBehaviour "COMBAT";
		sleep 5;
		_unit switchmove "";			

		};
	
} else {	
	

    _unit removeAllMPEventHandlers "MPHit";
	_unit removeAllMPEventHandlers "MPKilled";

[_unit] joinSilent grpNull;

[ _unit ] remoteExec [ "Lar_fnc_setunconscious", 2 ];

//add hit sounds here
_hitSound = [
"Hit1", "Hit2", "Hit3", "Hit4", "Hit5", "Hit6", "Hit7", "Hit8", "Hit9", "Hit10"
] call BIS_fnc_selectRandom;

_unit say3D [_hitSound, 100, 1];


_unit addMPEventHandler ["MPKilled", {_this execVM "scripts\killer.sqf"}]; 

sleep 3;

_anim = [
"UnconsciousReviveArms_A","UnconsciousReviveArms_B","UnconsciousReviveArms_C","UnconsciousReviveBody_A",
"UnconsciousReviveBody_B","UnconsciousReviveDefault_A","UnconsciousReviveDefault_B","UnconsciousReviveHead_A",
"UnconsciousReviveHead_B","UnconsciousReviveHead_C","UnconsciousReviveLegs_A","UnconsciousReviveLegs_B"
 ] call bis_fnc_selectRandom;


_null = [_unit, _anim] spawn inCap;

//play sounds while man is injured, not dead
//change sleep time numbers to play sound loop time
while {(alive _unit)} do {

//change sound play loop time here
sleep (10 + random 20);

_ls = lifeState _unit;

if (_ls != "INCAPACITATED") exitWith {};

//add in pain sound here	
_sound = [
"pain1", "pain2", "pain3", "pain4", "pain5", "pain6", "pain7", "pain8", "pain9", "pain10", "pain11", "pain12", "pain13"
] call BIS_fnc_selectRandom;

_unit say3D [_sound, 100, 1];

sleep (10 + random 20);
	
};
	
	};


};


sleep 1;

// remove bandages from ais
if (isServer) then {

{
	if (!isplayer _x) then {
	
	_x removeItems "FirstAidKit";

};

} forEach allUnits;

};



sleep 3;


//******* IMPORTANT NOTE ****\\\\\\\\\\\
//look for number 70 means 70% chance to ai get injured and Unconscious instead dead.you can change it to increase or decrease Unconscious chance.
// ( min value 1 - max value 100 )
/////////////////////////////////////////////////////

_units = [];

while { (true) } do {

{



		
		 if ((_x isKindOf "Man") && (!isplayer _x)) then
            {
				_uls = lifeState _x;
				

            if ((_uls != "INCAPACITATED") &&
			   !(_x getVariable ["MBG_ready",false])) then 
			   {
				_units pushBack _x; 
				
				_x removeAllMPEventHandlers "MPHit";
				_x setVariable ["MBG_ready",true];

				call compile format[" 
			%1 addMPEventHandler ['MPHit',{
				if (vehicle %1 == %1) then {
					_rand = random 100;
					
					if (_rand < 70) then {
						[%1] spawn fnc_injured;
					};
				};
			}]
 	",[_x] call BIS_fnc_objectVar];
	};
	
	};
	
} forEach allUnits;

sleep 10;

};








