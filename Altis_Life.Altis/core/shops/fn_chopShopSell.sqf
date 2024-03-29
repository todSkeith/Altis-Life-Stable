/*
        File: fn_chopShopSell.sqf
        Author: Bryan "Tonic" Boardwine
       
        Description:
        Sells the selected vehicle off.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_price2"];
_control = ((findDisplay 39400) displayCtrl 39402);
_price = _control lbValue (lbCurSel _control);
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = _nearVehicles select _vehicle;
if(isNull _vehicle) exitWith {};
 
hint "Selling vehicle please wait....";
life_action_inUse = true;
_price2 = life_cash + _price;
[[player,_vehicle,_price,_price2],"TON_fnc_chopShopSell",false,false] spawn life_fnc_MP;
closeDialog 0;
 
if((_nearVehicle getVariable ["life_action_inUse",false])) exitWith {hint "This Chop Shop is in use, only one person can use it at a time."};
_nearVehicle setVariable["life_action_inUse",true,true];