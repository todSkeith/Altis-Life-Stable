#include <macro.h>
/*
		File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master configuration for available spawn points depending on the units side.

	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side", "_markers", "_i", "_houses", "_house", "_mk", "_mkName"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{	
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","icons\policeIcon.paa"],
			["cop_spawn_2","Pyrgos HQ","icons\policeIcon.paa"],
			["cop_spawn_3","Athira HQ","icons\policeIcon.paa"],
			["cop_spawn_4","Air HQ","icons\policeIcon.paa"],
			["cop_spawn_5","HW Patrol","icons\policeIcon.paa"],
			["cop_spawn_6","Coast Guard HQ","icons\policeIcon.paa"]
		];
	};

	case civilian:
	{
		_markers = [
			["civ_spawn_1","Kavala","icons\IconSloth.paa"],
			["civ_spawn_2","Pyrgos","icons\IconSloth.paa"],
			["civ_spawn_3","Athira","icons\IconSloth.paa"],
			["civ_spawn_4","Sofia","icons\IconSloth.paa"]
		];

/*		_positionArray = playerPosition;
		_positionArray = [(_positionArray select 0),(_positionArray select 1),(_positionArray select 2)];

		if(_positionArray select 0 != 0) then {
		_markers set [count _markers, ["last_location","Previous Position","icons\IconSloth.paa"]];
		};
*/
		if(license_civ_home) then 
		{		

			_houses = [
				"Land_i_House_Small_01_V1_F",
				"Land_i_House_Small_01_V2_F",
				"Land_i_House_Small_01_V3_F",
				"Land_i_House_Small_02_V1_F",
				"Land_i_House_Small_02_V2_F",
				"Land_i_House_Small_02_V3_F",
				"Land_i_House_Small_03_V1_F",
				"Land_i_House_Big_01_V1_F",
				"Land_i_House_Big_01_V2_F",
				"Land_i_House_Big_01_V3_F",
				"Land_i_House_Big_02_V1_F",
				"Land_i_House_Big_02_V2_F",
				"Land_i_House_Big_02_V3_F"
			];

			_i = 1;
			{
				_house = nearestObject [(_x select 0), "House_F"];
				if((typeOf _house) in _houses) then {

					_mkName  = format["civ_spawn_home_%1", _i];

					if (isNil (_mkName)) then {
						_mk = createMarkerLocal [_mkName, (_x select 0)];
						_mk setMarkerAlphaLocal 0;
					};

					_markers set [count _markers, [_mkName, format ["Home %1", _i], "icons\IconSloth.paa"]];
					_i = _i + 1;
				};
			}forEach life_houses;		
		};
	};

	case independent:
	{
		_markers = [
			["medic_spawn_1","Kavala","icons\IconSloth.paa"],
			["medic_spawn_2","Rodopoli","icons\IconSloth.paa"]

		];

	};
};

_markers