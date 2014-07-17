/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(side _unit == west || side _unit == independent) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
if(player getVariable ["restrained",false] || player getVariable ["zipTie",false] || player getVariable ["surrender",false] || player getVariable ["unconscious",false] || (animationState player == "Incapacitated")) exitWith {};
if(player distance _unit > 4) exitWith {};

//Broadcast!

_unit setVariable["restrained",true,true];
[[_unit, "zip_tie",10],"life_fnc_playSound",true,false] spawn life_fnc_MP; //Play ziptie sound because why not?
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format["%1 was restrained by %2", name _unit, name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;