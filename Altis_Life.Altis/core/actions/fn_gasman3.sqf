// Rewritten and Fixed by CDawg

private["_robber"];

_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_pos = GetPos player;
_denied1 = false;

if(playerSide == west) exitWith 
{
	hint "What do you think your doing your a cop not a criminal!";
};

if(gasman3 getVariable["gaswait",true]) exitWith 
{
	hint "This store was recently robbed come back later.";
};

if(gasman3 getVariable["robProgress",true]) exitWith 
{
	hint "This store is in the process of being robbed please wait.";
};

if(vehicle player != player) exitWith {hint "Im not giving you anything until you step out of that vehicle...";};

if(currentWeapon player !="")then 
		{
			if(currentWeapon player !="Binocular") then
			{
				[[2,"A station is being robbed!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
				[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
				gasman3 setVariable["robProgress",true, true];
				_Pos = position player;
				_marker = createMarker ["Marker202", gasman3];
				"Marker202" setMarkerColor "ColorRed";
				"Marker202" setMarkerText "Station is being robbed!";
				"Marker202" setMarkerType "mil_warning";
				_number = ceil(random 10);
				_pplayer = _this select 0;
				if (_number == 0) then {robberyreward = 500;};
				if (_number == 1) then {robberyreward = 1000;};
				if (_number == 2) then {robberyreward = 1500;};						
				if (_number == 3) then {robberyreward = 2000;};
				if (_number == 4) then {robberyreward = 2500;};
				if (_number == 5) then {robberyreward = 5000;};
				if (_number == 6) then {robberyreward = 10000;};
				if (_number == 7) then {robberyreward = 15000;};
				if (_number == 8) then {robberyreward = 20000;};
				if (_number == 9) then {robberyreward = 25000;};
				if (_number == 10) then {robberyreward = 30000;};
				life_action_inUse = true;
			} else {hint "HAHA! You think you can hold me up with your bare hands! What a joke!"; _denied1 = true;};
		} else {hint "HAHA! You think you can hold me up with your bare hands! What a joke!"; _denied1 = true;};		

if(_denied1) exitwith
{
};

if(!alive player) exitWith {life_action_inUse = false;};

sleep 2;
_robberycash = robberyreward;
_timer = time + (5 * 60);	
_toFar = false;
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

while {true} do
{
	//Timer display (TO BE REPLACED WITH A NICE GUI LAYER)
	_countDown = if(round(_timer - time) > 60) then {format["%1 minute(s)",round(round(_timer - time) / 60)]} else {format["%1 second(s)",round(_timer - time)]};
	hintSilent format["You need to stay within 15m!\n\nTime Remaining:\n %1\n\nDistance: %2m",_countDown,round(player distance _vault)];

	if(player distance _vault > 15) exitWith {_toFar = true;};
	if((round(_timer - time)) < 1) exitWith {};
	if(!alive player) exitWith {};
	if(life_istazed) exitWith {};
	if(vehicle player != player) exitWith {};
};

switch(true) do
{
		case (vehicle player != player):
	{
		hint "Where the hell are you going? ROB LIKE A MAN!";
		[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		deleteMarker "Marker202";
		_denied1 = false;
		gasman1 setVariable["robProgress",false, true];
		life_action_inUse = false;
		gasman1 setVariable["gaswait",true, true];
		sleep 180;
		gasman1 setVariable["gaswait",false, true];
	};

	case (_toFar):
	{
		hint "You are too far away!";
		[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		deleteMarker "Marker202";
		_denied1 = false;
		gasman3 setVariable["robProgress",false, true];
		life_action_inUse = false;	
		gasman3 setVariable["gaswait",true, true];
		sleep 180;
		gasman3 setVariable["gaswait",false, true];
	};
	
	case (!alive player):
	{
		hint "Because you died the robbery failed.";
		_denied1 = false;
		[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		deleteMarker "Marker202";
		gasman3 setVariable["robProgress",false, true];
		life_action_inUse = false;
		gasman3 setVariable["gaswait",true, true];
		sleep 180;
		gasman3 setVariable["gaswait",false, true];
	};
	
	case (life_istazed):
	{
		hint "You were tazed, the robbery has failed!";
		[[2,"A station robbery failed..."],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		deleteMarker "Marker202";
		_denied1 = false;
		gasman3 setVariable["robProgress",false, true];
		life_action_inUse = false;
		gasman3 setVariable["gaswait",true, true];
		sleep 180;
		gasman3 setVariable["gaswait",false, true];3	};
	
	case ((round(_timer - time)) < 1):
	{
		hint format["You have successfully robbed $%1", _robberycash];
		life_cash = life_cash + _robberycash;
		[[2,"A station was successfully robbed!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
		[[getPlayerUID _source,name _source,"211A"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
		gasman3 setVariable["robProgress",false, true];
		gasman3 setVariable["gaswait",true, true];
		deleteMarker "Marker202";
		_denied1 = false;
		life_action_inUse = false;
	};	
};

sleep 2700;
gasman3 setVariable["gaswait",false,true];
life_action_inUse = false;