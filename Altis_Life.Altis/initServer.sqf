/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
master_group attachTo[bank_obj,[0,0,0]];

gasman1 setVariable["robProgress",false, true];
gasman2 setVariable["robProgress",false, true];
gasman3 setVariable["robProgress",false, true];
gasman4 setVariable["robProgress",false, true];
gasman1 setVariable["gaswait",false, true];
gasman2 setVariable["gaswait",false, true];
gasman3 setVariable["gaswait",false, true];
gasman4 setVariable["gaswait",false, true];

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";