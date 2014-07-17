/*
	Pushing boat when beached
	Author: Egypt~Seal
*/


private ["_Object","_caller","_isWater"];
_Object = cursorTarget;
_caller = player;
_isWater = surfaceIsWater position _caller; 
if (_isWater) exitwith {titleText ["You can't push from in the water","PLAIN DOWN",1];};
_Object setOwner (owner _caller);
_caller playMove "AmovPercMstpSnonWnonDnon_AinvPercMstpSnonWnonDnon_Putdown";
if (currentWeapon _caller == "") then {sleep 1;} else {sleep 2;};
_Object setVelocity [(sin(direction _caller))*4, (cos(direction _caller))*4, 0];  

waituntil{sleep 2;_player};