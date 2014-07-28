#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "civ_car_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",75000]

		];
	};

	case "civ_car_2":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",75000]
		];
	};

	case "civ_car_3":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",75000]

		];
	};

	case "civ_car_4":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["C_Hatchback_01_F",9500],
			["C_Offroad_01_F",12500],
			["C_SUV_01_F",35000],
			["C_Van_01_transport_F",40000],
			["C_Hatchback_01_sport_F",75000]

		];
	};

	case "merc_1":
	{
		if(__GETC__(life_donator) == 0) then {

		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["C_Van_01_Fuel_F",7500],
			["B_Truck_01_box_F",250000],
			["B_Heli_Light_01_F",200000],
			["O_Heli_Light_02_unarmed_F",600000],
			["C_Hatchback_01_sport_F",50000],
			["I_Heli_Transport_02_F",1200000]
		];

		};

		if((__GETC__(life_donator) == 2) || (__GETC__(life_donator) == 1)) then
		{
			_return =
			[
				["B_Quadbike_01_F",300],
				["C_Offroad_01_F",2000],
				["C_SUV_01_F",15000],
				["C_Van_01_Fuel_F",5000],
				["B_Truck_01_box_F",165000],
				["B_Heli_Light_01_F",175000],
				["O_Heli_Light_02_unarmed_F",350000],
				["C_Hatchback_01_sport_F",35000],
				["I_Heli_Transport_02_F",750000]
			];
		};

		if(__GETC__(life_donator) >= 3) then
		{
			_return =
			[
				["B_Quadbike_01_F",150],
				["C_Offroad_01_F",1000],
				["C_SUV_01_F",8000],
				["C_Van_01_Fuel_F",3000],
				["B_Truck_01_box_F",9500],
				["B_Heli_Light_01_F",115000],
				["O_Heli_Light_02_unarmed_F",175000],
				["C_Hatchback_01_sport_F",16000],
				["I_Heli_Transport_02_F",480000]
			];
		};
	};

	case "merc_2":
	{
		if(__GETC__(life_donator) == 0) then {

		_return =
		[
			["B_Quadbike_01_F",500],
			["C_Offroad_01_F",2500],
			["C_SUV_01_F",20000],
			["C_Van_01_Fuel_F",7500],
			["B_Truck_01_box_F",250000],
			["B_Heli_Light_01_F",200000],
			["O_Heli_Light_02_unarmed_F",600000],
			["C_Hatchback_01_sport_F",50000],
			["I_Heli_Transport_02_F",1200000]
		];

		};

		if((__GETC__(life_donator) == 2) || (__GETC__(life_donator) == 1)) then
		{
			_return =
			[
				["B_Quadbike_01_F",300],
				["C_Offroad_01_F",2000],
				["C_SUV_01_F",15000],
				["C_Van_01_Fuel_F",5000],
				["B_Truck_01_box_F",165000],
				["B_Heli_Light_01_F",175000],
				["O_Heli_Light_02_unarmed_F",350000],
				["C_Hatchback_01_sport_F",35000],
				["I_Heli_Transport_02_F",750000]
			];
		};

		if(__GETC__(life_donator) >= 3) then
		{
			_return =
			[
				["B_Quadbike_01_F",150],
				["C_Offroad_01_F",1000],
				["C_SUV_01_F",8000],
				["C_Van_01_Fuel_F",3000],
				["B_Truck_01_box_F",9500],
				["B_Heli_Light_01_F",115000],
				["O_Heli_Light_02_unarmed_F",175000],
				["C_Hatchback_01_sport_F",16000],
				["I_Heli_Transport_02_F",480000]
			];
		};
	};

	case "civ_servt_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000] //Service Truck
		];
	};

	case "civ_truck_1":
	{
		_return =
		[
			["C_Offroad_01_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["B_Truck_01_box_F",375000]
		];
	};

	case "civ_truck_2":
	{
		_return =
		[
			["C_Offroad_01_F",15000],
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",200000],
			["B_Truck_01_box_F",375000]
		];
	};

	case "reb_v_1":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]
		];

		if(license_civ_rebel) then
		{
			//_return set[count _return,
			//["O_MRAP_02_F",175000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};

	case "reb_v_2":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",15000],
			["B_Heli_Light_01_F",325000]
		];

		if(license_civ_rebel) then
		{
			//_return set[count _return,
			//["O_MRAP_02_F",175000]];
			_return set[count _return,
			["B_G_Offroad_01_armed_F",750000]];
		};
	};

	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",2500],
			["B_G_Offroad_01_F",13000]
		];
	};

	case "reb_car2":
	{
		_return set[count _return,
		["B_Quadbike_01_F",2500]];
		_return set[count _return,
		["C_Offroad_01_F",9000]];
	};

	case "reb_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",275000]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",350000]];
	};

	case "medic_car_1":
	{
		_return set[count _return,
		["C_SUV_01_F",14000]];
		_return set[count _return,
		["C_Hatchback_01_F",8000]];

	};
	
	case "medic_car_2":
	{
		_return set[count _return,
		["C_SUV_01_F",14000]];
		_return set[count _return,
		["C_Hatchback_01_F",8000]];

	};

	case "medic_air_1":
	{
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",150000]];
		_return set[count _return,
		["B_Heli_Light_01_F",60000]];

	};
	
	case "medic_air_2":
	{
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",150000]];
		_return set[count _return,
		["B_Heli_Light_01_F",60000]];

	};

	case "cop_car_1":
	{
		_return set[count _return,
		["C_Hatchback_01_F",9000]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];

		if((__GETC__(life_coplevel) > 4) && (__GETC__(life_adminlevel) = 0)) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
		};

		if((__GETC__(life_coplevel) > 4) && (__GETC__(life_adminlevel) > 0)) then
		{
			_return set[count _return,
			["B_MRAP_01_F",15000]];
		};
		
		if(__GETC__(life_donator) < 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
		};
	};

	case "cop_car_2":
	{
		_return set[count _return,
		["C_Hatchback_01_F",9000]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
		};
		if(__GETC__(life_adminlevel) > 0) then
		{
			_return set[count _return,
			["B_MRAP_01_F",15000]];
		};
		if(__GETC__(life_donator) < 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
		};
	};

	case "cop_car_3":
	{
		_return set[count _return,
		["C_Hatchback_01_F",9000]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
		};
		if(__GETC__(life_adminlevel) > 0) then
		{
			_return set[count _return,
			["B_MRAP_01_F",15000]];
		};
		if(__GETC__(life_donator) < 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
		};
	};

	case "cop_car_5":
	{
		_return set[count _return,
		["C_Hatchback_01_F",9000]];
		_return set[count _return,
		["C_Offroad_01_F",5000]];
		_return set[count _return,
		["C_SUV_01_F",20000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["B_MRAP_01_F",50000]];
		};
		if(__GETC__(life_adminlevel) > 0) then
		{
			_return set[count _return,
			["B_MRAP_01_F",15000]];
		};
		if(__GETC__(life_donator) < 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",35000]];
		};
		if(__GETC__(life_donator) > 2) then
		{
			_return set[count _return,["C_Hatchback_01_sport_F",10000]];
		};
	};

	case "fed_car":
	{
		_return set[count _return,
		["B_Quadbike_01_F",0]];
		_return set[count _return,
		["C_Offroad_01_F",0]];
		_return set[count _return,
		["B_MRAP_01_F",0]];
		_return set[count _return,
		["I_MRAP_03_F",0]];
		_return set[count _return,
		["I_Truck_02_covered_F",0]];
		_return set[count _return,
		["I_Truck_02_transport_F",0]];
		_return set[count _return,
		["B_Truck_01_covered_F",0]];
		_return set[count _return,
		["B_Truck_01_transport_F",0]];
	};

	case "fed_air":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",0]];
		_return set[count _return,
		["O_Heli_Light_02_unarmed_F",0]];
		_return set[count _return,
		["B_Heli_Transport_01_F",0]];
		_return set[count _return,
		["I_Heli_Transport_02_F",0]];
	};

	case "civ_air_1":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",1800000]
		];
	};

	case "civ_air_2":
	{
		_return =
		[
			["B_Heli_Light_01_F",253000],
			["O_Heli_Light_02_unarmed_F",750000],
			["I_Heli_Transport_02_F",1800000]
		];
	};

	case "cop_air_1":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",50000]];
		};
		if(__GETC__(life_adminlevel) > 0) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",20000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",20000]];
		};

	};

	case "cop_air_2":
	{
		_return set[count _return,
		["B_Heli_Light_01_F",75000]];
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",200000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_return set[count _return,
			["B_Heli_Transport_01_F",50000]];
		};
		if(__GETC__(life_adminlevel) > 0) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",20000]];
			_return set[count _return,
			["B_Heli_Transport_01_F",20000]];
		};
	};

	case "civ_ship_1":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "civ_ship_2":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "civ_ship_3":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship_1":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};

	case "cop_ship_2":
	{
		_return =
		[
			["B_Boat_Transport_01_F",3000],
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000]
		];
	};

	case "donator_heli":
	{
		_return =
		[
			["B_Heli_Light_01_F",100000],
			["O_Heli_Light_02_unarmed_F",175000],
			["I_Heli_Transport_02_F",650000]
		];
	};

	case "donator_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1300],
			["C_Offroad_01_F",6500],
			["C_Hatchback_01_sport_F",10000],
			["C_SUV_01_F",20000],
			["C_Van_01_fuel_F",7500]
		];
	};
};

_return;
