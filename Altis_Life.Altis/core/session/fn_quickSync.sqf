/*
	File: fn_quickSync.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sends the quick update. ONLY WORKS WITH PLAYER POS RIGHT NOW.
*/
private["_packet"];
_paramName = [_this,0,"",[""]] call BIS_fnc_param;
_param = [_this,1,[],[[]]] call BIS_fnc_param;

//if (_param == "") exitWith{}; //empty
_packet = [player,name player,playerSide,getPlayerUID player,_paramName,_param];
switch (playerSide) do
{
	case civilian:
	{
		[_packet,"TON_fnc_quickUpdate",false,false] spawn BIS_fnc_MP;
	};

};
//[_packet,"TON_fnc_quickUpdate",false,false] spawn life_fnc_MP;
/*
_paramName = "playerPosition";
_param = [(getpos player select 0),(getpos player select 1), 0];
_param set [count _param, player getvariable "unconscious"];
_packet = [player,name player,playerSide,getPlayerUID player,_paramName,_param];
[_packet] call TON_fnc_quickUpdate;
*/