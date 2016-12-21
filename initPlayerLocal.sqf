
player enableFatigue false;
player addMPEventhandler ["MPRespawn", {player enableFatigue false}];


// Initializes Variables
_arsenalNames = [];
_arsenalDataLocal = [];
 
// Pulls data from your Profile
_arsenalData = profilenamespace getvariable ["bis_fnc_saveInventory_data",[]];
 
// Steps through the Arsenal Data pushing the entries to the array
for "_i" from 0 to (count _arsenalData - 1) step 2 do {
    _name = _arsenalData select _i;
    _arsenalDataLocal = _arsenalDataLocal + [_name,_arsenalData select (_i + 1)];
    _nul = _arsenalNames pushBack ( format[ "missionnamespace:%1", _name ] );
};
 
// Updates respawn loadouts with your Arsenal Inventory
missionnamespace setvariable ["bis_fnc_saveInventory_data",_arsenalDataLocal];
[player,_arsenalNames] call bis_fnc_setrespawninventory;
 
// This File runs locally when the player is killed, Runs the same code block as initPlayerLocal.sqf, but this iteration will include any changes you made between map start or previous death and most recent death.

#include "PDG\SHK_Fastrope.sqf"		