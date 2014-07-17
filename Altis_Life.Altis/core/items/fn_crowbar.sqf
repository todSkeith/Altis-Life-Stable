/*
	File: fn_lockpick.sqf
	Author: CDawg
	
	Description:
	Main functionality for breaking into houses.
*/
private["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance","_breakin","_item"];
_curTarget = cursorTarget;
life_interrupted = false;
if(life_action_inUse) exitWith {};
if(isNull _curTarget) exitWith {}; //Bad type
_distance = ((boundingBox _curTarget select 1) select 0) + 2;
if(player distance _curTarget > _distance) exitWith {}; //Too far
_isVehicle = if(_curTarget isKindOf "House") then {true} else {false};
_item = lbData[2005,(lbCurSel 2005)];


_title = format["Breaking into %1",getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")];
life_action_inUse = true; //Lock out other actions

//Setup the progress bar
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNamespace getVariable "life_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
_playerpos = position player;

_breakin = [] spawn life_fnc_breakingin;

while {true} do
{
	if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
		[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	sleep 0.26;
	_cP = _cP + 0.01;

	_progressBar progressSetPosition _cP;
	_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
	if(_cP >= 1 OR !alive player) exitWith {terminate _breakin;};
	if(life_istazed) exitWith {terminate _breakin;}; //Tazed
	if(life_interrupted) exitWith {terminate _breakin;};
	if((player getVariable["restrained",false])) exitWith {terminate _breakin;};
	if(player distance _curTarget > _distance) exitWith {_badDistance = true;terminate _breakin;};
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR life_istazed) exitWith {life_action_inUse = false;};
if((player getVariable["restrained",false])) exitWith {life_action_inUse = false;};
if(!isNil "_badDistance") exitWith {titleText["You got to far away from the target.","PLAIN"]; life_action_inUse = false;};
if(life_interrupted) exitWith {life_interrupted = false; titleText["Action cancelled","PLAIN"]; life_action_inUse = false;};

life_action_inUse = false;

if(_isVehicle) then {
	_dice = random(100);
		if(_curTarget isKindOf "House") then {
			if(_dice < 18) then {

				[[getPlayerUID player,name player,"499H"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				titleText["You have successfully broken in!","PLAIN"];
				_curTarget setVariable["life_locked", 0, true];
				_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "numberOfDoors");
				_isLocked = _curTarget getVariable["life_locked", 0];
				_isLocked = 0;

				_house = nearestObject [player, "House_F"];
				_cargo = ((life_houses select (0)) select 2);
				_containers = _house getVariable ["containers", []];



				if(count _containers > 0) then {

					_pos = position _house;
					_pos = [(_pos select 0), (_pos select 1), (_pos select 2) + 1];
					_box = (_x select 2) createVehicle _pos;
					_box setVariable["storage", (_box select 3), true];
					_box setVariable["Trunk", [[],0], true];
					_box setPosATL [_pos select 0, (_pos select 1), _pos select 2];	
					
					clearWeaponCargoGlobal _box; 
					clearMagazineCargoGlobal _box;
					clearItemCargoGlobal _box;
					clearBackpackCargoGlobal _box;
				
					if(typeOf _box == "Box_IND_WpsSpecial_F" && !(_weaponsAdded)) then {
						
					//diag_log format ["%1", _cargo];
					
						if(count (_cargo select 0) > 0) then {
							for[{_j = 0},{_j < count ((_cargo select 0) select 0)},{_j = _j + 1}] do {
								_box addWeaponCargoGlobal [((_cargo select 0) select 0) select _j, ((_cargo select 0) select 1) select _j];
							};
						};
						if(count (_cargo select 1) > 0) then {
							for[{_j = 0},{_j < count ((_cargo select 1) select 0)},{_j = _j + 1}] do {
								_box addMagazineCargoGlobal [((_cargo select 1) select 0) select _j, ((_cargo select 1) select 1) select _j];
							};
						};
						if(count (_cargo select 2) > 0) then {
							for[{_j = 0},{_j < count ((_cargo select 2) select 0)},{_j = _j + 1}] do {
								_box addItemCargoGlobal [((_cargo select 2) select 0) select _j, ((_cargo select 2) select 1) select _j];
							};
						};
						if(count (_cargo select 3) > 0) then {
							for[{_j = 0},{_j < count ((_cargo select 3) select 0)},{_j = _j + 1}] do {
								_box addBackpackCargoGlobal [((_cargo select 3) select 0) select _j, ((_cargo select 3) select 1) select _j];
							};
						};				
					
					_weaponsAdded = true;
				};

			}forEach _containers;

			player addEventHandler ["Take",{_this spawn life_fnc_onTake;}];
			player addEventHandler ["Put",{_this spawn life_fnc_onPut;}];
			

			for "_i" from 1 to _numDoors do
			{
				_curTarget animate [format["door_%1_rot", _i], 0];
				_curTarget setVariable[format["bis_disabled_Door_%1", _i], _isLocked, true];
			};

			for "_r" from 1 to 15 do
			{
				[[_curTarget, "car_alarm",60],"life_fnc_playSound",true,false] spawn BIS_fnc_MP;
				sleep 2.3;
			};


			sleep 300;

			_boxes = nearestObjects [_house, ["Land_Box_AmmoOld_F","Box_IND_WpsSpecial_F"], 5]; 
			_house setVariable ["life_locked", 1, true];
			_house setVariable ["storage_locked", 0, true];
		
			{
				deleteVehicle (_x select 2);
			}forEach _boxes;
	
			_numDoors = getNumber(configFile >> "CfgVehicles" >> (typeOf _house) >> "numberOfDoors");	
		
			for "_i" from 1 to _numDoors do
			{
				_house animate [format["door_%1_rot", _i], 0];
				_house setVariable[format["bis_disabled_Door_%1", _i], 1, true];
			};


			} else {
				[[getPlayerUID player,name player,"498H"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				[[0,format["%1 was seen trying to break into someones house!",name player]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				titleText["The door wouldn't budge.","PLAIN"];

				_dice = random(100);
				if (_dice < 5) then {[false,_item,1] call life_fnc_handleInv; titleText["The crowbar appears jammed in the door... Looks like I need a new one!!","PLAIN"];} else
					{titleText["The door wouldn't budge.","PLAIN"];};
			};
		};

	};