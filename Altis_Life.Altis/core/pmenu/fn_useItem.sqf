/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint "You need to select an item first!";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};

	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText["You can now run farther for 3 minutes","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};

	case(_item ==  "crowbar"):
	{
			[] spawn life_fnc_crowbar;
	};

	case (_item == "lethal"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_lethal;
		};
	};

	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_drugeffect_her;
		};
	};

	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint "You can't refuel the vehicle while in it!"};
		[] spawn life_fnc_jerryRefuel;
	};

	case (_item == "marijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_drugeffect_mar;
		};
	};
	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			player setFatigue 0;
			[] spawn life_fnc_drugeffect_coc;
			[] spawn
						{
							life_cocaine_effect = time;
							titleText["You can now run farther for 4 minutes","PLAIN"];
							player enableFatigue false;
							waitUntil {!alive player OR ((time - life_cocaine_effect) > (4 * 60))};
							player enableFatigue true;
						};
		};
	};
	case (_item == "moonshine"):
        {
                if(([false,_item,1] call life_fnc_handleInv)) then
                {
                        [] spawn life_fnc_drugeffect_alc;
                };
	};
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};

	case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case "fishing":
	{
		[] spawn fnc_fishing;
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};

	case (_item == "crabpot"):
	{
		[] spawn life_fnc_crabpot;
	};

	case (_item == "chainsaw"):
	{
		[] spawn life_fnc_chainsaw;
	};

	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint "You already have a Spike Strip active in deployment"};
		if((player getVariable "unconscious")) exitWith {};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};

	case (_item == "RoadCone"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Roadcone active in deployment"};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if (player getVariable "unconscious") exitWith {};
			if(([false,_item,1] call life_fnc_handleInv)) then {
				[] spawn life_fnc_RoadCone;
			};
		};
		//if civ check for rebel license otherwise deny use of item
		if(playerSide != west) then {
			if (player getVariable "unconscious") exitWith {};
			if(!(license_civ_rebel)) then {hint "You need a rebel license to use this item"}
			else {
				if (player getVariable "unconscious") exitWith {};
				if(([false,_item,1] call life_fnc_handleInv)) then {
					[] spawn life_fnc_RoadCone;
				};
			};
		};
	};
		case (_item == "RoadConeStrip"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Roadcone Strip active in deployment"};
		if (player getVariable "unconscious") exitWith {};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then {
				[] spawn life_fnc_RoadConeStrip;
			};
		};
		//if civ check for rebel license otherwise deny use of item
		if(playerSide != west) then {
			if(!(license_civ_rebel)) then {hint "You need a rebel license to use this item"}
			else {
				if(([false,_item,1] call life_fnc_handleInv)) then {
					[] spawn life_fnc_RoadConeStrip;
				};
			};
		};
	};
		case (_item == "RoadConeB"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Blinking Roadcone active in deployment"};
		if (player getVariable "unconscious") exitWith {};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then {
				[] spawn life_fnc_RoadConeB;
			};
		};
		//if civ check for rebel license otherwise deny use of item
		if(playerSide != west) then {
			if(!(license_civ_rebel)) then {hint "You need a rebel license to use this item"};
			if (player getVariable "unconscious") exitWith {}
			else {
				if(([false,_item,1] call life_fnc_handleInv)) then {
					[] spawn life_fnc_RoadConeB;
				};
			};
		};
	};
		case (_item == "RoadConeStripB"):
	{
		if(!isNull life_roadcone) exitWith {hint "You already have a Blinking Roadcone Strip active in deployment"};
		if (player getVariable "unconscious") exitWith {};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then {
				[] spawn life_fnc_RoadConeStripB;
			};
		};
		//if civ check for rebel license otherwise deny use of item
		if(playerSide != west) then {
			if(!(license_civ_rebel)) then {hint "You need a rebel license to use this item"}
			else {if (player getVariable "unconscious") exitWith {};
				if(([false,_item,1] call life_fnc_handleInv)) then {
					[] spawn life_fnc_RoadConeStripB;
				};
			};
		};
	};

	case (_item == "RoadBlockWood"):
	{
		if(!isNull life_roadblock) exitWith {hint "You already have a Road Block active in deployment"};
		if (player getVariable "unconscious") exitWith {};
		//if cop override and allow use of item
		if(playerSide == west) then {
			if(([false,_item,1] call life_fnc_handleInv)) then {
				[] spawn life_fnc_RoadBlockWood;
			};
		};
		//if civ check for rebel license otherwise deny use of item
		if(playerSide != west) then {
			if(!(license_civ_rebel)) then {hint "You need a rebel license to use this item"}
			else {if (player getVariable "unconscious") exitWith {};
				if(([false,_item,1] call life_fnc_handleInv)) then {
					[] spawn life_fnc_RoadBlockWood;
				};
			};
		};
	};

	case (_item in ["storage1","storage2"]):
    {
        [_item] call life_fnc_placeStorage;
    };

	default
	{
		hint "This item isn't usable.";
	};
};


[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;
