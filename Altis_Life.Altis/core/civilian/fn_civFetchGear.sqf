/*
	File: fn_civFetchGear.sqf
	Author: Bryan "Tonic" Boardwine 

	Description:
	Fetches specific key items from the civilian for a persistent state.
*/
private["_primary,_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_headgear","_goggles","_itemArray"];
_primitems = [];
_secitems = [];
_handgunitems = [];
_primary = primaryWeapon player;
_launcher = secondaryWeapon player;
_handgun = handGunWeapon player;
_magazines = [];
_uniform = uniform player;
_vest = vest player;
_backpack = backpack player;
_items = assignedItems player;
if(primaryWeapon player != "") then {_primitems = primaryWeaponItems player;};
if (secondaryWeapon player != "") then { _secItems = secondaryWeaponItems player; };
if(handgunWeapon player != "") then {_handgunItems = handgunItems player;};
_headgear = headgear player;
_goggles = goggles player;
_uitems = [];
_vitems = [];
_bitems = [];
_yitems = [];
_itemArray = [];
if(_uniform != "") then {{_uitems set[count _uitems,_x];} foreach (uniformItems player);};
if(_vest != "") then {{_vitems set[count _vitems,_x];} foreach (vestItems player);};
if(_backpack != "") then {{_bitems set[count _bitems,_x];} foreach (backPackItems player);};
/*this doesnt seem to do anything important
if(primaryWeapon player != "") then
{
	player selectWeapon (primaryWeapon player);

	if(currentMagazine player != "") then
	{
		_primItems = life_holstered_items;
		_magazines set[count _magazines,0];
	};

};


if(secondaryWeapon player != "") then
{
	player selectWeapon (secondaryWeapon player);
	if(currentMagazine player != "") then
	{
		 _secItems = life_holstered_items;
		_magazines set[count _magazines,0];
	};

};

if(handgunWeapon player != "") then
{
	player selectWeapon (handgunWeapon player);
	if(currentMagazine player != "") then
	{
		_handgunItems = life_holstered_items;
		_magazines set[count _magazines,0];
	};

};
player selectWeapon (primaryWeapon player);
*/

if(isNil "_primitems") then {_primitems = ["","",""];};
if(isNil "_secItems") then {_secItems = ["","",""];};
if(isNil "_handgunItems") then {_handgunItems = ["","",""];};

{
_itemArray = _itemArray + [[_x,missionNamespace getVariable [_x,0]]];
} forEach life_inv_items;

{
    _name = (_x select 0);
    _val = (_x select 1);
    if (_val > 0) then {
        for "_i" from 1 to _val do {
            _yItems = _yItems + [_name];
        };
    };
} forEach _itemArray;

civ_gear = [_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles,_yItems];
