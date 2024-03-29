//////////////////////////////////////////////////////////////////
// Created by: Tonic Adapted by STS Dev Team
// Function Name: configuration.sqf
// Description: Setups vaiable for the client, and there are still other configFiles in the system.
//////////////////////////////////////////////////////////////////


#include <macro.h>
/*
*****************************
****** Backend Variables *****
*****************************
*/
life_houses_markers = [];
life_public_houses = [
    "1119182",
    "1575036",
    "1815646"
];
HOUSING_DONATOR_LEVEL = 0;
life_disable_actions = false;
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_Horn_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_holster_time = 0;
life_impound_inuse = false;
life_show_actions = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 35;
life_has_insurance = false;
life_knockout = false;
life_bHunter = false;
life_show_actions = false;
life_action_time = 0;
life_action_inUse = false;
life_action_index = [];
life_actions = [];
life_roadblock = ObjNull;
life_roadcone = ObjNull;
life_isUnconscious = false;
life_god = false;
holstered = false;



//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
life_abort_enabled = false; // If true, can't abort
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_holstered = false;
life_paycheck_period = 5; //Five minutes
life_rent_period = 30; // 30 minutes
life_cash = 0;
life_impound_car = 350;
life_impound_boat = 250;
life_impound_air = 850;
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];

switch (playerSide) do
{
	case west:
	{
		life_atmcash = 35000; //Starting Bank Money
		life_paycheck = 500; //Paycheck Amount
	};
	case civilian:
	{
		life_atmcash = 35000; //Starting Bank Money
		life_paycheck = 350; //Paycheck Amount
		life_rent = 15000;
	};
	case independent:
	{
		life_atmcash = 35000; //Starting Bank Money
		life_paycheck = 1000; //Paycheck Amount
	}
};

