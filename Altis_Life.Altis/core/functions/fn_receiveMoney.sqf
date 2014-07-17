/*
	File: fn_receiveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Receives money
*/
private["_unit","_val","_from"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_val = [_this,1,"",[""]] call BIS_fnc_param;
_from = [_this,2,Objnull,[Objnull]] call BIS_fnc_param;
_refund = [_this,3,false,[false]] call BIS_fnc_param;
if(isNull _unit OR isNull _from OR _val == "") exitWith {};
if(player != _unit) exitWith {};
if(!([_val] call fnc_isnumber)) exitWith {};

//Replaced exploit check to allow refunds
//if(_unit == _from && !(_refund)) exitWith {}; //Bad boy, trying to exploit his way to riches. BROKE THE REFUNDING!

if (_refund) then {
	//Using titleText because garage is already using hints
	titleText[format["You have been refunded $%1",[(parseNumber (_val))] call life_fnc_numberText],"PLAIN"];
} else {
	hint format["%1 has given you $%2",name _from,[(parseNumber (_val))] call life_fnc_numberText];
};

life_cash = life_cash + (parseNumber(_val));