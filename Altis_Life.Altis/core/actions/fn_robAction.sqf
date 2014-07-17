/*
	File: fn_robAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the robbing process?
*/
private["_target"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _unit > 4) exitWith {};

if(_target getVariable["robbed",false]) exitWith {};
[[player],"life_fnc_robPerson",_target,false] spawn life_fnc_MP;