/*
	Master Array of items?
*/
life_inv_items =
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_goldore",
	"life_inv_goldr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_zip",
	"life_inv_corn",
	"life_inv_moonshine",
	"life_inv_corona",
	"life_inv_landshark",
	"life_inv_coorslights",
	"life_inv_budweiser",
	"life_inv_goldbar",
	"life_inv_fcrab",
	"life_inv_fcrabp",
	"life_inv_mcrabs",
	"life_inv_mcrab",
	"life_inv_crabpot",
	"life_inv_coalore",
	"life_inv_steel",
	"life_inv_defib",
	"life_inv_log",
	"life_inv_lumber",
	"life_inv_chainsaw",
	"life_inv_cellphone",
	"life_inv_RoadCone",
	"life_inv_RoadConeStrip",
	"life_inv_RoadBlockWood",
	"life_inv_storage1",
    "life_inv_storage2",
    "life_inv_crowbar",
    "life_inv_lethal"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_moonshine","civ"],
	["license_civ_gold","civ"],
	["license_civ_cement","civ"],
	["license_civ_crabbing","civ"],
	["license_civ_steel","civ"],
	["license_civ_bh","civ"],
	["license_civ_logging","civ"],
	["license_medic_air","medic"],
	["license_civ_home", "civ"],
	["license_civ_c3", "civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];

//[shortVar,reward]
life_illegal_items = [
				["heroinu",1200],
				["heroinp",2500],
				["cocaine",1500],
				["cocainep",3500],
				["marijuana",2000],
				["turtle",3000],
				["moonshine",950],
				["cannabis",2000],
				["fcrabp",3000],
				["mcrabs",700]
				];


/*
	Sell / buy arrays
*/
sell_array =
[
	["apple",12],
	["heroinu",900],
	["heroinp",2350],
	["salema",45],
	["ornate",40],
	["mackerel",175],
	["tuna",1100],
	["mullet",250],
	["catshark",300],
	["rabbit",65],
	["oilp",1875],
	["turtle",3255],
	["water",5],
	["coffee",5],
	["turtlesoup",1000],
	["donuts",50],
	["marijuana",650],
	["tbacon",25],
	["lockpick",250],
	["zip",300],
	["pickaxe",750],
	["redgull",200],
	["peach",24],
	["cocaine",1525],
	["cocainep",3000],
	["diamond",335],
	["diamondc",1750],
	["iron_r",1500],
	["copper_r",700],
	["gold_r",2000],
	["salt_r",725],
	["glass",900],
	["fuelF",500],
	["spikeStrip",1200],
	["moonshine",750],
	["cement",1450],
	["fcrab",400],
	["mcrab",700],
	["fcrabp",2000],
	["mcrabs",550],
	["steel",4350],
	["lumber",15000],
	["RoadConeStrip",500],
	["RoadCone",75],
	["RoadBlockWood",750],
	["lethal", 15000]
];

__CONST__(sell_array,sell_array);

buy_array =
[
	["apple",65],
	["rabbit",75],
	["salema",55],
	["ornate",50],
	["mackerel",200],
	["tuna",1500],
	["mullet",300],
	["catshark",350],
	["water",10],
	["turtle",4000],
	["turtlesoup",2500],
	["donuts",50],
	["coffee",10],
	["tbacon",75],
	["lockpick",550],
	["zip",800],
	["pickaxe",1200],
	["redgull",1500],
	["fuelF",850],
	["peach",68],
	["spikeStrip",2500],
	["corona",75],
	["landshark",75],
	["coorslight",75],
	["budweiser",75],
	["crabpot",500],
	["defib",3500],
	["chainsaw",5000],
	["RoadConeStrip",750],
	["RoadCone",150],
	["RoadBlockWood",1500],
	["moonshine", 950],
//	["storage1",50000],
    ["storage2",100000],
    ["crowbar", 15000],
    ["lethal", 55000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["Binocular",50],
	["ItemGPS",45],
	["ToolKit",50],
	["FirstAidKit",25],
	["Medikit",50],
	["NVGoggles",350],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",15],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["30Rnd_65x39_caseless_green",50],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["20Rnd_762x51_Mag",100000],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_QuadBike_01_F",550],
	["C_Hatchback_01_F",1500],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",5250],
	["C_Van_01_transport_F",7890],
	["C_Hatchback_01_sport_F",2350],
	["C_Van_01_fuel_F",4500],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",9000],
	["I_Truck_02_transport_F",12000],
	["I_Truck_02_covered_F",14500],
	["B_Truck_01_transport_F",25650],
	["B_Truck_01_box_F", 35000],
	["O_MRAP_02_F",45000],
	["C_Rubberboat",400],
	["C_Boat_Civil_01_F",4500],
	["B_Boat_Transport_01_F",450],
	["C_Boat_Civil_01_police_F",3500],
	["B_Boat_Armed_01_minigun_F",16500],
	["B_SDV_01_F",25000],
	["B_MRAP_01_F",7500]
];

if(playerSide == independent) then 
{
	life_garage_prices set [count life_garage_prices, ["B_Heli_Light_01_F",15000]];
	life_garage_prices set [count life_garage_prices, ["O_Heli_Light_02_unarmed_F",25000]];
}
else 
{
	life_garage_prices set [count life_garage_prices, ["B_Heli_Light_01_F",45000]];
	life_garage_prices set [count life_garage_prices, ["O_Heli_Light_02_unarmed_F",65000]];
};
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",450],
	["C_Hatchback_01_F",4500],
	["C_Offroad_01_F", 1500],
	["B_G_Offroad_01_F",3500],
	["C_SUV_01_F",15000],
	["C_Van_01_transport_F",25000],
	["C_Hatchback_01_sport_F",7500],
	["C_Van_01_fuel_F",3850],
	["I_Heli_Transport_02_F",125000],
	["C_Van_01_box_F",35000],
	["I_Truck_02_transport_F",49800],
	["I_Truck_02_covered_F",62000],
	["B_Truck_01_transport_F",135000],
	["B_Truck_01_box_F", 150000],
	["O_MRAP_02_F",65000],
	["B_Heli_Light_01_F",57000],
	["O_Heli_Light_02_unarmed_F",72500],
	["C_Rubberboat",950],
	["C_Boat_Civil_01_F",6800],
	["B_Boat_Transport_01_F",850],
	["C_Boat_Civil_01_police_F",4950],
	["B_Boat_Armed_01_minigun_F",21000],
	["B_SDV_01_F",45000],
	["B_MRAP_01_F",10000]
];
__CONST__(life_garage_sell,life_garage_sell);
