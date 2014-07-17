/*
	File: fn_pulloutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls civilians out of a car if it's stopped.
*/
private["_veh","_crew","_good"];
_veh = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_crew = crew _veh;
_good = [];

switch (playerSide) do {
	case west:			{ _good = [west,independent]; };
	case independent:	{ _good = [independent,west]; };
	case civilian:		{ _good = units group player; };
};	
		
{
	if((!(side _x in _good) && !(_x in _good)) || (_x getVariable ["unconscious",false])) then {
		_x setVariable ["transporting",false,true];
		_x setVariable ["Escorting",false,true];
		[[],"life_fnc_pulloutVeh",_x,false] spawn life_fnc_MP;
	};
} foreach _crew;