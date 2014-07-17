/*
	File: fn_vInteractionMenu.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Replaces the mass addactions for various vehicle actions
*/
#define Txt1 37450
#define Btn1 37451
#define Btn2 37452
#define Btn3 37453
#define Btn4 37454
#define Btn5 37455
#define Btn6 37456
#define Btn7 37457
/*
#define Btn8 37458
*/
#define Title 37401

private["_display","_curTarget","_tName","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7"];

if(!dialog) then {
	createDialog "vInteraction_Menu";
};
disableSerialization;

_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if ((player getVariable "unconscious")) exitWith {};
if(isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if((_curTarget isKindOf "landVehicle") OR (_curTarget isKindOf "Ship") OR (_curTarget isKindOf "Air")) then {true} else {false};
if(!_isVehicle) exitWith {closeDialog 0;};
//Can't interact while restrained or dead
if (player getVariable["zipTie",false] || player getVariable["restrained",false] || player getVariable["surrender",false] || player getVariable ["unconscious",false]) exitWith {closeDialog 0;};


_display = findDisplay 37400;
_tName = _display displayCtrl Txt1;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
/*
_Btn8 = _display displayCtrl Btn8;
*/

life_vInact_curTarget = _curTarget;

/*Range check DOES NOT WORK
while {dialog} do {
	if (_curTarget distance player > 5) then {
		closeDialog 0;
	};
};*/

//Set vehicle type text
_tName ctrlSetText getText(configFile >> "CfgVehicles" >> (typeOf cursorTarget) >> "displayName");

//Button 1: Repair
if("ToolKit" in (items player)) then {_Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_repairTruck;";


//Button 2: Push
if(_curTarget isKindOf "Ship") then {
	_Btn2 ctrlSetText localize "STR_vInAct_Push";
	_Btn2 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pushVehicle;";
} else {
	_Btn2 ctrlShow false;
};


//Button 3: Pull out of Vehicle
if(playerSide == civilian && primaryWeapon player == "" && handGunWeapon player == "") then {_Btn3 ctrlEnable false;};
if(count crew _curTarget == 0) then {_Btn3 ctrlEnable false;};
_Btn3 ctrlSetText localize "STR_vInAct_PullOut";
_Btn3 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_pulloutAction;";


//Cop exclusive buttons
if(playerSide == west) then {
	//Button 4: Check Vehicle Registration
	_Btn4 ctrlSetText localize "STR_vInAct_Registration";
	_Btn4 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_searchVehAction;";
	
	//Button 5: Check Driver Licenses
	if (isPlayer driver life_vInact_curTarget) then {_Btn5 ctrlEnable true;} else {_Btn5 ctrlEnable false;};
	_Btn5 ctrlSetText localize "STR_vInAct_checkLicenses";
	_Btn5 buttonSetAction "[[player],""life_fnc_licenseCheck"",life_vInact_curTarget,false] spawn life_fnc_MP";
	
	//Button 6: Search Vehicle
	_Btn6 ctrlSetText localize "STR_vInAct_SearchVehicle";
	_Btn6 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_vehInvSearch;";
	
} else {
	_Btn4 ctrlShow false;
	_Btn5 ctrlShow false;
	_Btn6 ctrlShow false;
};

//Cop and medic exclusive buttons
if(playerSide == west || playerSide == independent) then {
	//Button 7: Impound Vehicle
	_Btn7 ctrlSetText localize "STR_vInAct_Impound";
	_Btn7 buttonSetAction "[life_vInact_curTarget] spawn life_fnc_impoundAction;";
	
} else {
	_Btn7 ctrlShow false;
};