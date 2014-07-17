/*
	File: fn_packupRoadcones.sqf
	Author: skeith
	
	Description:
	Packs up the nearest Roadblock.
*/

private["_barrier1","_barrier2"];
_barrier1 = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
_barrier2 = nearestObjects[getPos player,["RoadBarrier_F"],8] select 1;
if(isNil "_barrier1") then {};

if([true,"RoadBlockWood",1] call life_fnc_handleInv) then
{
	titleText["You have removed the Road Block.","PLAIN"];
	player removeAction life_action_barrierPickup;
	life_action_barrierPickup = nil;
	deleteVehicle _barrier1;	
	deleteVehicle _barrier2;
};