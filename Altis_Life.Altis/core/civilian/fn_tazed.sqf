/*
	File: fn_tazed.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
private["_unit","_shooter","_curWep","_curMags","_attach"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_istazed = false;};

if(_shooter isKindOf "Man" && alive player) then
{
	if(!life_istazed) then
	{
		life_istazed = true;
		player setAmmo[currentWeapon player, 0];
		
		[[_unit],"life_fnc_tazeSound",true,false] spawn life_fnc_MP;
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _unit);
		_obj setPosATL (getPosATL _unit);
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		//[[_unit,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"fnc_animsync",true,false] spawn life_fnc_MP;
		[[0,format["%1 was tazed by %2", name _unit, name _shooter]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_unit attachTo [_obj,[0,0,0]];
		disableUserInput true;
		sleep 15;
		if (!(player getVariable["restrained",false])) then {
            [[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
        };
		if(!(player getVariable["Escorting",false])) then {
			detach player;
		};
		life_istazed = false;
		player allowDamage true;
		disableUserInput false;
	};
}
	else
{
	_unit allowDamage true;
	life_istazed = false;
};