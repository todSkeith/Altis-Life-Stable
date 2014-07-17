/*
	File: fn_virt_menu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initialize the virtual shop menu.
*/
if ((vehicle player) != player) exitWith { hint "This action cannot be performed from within a vehicle." };
if ((player distance cursorTarget) > 7) exitWith { hint "You are too far away." };

private["_shop"];
_shop = _this select 3;
if(isNil {_shop}) exitWith {};
life_shop_type = _shop;
life_shop_npc = _this select 0;
if(_shop == "cop" && playerSide != west) exitWith {hint "You are not a cop."};
createDialog "shops_menu";

[] call life_fnc_virt_update;