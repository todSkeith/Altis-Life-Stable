/*
File:fn_robStation.sqf
Server file:fn_robGasStation.sqf

Author: CDawg & Morph
*/

private["_station","_robber"];

_station = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_uid = getPlayerUID player;
_robberycash = 0; 
_progresstimer = 300;
_denied1 = false;
_hint = "preloop success";

if(playerSide == west) exitWith 
{
	hint "What do you think you're doing? You're a cop not a criminal!";
};

if(playerSide == independent) exitWith 
{
	hint "What do you think you're doing? You're on duty!";
};

if(_station getVariable["gaswait",true]) exitWith 
{
	hint "This store was recently robbed come back later.";
};

if(_station getVariable["robProgress",true]) exitWith 
{
	hint "This store is in the process of being robbed please wait.";
};

// if(playersNumber west < 5) exitWith {hint "The till appears to be empty.\nTry again when more Altis civilians and officers are around."}; 

if(vehicle player != player) exitWith {hint "I'm not giving you anything until you step out of that vehicle..."};

if((currentWeapon player !="") && (currentWeapon player !="Binocular")) then 

	{
		[[2,"A station is being robbed!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		_station setVariable["robProgress",true,true];
		
		_number = (round(ceil(random 11)));
		if (_number == 1) then {robberyreward = 500};
		if (_number == 2) then {robberyreward = 1000};
		if (_number == 3) then {robberyreward = 1500};						
		if (_number == 4) then {robberyreward = 2000};
		if (_number == 5) then {robberyreward = 2500};
		if (_number == 6) then {robberyreward = 5000};
		if (_number == 7) then {robberyreward = 10000};
		if (_number == 8) then {robberyreward = 15000};
		if (_number == 9) then {robberyreward = 20000};
		if (_number == 10) then {robberyreward = 25000};
		if (_number == 11) then {robberyreward = 30000};
		
		_robberycash = robberyreward; 
		
		life_action_inUse = true;
		hint "marker success";
	
		[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
	
		for [{_p=0}, {_p<=_progresstimer}, {_p=_p+1}] do
		{ 
			hint format["Robbery Progress: %1/100%2\nPlease stay within 15 meters to continue the robbery.", (round((_p/_progresstimer)*100)),"%"];
			sleep 1;

			if !(alive player) exitWith 
				{
					hint "The robbery failed, because you died.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
					if (life_knockout) exitWith 
				{
					hint "The robbery failed, because you were knocked out.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
				if (player getVariable "unconscious") exitWith 
				{
					hint "The robbery failed, because you were wounded.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
				if (player getVariable "restrained") exitWith 
				{
					hint "The robbery failed, because you were restrained.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
				if (player getVariable "surrendered") exitWith 
				{
					hint "The robbery failed, because you surrendered.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
				if (player getVariable "zipTie") exitWith 
				{
					hint "The robbery failed.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
				if((player distance _station) > 15) exitWith 
				{
					hint "You are too far away! The robbery failed.";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
		
				if(life_istazed) exitWith 
				{
					hint "You were tazed, the robbery has failed!";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
	
				if(vehicle player != player) exitWith 
				{
					hint "Where the hell are you going? ROB LIKE A MAN!";
					[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					life_action_inUse = false;
					_station setVariable["robFail",true,true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + 2500;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,2500]];
						_station setVariable["Robbers",_array,true];
					};
					
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};

				if(_p == _progresstimer) exitWith 
				{
					hint format["You have successfully robbed $%1", _robberycash];
					life_cash = life_cash + _robberycash;
					[[2,"A station was successfully robbed!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
					[[getPlayerUID _source,name _source,"211A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
					life_action_inUse = false;					
					_station setVariable["robSuccess",true, true];
					
					private["_array","_ind","_val"];
					_array = _station getVariable["Robbers",[]];
					_ind = [getPlayerUID player,_array] call fnc_index;
					
					if(_ind != -1) then
					{
						_val = (_array select _ind) select 2;
						_val = _val + _robberycash;
						_array set[_ind,[getPlayerUID player,name player,_val]];
						_station setVariable["Robbers",_array,true];
					}
					
					else
					{
						_array set[count _array,[getPlayerUID player,name player,_robberycash]];
						_station setVariable["Robbers",_array,true];
					};
						
					[[_station,_robber],"TON_fnc_robGasStation",_station,true] spawn life_fnc_MP;
				};
		
		};
} else {hint "HAHA! You think you can hold me up with your bare hands! What a joke!"; _denied1 = true};		

if(_denied1) exitWith {};


