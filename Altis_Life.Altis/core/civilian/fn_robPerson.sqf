/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Getting tired of adding descriptions...
*/
private["_robber"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

[] spawn {
	_target setVariable["robbed",true,true];
	sleep (60 * 15);
};

[[life_cash],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;

if(life_cash > 0) then
{
	hint parseText format["You have been robbed.<br/>%1 has stolen $%2.",_robber,[life_cash] call life_fnc_numberText];
	[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	life_cash = 0;
	[] call life_fnc_p_updateMenu;
};