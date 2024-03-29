//////////////////////////////////////////////////////////////////
// Created by: Tonic and Adapted by DirtDiver & JackLags for STS
// Function Name: life_fn_varToStr.sqf
// Description: Takes the variable and returns a display name.
//////////////////////////////////////////////////////////////////

private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};


switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Crude Oil"};
	case "life_inv_oilp": {"Petroleum"};
	case "life_inv_heroinu": {"Opium"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apple"};
	case "life_inv_rabbit": {"Rabbit Meat"};
	case "life_inv_salema": {"Salema Meat"};
	case "life_inv_ornate": {"Ornate Meat"};
	case "life_inv_mackerel": {"Mackerel Meat"};
	case "life_inv_tuna": {"Tuna Meat"};
	case "life_inv_mullet": {"Mullet Meat"};
	case "life_inv_catshark": {"Cat Shark Meat"};
	case "life_inv_turtle": {"Turtle Meat"};
	case "life_inv_fishingpoles": {"Fishing Pole"};
	case "life_inv_water": {"Water Bottle"};
	case "life_inv_coffee": {"Coffee"};
	case "life_inv_turtlesoup": {"Turtle Soup"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Empty Fuel Can"};
	case "life_inv_fuelF": {"Full Fuel Can"};
	case "life_inv_pickaxe": {"Pickaxe"};
	case "life_inv_copperore": {"Copper Ore"};
	case "life_inv_ironore": {"Iron Ore"};
	case "life_inv_ironr": {"Iron Ingot"};
	case "life_inv_copperr": {"Copper Ingot"};
	case "life_inv_goldore": {"Gold Ore"};
	case "life_inv_goldr": {"Gold Ingot"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Rock Salt"};
	case "life_inv_saltr": {"Refined Salt"};
	case "life_inv_glass": {"Glass"};
	case "life_inv_diamond": {"Uncut Diamond"};
	case "life_inv_diamondr": {"Cut Diamond"};
	case "life_inv_tbacon": {"Tactical Bacon"};
	case "life_inv_redgull": {"RedGull"};
	case "life_inv_lockpick": {"Lockpick"};
	case "life_inv_peach": {"Peach"};
	case "life_inv_coke": {"Coca Leaves"};
	case "life_inv_cokep": {"Cocaine"};
	case "life_inv_spikeStrip": {"Spike Strip"};
	case "life_inv_rock": {"Rock"};
	case "life_inv_cement": {"Cement Bag"};
	case "life_inv_zip": {"Ziptie"};
	case "life_inv_goldbar": {"Gold Bar"};
	case "life_inv_corn": {"Ears of Corn"};
	case "life_inv_moonshine": {"Moonshine"};
	case "life_inv_fcrab": {"Female Crab"};
	case "life_inv_fcrabp": {"Pregnant Female Crab"};
	case "life_inv_mcrabs": {"Male Crab Small"};
	case "life_inv_mcrab": {"Male Crab"};
	case "life_inv_crabpot": {"Crab Pot"};
	case "life_inv_coalore": {"Coal"};
	case "life_inv_steel" : {"Steel"};
	case "life_inv_defib" : {"Defibrilator"};
	case "life_inv_log" : {"Wood Log"};
	case "life_inv_lumber" : {"Cut Lumber"};
	case "life_inv_chainsaw" : {"Chainsaw"};
	case "life_inv_cellphone" : {"Cell Phone"};
	case "life_inv_RoadConeStrip": {"RoadCone Strip"};
	case "life_inv_RoadCone": {"RoadCone"};
	case "life_inv_RoadBlockWood": {"RoadBlock (Wooden)"};
	case "life_inv_storage1": {"House Storage"};
    case "life_inv_storage2": {"House Storage Large"};
    case "license_civ_home": {"Home Owner License"};
    case "life_inv_crowbar": {"Crowbar"};
    case "life_inv_lethal": {"Lethal Injection"};



	//License Block
	case "license_civ_driver": {"Drivers License"};
	case "license_civ_air": {"Pilot License"};
	case "license_civ_heroin": {"Heroin Training"};
	case "license_civ_gang": {"Gang License"};
	case "license_civ_oil": {"Oil Processing License"};
	case "license_civ_dive": {"Diving License"};
	case "license_civ_boat": {"Boating License"};
	case "license_civ_gun": {"Firearms License"};
	case "license_cop_air": {"Pilot License"};
	case "license_cop_cg": {"Coast Guard License"};
	case "license_civ_rebel": {"Rebel Training"};
	case "license_civ_truck": {"Truck License"};
	case "license_civ_diamond": {"Diamond Processing License"};
	case "license_civ_copper": {"Copper Processing License"};
	case "license_civ_iron": {"Iron Processing License"};
	case "license_civ_gold": {"Gold Processing License"};
	case "license_civ_sand": {"Sand Processing License"};
	case "license_civ_salt": {"Salt Processing License"};
	case "license_civ_coke": {"Cocaine Training"};
	case "license_civ_marijuana": {"Marijuana Training"};
	case "license_civ_cement": {"Cement Mixing License"};
	case "license_civ_moonshine": {"Distillery Agreement"};
	case "license_civ_crabbing": {"Crabbing License"};
	case "license_civ_steel" : {"Steel Processing License"};
	case "license_civ_bh" : {"Bounty Hunting License"};
	case "license_civ_logging" : {"Logging License"};
	case "license_medic_air" : {"Pilot License"};

};
