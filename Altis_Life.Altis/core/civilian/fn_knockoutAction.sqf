/*
	File: fn_knockoutAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Knocks out the target.
*/
private["_target"];
_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if(isNull _target) exitWith {};
if(!isPlayer _target) exitWith {};
if(player distance _target > 4) exitWith {};
if(player getVariable ["restrained",false] || player getVariable ["zipTie",false] || player getVariable ["surrender",false] || player getVariable ["unconscious",false] || (animationState player == "Incapacitated")) exitWith {};

life_knockout = true;
[[player,"AwopPercMstpSgthWrflDnon_End2"],"life_fnc_animSync",nil,false] spawn life_fnc_MP;
sleep 0.08;
[[_target,name player],"life_fnc_knockedOut",_target,false] spawn life_fnc_MP;
[[getPlayerUID player,name player,"242"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
sleep 3;
life_knockout = false;