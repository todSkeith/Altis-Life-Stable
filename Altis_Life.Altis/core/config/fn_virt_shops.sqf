/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Market",["water","rabbit","apple","redgull","tbacon","pickaxe","fuelF","peach","crabpot","storage2","storage1"]]};
	case "wongs": {["Illegal Wildlife Market",["fcrabp","mcrabs","turtle"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark","fcrab","mcrab"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Precious Metal Trader",["iron_r","copper_r","gold_r","steel"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "rebel": {["Rebel Item Shop",["lockpick","zip","crowbar","lethal"]]};
	case "moonshine": {["Distributor",["moonshine"]]};
	//case "medic" : {["donuts","coffee","water","rabbit","apple","redgull","fuelF"]]};
	case "logging" : {["Alan's Hardwood Supply",["chainsaw","lumber"]]};
	};