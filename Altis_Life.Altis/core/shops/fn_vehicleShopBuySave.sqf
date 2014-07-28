/*
	File: fn_vehicleShopBuy.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Deleting it soon enough....
*/
private["_index","_veh","_color","_price","_sp","_kill","_dir","_name","_sv","_fed","_double","_ems"];
_kill = false;
_double = false;
_ems = false;

switch(life_veh_shop) do
{
	case "civ_car_1":
	{
		_sp = getMarkerPos "civ_car_1";
		_dir = markerDir "civ_car_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then
		{
			_sp = getMarkerPos "civ_car_1_1";
			_dir = markerDir "civ_car_1_1";
		};
	};

	case "merc_1":
	{
		_sp = getMarkerPos "merc_1";
		_dir = markerDir "merc_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then
		{
			_sp = getMarkerPos "merc_1_1";
			_dir = markerDir "merc_1_1";
		};
	};

	case "merc_2":
	{
		_sp = getMarkerPos "merc_2";
		_dir = markerDir "merc_2";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],5]) > 0) then
		{
			_sp = getMarkerPos "merc_2_1";
			_dir = markerDir "merc_2_1";
		};
	};

	case "civ_car_2":
	{
		_sp = getMarkerPos "civ_car_2";
		_dir = markerDir "civ_car_2";
	};

	case "civ_car_3":
	{
		_sp = getMarkerPos "civ_car_3";
		_dir = markerDir "civ_car_3";
	};

	case "civ_car_4":
	{
		_sp = getMarkerPos "civ_car_4";
		_dir = markerDir "civ_car_4";
	};

	case "civ_servt_1":
	{
		_sp = getMarkerPos "civ_servt_1";
		_dir = markerDir "civ_servt_1";
	};

	case "cop_car_1":
	{
		_sp = getMarkerPos "cop_car_1";
		_dir = markerDir "cop_car_1";
	};

	case "cop_car_2":
	{
		_sp = getMarkerPos "cop_car_2";
		_dir = markerDir "cop_car_2";
	};

	case "cop_car_3":
	{
		_sp = getMarkerPos "cop_car_3";
		_dir = markerDir "cop_car_3";
	};

	case "cop_car_5":
	{
		_sp = getMarkerPos "cop_car_5";
		_dir = markerDir "cop_car_5";
	};

	case "fed_car":
	{
		_sp = getMarkerPos "fed_car_1";
		_dir = markerDir "fed_car_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "There is a vehicle on the spawn point."};
	};

	case "fed_air":
	{
		_sp = getMarkerPos "fed_air_1";
		_dir = markerDir "fed_air_1";
		if(count(nearestObjects[_sp,["Car","Ship","Air"],20]) > 0) exitWith {hint "There is a vehicle on the spawn point."};
	};

	case "civ_ship_1":
	{
		//if(!license_civ_boat) exitWith {_kill = true;};
		_sp = getMarkerPos "civ_ship_1";
		_dir = markerDir "civ_ship_1";
	};

	case "civ_ship_2":
	{
		_sp = getMarkerPos "civ_ship_2";
		_dir = markerDir "civ_ship_2";
	};

	case "civ_ship_3":
	{
		_sp = getMarkerPos "civ_ship_3";
		_dir = markerDir "civ_ship_3";
	};

	case "civ_air_1":
	{
		_sp = getMarkerPos "civ_air_1";
		_dir = markerDir "civ_air_1";

		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then
		{
			_sp = getMarkerPos "civ_air_1_2";
			_dir = markerDir "civ_air_1_2";
		};
	};

	case "civ_air_2":
	{
		_sp = getMarkerPos "civ_air_2";
		_dir = markerDir "civ_air_2";

		if(count(nearestObjects[_sp,["Car","Ship","Air"],2]) > 0) then
		{
			_sp = getMarkerPos "civ_car_2_2";
			_dir = markerDir "civ_car_2_2";
		};
	};

	case "civ_truck_1":
	{
		_sp = getMarkerPos "civ_truck_1";
		_dir = markerDir "civ_truck_1";
	};

	case "civ_truck_2":
	{
		_sp = getMarkerPos "civ_truck_2";
		_dir = markerDir "civ_truck_2";

		if(count(nearestObjects[_sp,["Car","Ship","Air"],3]) > 0) then
		{
			_sp = getMarkerPos "civ_truck_2_1";
			_dir = markerDir "civ_truck_2_1";
		};
	};

	case "cop_air_1":
	{
		_sp = getMarkerPos "cop_air_1";
		_dir = markerDir "cop_air_1";
	};

	case "cop_air_2":
	{
		_sp = getMarkerPos "cop_air_2";
		_dir = markerDir "cop_air_2";
	};

	case "reb_v_1":
	{
		_sp = getMarkerPos "reb_v_1";
		_dir = markerDir "reb_v_1";
	};

	case "reb_v_2":
	{
		_sp = getMarkerPos "reb_v_2";
		_dir = markerDir "reb_v_2";
	};

	case "cop_ship_1":
	{
		_sp = getMarkerPos "cop_ship_1";
		_dir = markerDir "cop_ship_1";
	};

	case "merc_heli":
	{
		_sp = getMarkerPos "merc_heli";
		_dir = markerDir "merc_heli";
	};

	case "merc_car":
	{
		_sp = getMarkerPos "merc_car";
		_dir = markerDir "merc_car";
	};

	case "medic_car_1":
	{
		_sp = getMarkerPos "medic_car_1";
		_dir = markerDir "medic_car_1";
	};
	case "medic_car_2":
	{
		_sp = getMarkerPos "medic_car_2";
		_dir = markerDir "medic_car_2";
	};
	case "medic_air_1":
	{
		_sp = getMarkerPos "medic_air_1";
		_dir = markerDir "medic_air_1";
		_ems = true;
	};
	case "medic_air_2":
	{
		_sp = getMarkerPos "medic_air_2";
		_dir = markerDir "medic_air_2";
		_ems = false;
	};
};
_index = lbCurSel 2302;
_veh = lbData[2302,_index];
if(_veh in ["B_G_Offroad_01_armed_F","B_MRAP_01_hmg_F","B_MRAP_01_F","O_MRAP_02_F"]) exitWith {hint "This vehicle cannot be bought permanently";};
if(!([_veh] call life_fnc_vehShopLicenses) && playerSide != independent) exitWith {hint "You do not have the required license!"};
_color = lbValue[2303,(lbCurSel 2303)];
_price = lbValue[2302,(lbCurSel 2302)];
if(_price < 0) exitWith {};
_price = _price * 1.5; //It's a permanent vehicle, add some bank to it!
if(life_cash < _price) exitWith {hint "You do not have enough money"};
hint "This may take a second or two.";
sleep floor(random 3);

