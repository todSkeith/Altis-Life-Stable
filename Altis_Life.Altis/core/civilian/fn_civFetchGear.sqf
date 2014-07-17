/*
	File: fn_civFetchGear.sqf
	Author: Bryan "Tonic" Boardwine 

	Description:
	Fetches specific key items from the civilian for a persistent state.
*/
private["_primary,_launcher","_handgun","_magazines","_uniform","_vest","_backpack","_items","_primitems","_secitems","_handgunitems","_uitems","_vitems","_bitems","_headgear","_goggles"];
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
*/

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

if(isNil "_primitems") then {_primitems = ["","",""];};
if(isNil "_secItems") then {_secItems = ["","",""];};
if(isNil "_handgunItems") then {_handgunItems = ["","",""];};

{
    _name = (_x select 0);
    _val = (_x select 1);
    if (_val > 0) then {
        for "_i" from 1 to _val do {
            _yItems = _yItems + [_name];
        };
    };
} forEach [
    ["life_inv_apple",life_inv_apple],["life_inv_rabbit",life_inv_rabbit],["life_inv_salema",life_inv_salema],["life_inv_ornate",life_inv_ornate],
    ["life_inv_mackerel",life_inv_mackerel],["life_inv_tuna",life_inv_tuna],["life_inv_mullet",life_inv_mullet],["life_inv_catshark",life_inv_catshark],
    ["life_inv_fishingpoles",life_inv_fishingpoles],["life_inv_water",life_inv_water],["life_inv_donuts",life_inv_donuts],["life_inv_turtlesoup",life_inv_turtlesoup],
    ["life_inv_coffee",life_inv_coffee],["life_inv_fuelF",life_inv_fuelF],["life_inv_fuelE",life_inv_fuelE],["life_inv_pickaxe",life_inv_pickaxe],
    ["life_inv_tbacon",life_inv_tbacon],["life_inv_lockpick",life_inv_lockpick],["life_inv_redgull",life_inv_redgull],["life_inv_peach",life_inv_peach],
    ["life_inv_chainsaw",life_inv_chainsaw],["life_inv_crowbar",life_inv_crowbar],["life_inv_lethal",life_inv_lethal],["life_inv_spikestrip",life_inv_spikeStrip],["life_inv_log",life_inv_log],
    ["life_inv_lumber",life_inv_lumber],["life_inv_oilu",life_inv_oilu],["life_inv_oilp",life_inv_oilp],["life_inv_heroinu",life_inv_heroinu],["life_inv_heroinp",life_inv_heroinp],
    ["life_inv_cannabis",life_inv_cannabis],["life_inv_marijuana",life_inv_marijuana],["life_inv_turtlesoup",life_inv_turtlesoup],["life_inv_copperore",life_inv_copperore],
    ["life_inv_ironore",life_inv_ironore],["life_inv_ironr",life_inv_ironr],["life_inv_copperr",life_inv_copperr],["life_inv_goldore",life_inv_goldore],["life_inv_goldr",life_inv_goldr],
    ["life_inv_sand",life_inv_sand],["life_inv_salt",life_inv_salt],["life_inv_saltr",life_inv_saltr],["life_inv_glass",life_inv_glass],["life_inv_diamond",life_inv_diamond],
    ["life_inv_diamondr",life_inv_diamondr],["life_inv_coke",life_inv_coke],["life_inv_cokep",life_inv_cokep],["life_inv_rock",life_inv_rock],["life_inv_cement",life_inv_cement],
    ["life_inv_zip",life_inv_zip],["life_inv_goldbar",life_inv_goldbar],["life_inv_corn",life_inv_corn],["life_inv_moonshine",life_inv_moonshine],["life_inv_fcrab",life_inv_fcrab],
    ["life_inv_fcrabp",life_inv_fcrabp],["life_inv_mcrabs",life_inv_mcrabs],["life_inv_mcrab",life_inv_mcrab],["life_inv_crabpot",life_inv_crabpot],["life_inv_coalore",life_inv_coalore],
    ["life_inv_steel",life_inv_steel],["life_inv_defib",life_inv_defib],["life_inv_cellphone",life_inv_cellphone],["life_inv_RoadConeStrip",life_inv_RoadConeStrip],["life_inv_RoadCone",life_inv_RoadCone],
    ["life_inv_RoadBlockWood",life_inv_RoadBlockWood],["life_inv_storage1",life_inv_storage1],["life_inv_storage2",life_inv_storage2]
];

civ_gear = [_primary,_launcher,_handgun,_magazines,_uniform,_vest,_backpack,_items,_primitems,_secitems,_handgunitems,_uitems,_vitems,_bitems,_headgear,_goggles,_yItems];
