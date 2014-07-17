/*
	File: fn_pullOutVeh.sqf
	Author: Bryan "Tonic" Boardwine
*/

player action ["Eject", vehicle player];
titleText["You have been pulled out of the vehicle","PLAIN"];
titleFadeOut 4;