if(count(nearestObjects[_sp,["Car","Ship","Air"],4]) > 0) exitWith {hint "There is a vehicle on the spawn point."};

_sv = false;

//EMS Heli
if(count(nearestObjects[_sp ,["Air"],23]) > 0) exitWith {hint "There is a vehicle on the spawn point."};

_sv = false;

if(_veh == "serv_truck") then
{
	_name = "Service Truck";
	_veh = "C_Offroad_01_F";
	_sv = true;
}
	else
{
	_name = getText(configFile >> "CfgVehicles" >> _veh >> "displayName");
};
hint format["You bought a %1 for $%2",_name,[_price] call life_fnc_numberText];
_vehicle = _veh createVehicle _sp;
_vehicle setVectorUp (surfaceNormal _sp);
_vehicle setPos _sp;
_vehicle setDir _dir;
_vehicle setVariable["trunk_in_use",false,true];
[_vehicle] call life_fnc_clearVehicleAmmo;

if(_sv) then
{
	[_vehicle,"service_truck",true] call life_fnc_vehicleAnimate;
	_color = 4;
};

if(_ems) then
{
	[_vehicle,"EMS_Heli",true] call life_fnc_vehicleAnimate;
};

_vehicle setVariable["vehicle_info_owners",[[getPlayerUID player,name player]],true];

life_vehicles set[count life_vehicles,_vehicle];
life_cash = life_cash - _price;

if(_veh in ["B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_F","C_Hatchback_01_sport_F","C_Offroad_01_F"] && playerSide == west || playerSide == independent) then {
	_vehicle setVariable["lights",false,true];
};

if(playerSide == west) then
{
	if(_veh == "C_Offroad_01_F") then
	{
		[_vehicle,"cop_offroad",true] call life_fnc_vehicleAnimate;
	};
};

[[_vehicle,_color],"life_fnc_colorVehicle",true,false] spawn life_fnc_MP;

[[(getPlayerUID player),playerSide,_vehicle,_color],"TON_fnc_vehicleCreate",false,false] spawn life_fnc_MP;

_vehicle lock 2;
if((life_veh_shop == "civ_air_1" OR life_veh_shop == "civ_air_2") && (typeOf _vehicle == "B_Heli_Light_01_F")) then
{
	[_vehicle,"civ_littlebird",true] call life_fnc_vehicleAnimate;
};

[1,false] call life_fnc_sessionHandle;