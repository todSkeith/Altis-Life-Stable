/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Initializes the civilian.
*/
private["_spawnPos"];
_positionArray = playerPosition;

if(_positionArray select 0 != 0) then 
{
	player setpos [_positionArray select 0, _positionArray select 1, _PositionArray select 2];
}
else
{
	civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_u_House_Big_01_V1_F","Land_u_Shop_01_V1_F","Land_i_Shop_01_V1_F"],250];
	civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_u_House_Big_01_V1_F","Land_u_Shop_01_V1_F","Land_i_Shop_01_V1_F"],250];
	civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_u_House_Big_01_V1_F","Land_u_Shop_01_V1_F","Land_i_Shop_01_V1_F"],250];
	civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_u_House_Big_01_V1_F","Land_u_Shop_01_V1_F","Land_i_Shop_01_V1_F"],250];

	waitUntil {!(isNull (findDisplay 46))};



	if(life_is_arrested) then
	{
		life_is_arrested = false;
		[player,true] spawn life_fnc_jail;
	}
		else
	{
		[] call life_fnc_spawnMenu;
		waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
		waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
	};
};

[] call life_fnc_equipGear;
[] call life_fnc_zoneCreator;
[] call life_fnc_initHouses;

if((license_civ_bh)) then {
	player setVariable ["bountyHunter", true, true];
};
player addRating 9999999;

if(_positionArray select 3) then
{
	[player, player] spawn life_fnc_unconscious;
}
else
{
	player setVariable ["unconscious", false, true];
};