#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Master config file for Cop clothing store.
*/

private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		switch (__GETC__(life_coplevel)) do {
			case 1: { _ret set[count _ret,["U_Rangemaster","Cadet Uniform",100]]; };
			case 2: { _ret set[count _ret,["U_Rangemaster","PO Uniform",100]]; };
			case 3: { _ret set[count _ret,["U_Rangemaster","SPO Uniform",100]]; };
			case 4: { _ret set[count _ret,["U_Rangemaster","Corporal Uniform",100]]; };
			case 5: { _ret set[count _ret,["U_Rangemaster","Sergeant Uniform",100]]; };
			case 6: { _ret set[count _ret,["U_Rangemaster","Lieutenant Uniform",100]]; };
			case 7: { _ret set[count _ret,["U_Rangemaster","Captain Uniform",100]]; };
			case 8: { _ret set[count _ret,["U_Rangemaster","Superintendent Uniform",100]]; };
			case 9: { _ret set[count _ret,["U_Rangemaster","Chief Uniform",100]]; };
		};
		/*	
		_ret set[count _ret,["U_Rangemaster","Cadet Uniform",25]];
		if((life_coplevel) > 1) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Altis Police Uniform",350]];
		};
		
		if(__GETC__(life_coplevel) = 1) then
		{
			_ret set[count _ret,["U_Rangemaster","Cadet Uniform",350]];
		};
		
		if(__GETC__(life_coplevel) = 2) then
		{
			_ret set[count _ret,["U_Rangemaster","PO Uniform",450]];
		};
		
		if(__GETC__(life_coplevel) = 3) then
		{
			_ret set[count _ret,["U_Rangemaster","SPO Uniform",550]];
		};
		if(__GETC__(life_coplevel) = 4) then
		{
			_ret set[count _ret,["U_Rangemaster","Corp Uniform",650]];
		};
		
		if(__GETC__(life_coplevel) = 5) then
		{
			_ret set[count _ret,["U_Rangemaster","Serg Uniform",750]];
		};
		if(__GETC__(life_coplevel) = 6) then
		{
			_ret set[count _ret,["U_Rangemaster","Lieut Uniform",850]];
		};
		if(__GETC__(life_coplevel) = 7) then
		{
			_ret set[count _ret,["U_Rangemaster","Capt Uniform",950]];
		};
		if(__GETC__(life_coplevel) = 8) then
		{
			_ret set[count _ret,["U_Rangemaster","SuperInt Uniform",1000]];
		};
		
		if(__GETC__(life_coplevel) = 9) then
		{
			_ret set[count _ret,["U_Rangemaster","Chief Uniform",1100]];
		};
		*/
		if(__GETC__(life_adminlevel) > 0) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam","Altis Police Uniform",350]];
			_ret set[count _ret,["U_B_CTRG_1",nil,100]];
			_ret set[count _ret,["U_B_CTRG_2",nil,100]];
			_ret set[count _ret,["U_B_CTRG_3",nil,100]];
			_ret set[count _ret,["U_B_survival_uniform",nil,100]];
		};
	};

	//Hats
	case 1:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret set[count _ret,["H_Cap_blk","Cadet Hat",100]];
		};

		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_MilCap_gry",nil,100]];
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_HelmetB_light_black",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,100]];
			_ret set[count _ret,["H_Cap_blk_CMMG",nil,100]];
			_ret set[count _ret,["H_Cap_blk_ION",nil,100]];
			_ret set[count _ret,["H_Cap_blk",nil,100]];
			_ret set[count _ret,["H_Cap_khaki_specops_UK",nil,100]];
			_ret set[count _ret,["H_Cap_khaki_specops_US",nil,100]];
			_ret set[count _ret,["H_Watchcap_blk",nil,100]];
			_ret set[count _ret,["H_Watchcap_khk",nil,100]];
			_ret set[count _ret,["H_Watchcap_camo",nil,100]];
			_ret set[count _ret,["H_Bandanna_cbr",nil,100]];
			_ret set[count _ret,["H_Bandanna_gry",nil,100]];
		};
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_Cap_headphones",nil,100]];
			_ret set[count _ret,["H_Cap_oli_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_khk_hs",nil,100]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,100]];
		};
		
		if(__GETC__(life_copLevel) > 3) then 
		{
			_ret set[count _ret,["H_HelmetB",nil,100]];
			_ret set[count _ret,["H_HelmetB_black",nil,100]];
			_ret set[count _ret,["H_HelmetB_desert",nil,100]];
			_ret set[count _ret,["H_HelmetB_grass",nil,100]];
			_ret set[count _ret,["H_HelmetB_sand",nil,100]];
		};
		
		if(__GETC__(life_copLevel) > 5) then 
		{
			_ret set[count _ret,["H_Beret_02",nil,100]];
			_ret set[count _ret,["H_Beret_blk",nil,100]];
		};
		
		if(__GETC__(life_adminlevel) > 0) then
		{
			_ret set[count _ret,["H_HelmetB_snakeskin",nil,100]];
			_ret set[count _ret,["H_Beret_Colonel",nil,100]];
			_ret set[count _ret,["H_MilCap_blue",nil,100]];

		};
		
	};

	//Glasses
	case 2:
	{
		_ret =
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Tactical_Black",nil,50],
			["G_Combat",nil,55]
		];

		if(__GETC__(life_adminlevel) > 0) then
		{
			_ret set[count _ret,["G_Goggles_VR",nil,100]];
		};
	};

	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
		};
		if(__GETC__(life_adminlevel) > 0) then
		{
			_ret set[count _ret,["V_PlateCarrierL_CTRG",nil,100]];
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,100]];
		};

	};

	//Backpacks
	case 4:
	{
		_ret set[count _ret,["B_AssaultPack_mcamo",nil,500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["B_Bergen_blk",nil,650]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["B_TacticalPack_rgr",nil,800]];
			_ret set[count _ret,["B_TacticalPack_mcamo",nil,800]];
			_ret set[count _ret,["B_TacticalPack_ocamo",nil,800]];
			_ret set[count _ret,["B_TacticalPack_blk",nil,800]];
			_ret set[count _ret,["B_TacticalPack_oli",nil,800]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["B_Kitbag_rgr",nil,1000]];
			_ret set[count _ret,["B_Kitbag_sgg",nil,1000]];
			_ret set[count _ret,["B_Kitbag_cbr",nil,1000]];
			_ret set[count _ret,["B_Kitbag_mcamo",nil,1000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["B_Carryall_oli",nil,1200]];
			_ret set[count _ret,["B_Carryall_ocamo",nil,1200]];
			_ret set[count _ret,["B_Carryall_oucamo",nil,1200]];
			_ret set[count _ret,["B_Carryall_mcamo",nil,1200]];
			_ret set[count _ret,["B_Carryall_khk",nil,1200]];
			_ret set[count _ret,["B_Carryall_cbr",nil,1200]];
		};
	};
};

_ret;
