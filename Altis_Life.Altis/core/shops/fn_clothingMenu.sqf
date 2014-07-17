/*
	File: fn_clothingMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens and initializes the clothing store menu.
	Started clean, finished messy.
*/
private["_list","_clothes","_pic","_filter"];
createDialog "Life_Clothing";
disableSerialization;
if ((vehicle player) != player) exitWith { hint "This action cannot be performed from within a vehicle." };

//Cop / Civ Pre Check
if((_this select 3) in ["bruce","dive","reb"] && playerSide == west) exitWith {hint "You need to be a civilian to use this store!"; closeDialog 0;};
if((_this select 3) == "reb" && !license_civ_rebel) exitWith {hint "You don't have rebel training yet!"; closeDialog 0;};
if((_this select 3) in ["cop","copdive"] && playerSide == civilian) exitWith {hint "You need to be a cop to use this store!"; closeDialog 0;};

life_clothing_store = _this select 3;

//License Check?
_var = [life_clothing_store,0] call life_fnc_licenseType;
if(_var select 0 != "") then
{
	if(!(missionNamespace getVariable (_var select 0))) exitWith {hint format["You need a %1 to buy from this shop!",[_var select 0] call life_fnc_varToStr]; closeDialog 0;};
};

//initialize camera view
life_shop_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
life_shop_cam cameraEffect ["Internal", "Back"];
life_shop_cam camSetTarget (player modelToWorld [0,0,1]);
life_shop_cam camSetPos (player modelToWorld [1,4,2]);
life_shop_cam camSetFOV .33;
life_shop_cam camSetFocus [50, 0];
life_shop_cam camCommit 0;

if(isNull (findDisplay 3100)) exitWith {};
_list = (findDisplay 3100) displayCtrl 3101;
_filter = (findDisplay 3100) displayCtrl 3105;
lbClear _filter;
lbClear _list;

_filter lbAdd "Clothing";
_filter lbAdd "Hats";
_filter lbAdd "Glasses";
_filter lbAdd "Vests";
_filter lbAdd "Backpacks";

_filter lbSetCurSel 0;

life_oldClothes = uniform player;
life_olduniformItems = uniformItems player;
life_oldBackpack = backpack player;
life_oldVest = vest player;
life_oldVestItems = vestItems player;
life_oldBackpackItems = backpackItems player;
life_oldGlasses = goggles player;
life_oldHat = headgear player;

waitUntil {isNull (findDisplay 3100)};
life_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy life_shop_cam;
life_clothing_filter = 0;
if(isNil "life_clothesPurchased") exitWith
{
	life_clothing_purchase = [-1,-1,-1,-1,-1];
	if(life_oldClothes != "") then {player addUniform life_oldClothes;} else {removeUniform player};
	if(life_oldHat != "") then {player addHeadgear life_oldHat} else {removeHeadgear player;};
	if(life_oldGlasses != "") then {player addGoggles life_oldGlasses;} else {removeGoggles player};

	[] call life_fnc_equipGear;
	/*	
	if ((uniform player) == "U_Rangemaster") && playerSide == west) then
	{	
		[[player,"images\Cadet_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 2) then
	{
		[[player,"images\PO_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 3) then
	{
		[[player,"images\SPO_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 4) then
	{
		[[player,"images\Corp_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 5) then
	{
		[[player,"images\Serg_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 6) then
	{
		[[player,"images\Lieut_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 7) then
	{
		[[player,"images\Capt_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 8) then
	{
		[[player,"images\SuperInt_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_Rangemaster") && (__GETC__(life_coplevel) = 9) then
	{
		[[player,"images\Chief_Uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_B_CombatUniform_mcam") then
	{
		[[player,"images\GenC.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};

	if ((uniform player) == "C_man_hunter_1_F") then
	{
		[[player,"images\ems_uni.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	if ((uniform player) == "U_C_Poloshirt_salmon") then
	{
		[[player,"images\pol3.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	if ((uniform player) == "U_C_Scientist") then
	{
		[[player,"images\mech.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	if ((uniform player) == "U_OG_Guerilla3_2") then
	{
		[[player,"images\tiee11.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	f ((uniform player) == "U_C_Poloshirt_blue") then
	{
		[[player,"images\polosts.jpg"], "life_fnc_setUniform", true, false] spawn BIS_fnc_MP;
	};
	
	
	*/

	
	
	
	if(backpack player != "") then
	{
		if(life_oldBackpack == "") then
		{
			removeBackpack player;
		}
			else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			clearAllItemsFromBackpack player;
			if(count life_oldBackpackItems > 0) then
			{
				{
					[_x,true,true] call life_fnc_handleItem;
				} foreach life_oldBackpackItems;
			};
		};
	};
	
	if(count life_oldUniformItems > 0) then
	{
		{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldUniformItems;
	};
	
	if(vest player != "") then
	{
		if(life_oldVest == "") then
		{
			removeVest player;
		}
			else
		{
			player addVest life_oldVest;
			if(count life_oldVestItems > 0) then
			{
				{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
			};
		};
	};
};
life_clothesPurchased = nil;

//Check uniform purchase.
if((life_clothing_purchase select 0) == -1) then
{
	if(life_oldClothes != uniform player) then {player addUniform life_oldClothes;};
};
//Check hat
if((life_clothing_purchase select 1) == -1) then
{
	if(life_oldHat != headgear player) then {if(life_oldHat == "") then {removeHeadGear player;} else {player addHeadGear life_oldHat;};};
};
//Check glasses
if((life_clothing_purchase select 2) == -1) then
{
	if(life_oldGlasses != goggles player) then
	{
		if(life_oldGlasses == "") then 
		{
			removeGoggles player;
		}
			else
		{
			player addGoggles life_oldGlasses;
		};
	};
};
//Check Vest
if((life_clothing_purchase select 3) == -1) then
{
	if(life_oldVest != vest player) then
	{
		if(life_oldVest == "") then {removeVest player;} else
		{
			player addVest life_oldVest;
			{[_x,true,false,false,true] call life_fnc_handleItem;} foreach life_oldVestItems;
		};
	};
};

//Check Backpack
if((life_clothing_purchase select 4) == -1) then
{
	if(life_oldBackpack != backpack player) then
	{
		if(life_oldBackpack == "") then {removeBackpack player;} else
		{
			removeBackpack player;
			player addBackpack life_oldBackpack;
			{[_x,true,true] call life_fnc_handleItem;} foreach life_oldBackpackItems;
		};
	};
};

life_clothing_purchase = [-1,-1,-1,-1,-1];