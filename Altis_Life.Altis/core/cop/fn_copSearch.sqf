#include <macro.h>
/*
	File: fn_copSearch.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns information on the search.
*/
life_action_inUse = false;
private["_civ","_guns","_gun","_inv","_robber","_out","_illegal","_invs","_bleedout"];
_civ = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_invs = [_this,1,[],[[]]] call BIS_fnc_param;
_robber = [_this,2,false,[false]] call BIS_fnc_param;
_guns = [_this,3,[],[[]]] call BIS_fnc_param;
_bleedout = [_this,4,0,[0]] call BIS_fnc_param;
_illegal = 0;
_inv = "";
_gun = "";

if(isNull _civ) exitWith {};

// Format guns.
if (count _guns > 0) then {
        {
                _gun = format["%1%2<br/>", _gun, _x];
        } forEach _guns;
} else {
        _gun = "No concealed weapons";
};

_out = format["<t color='#FF0000'><t size='2'>%1</t></t><br/>", name _civ];

//Fix so medics don't search for illegals
if(side player == west && count _invs > 0) then
{
	{
		_inv = _inv + format["%1 %2<br/>",_x select 1,[([_x select 0,0] call life_fnc_varHandle)] call life_fnc_varToStr];
		_index = [_x select 0,__GETC__(sell_array)] call fnc_index;
		if(_index != -1) then
		{
			_illegal = _illegal + ((_x select 1) * ((__GETC__(sell_array) select _index) select 1));
		};
	} foreach _invs;
	if(_illegal > 6000) then
	{
		[[getPlayerUID _civ,name _civ,"482"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
	
	[[getPlayerUID _civ,name _civ,"481"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[0,format["%1 has $%2 worth of contraband on them.",name _civ,[_illegal] call life_fnc_numberText]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}
	else
{
	_inv = "No illegal items";
};

if(!alive _civ || player distance _civ > 5) exitWith {hint format["Couldn't search %1", name _civ]};

if (side player == independent) then {
	if (primaryWeapon _civ != "" || handGunWeapon _civ != "") then {
		_out = _out + "<t color='#FFFF00'><t size='1.5'>Armed</t></t><br/><br/>";
	} else {
		_out = _out + "<t color='#00AA00'><t size='1.5'>Unarmed</t></t><br/><br/>";
	};
} else {
	_out = _out + format ["<t color='#FFD700'><t size='1.5'>Illegal Items:</t></t><br/>%1<br/><br/>", _inv];
};
_out = _out + format ["<t color='#FF0000'><t size='1.5'>Concealed Weapons:</t></t><br/>%1<br/><br/>", _gun];
if (_civ getVariable ["unconscious",false]) then {
	_out = _out + format ["<t color='#FFFFFF'>Bleedout in %1 seconds.</t><br/><br/>", round (_bleedout - time)];
};

hint parseText _out;


if(_robber && side player == west) then
{
	[[0,format["%1 was identified as the bank robber!",name _civ]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
};