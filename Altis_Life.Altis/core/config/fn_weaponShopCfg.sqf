//////////////////////////////////////////////////////////////////
// Created by: Tonic and Adapted by DirtDiver for STS
// Function Name: life_fn_weaponShopCfg.sqf
// Description: Master config file for the weapon shops.
//Return:
//	String: Close the menu
//	Array:
//	[Shop Name,
//	[ //Array of items to add to the store
//		[classname,Custom Name (set nil for default),price]
//	]]
//////////////////////////////////////////////////////////////////
#include <macro.h>

private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "police_equipment":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Police Equipment Shop",
					[
						["arifle_sdar_F","Taser Rifle",10000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag","Stun Pistol Magazine",50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,1000],
						["NVGoggles_OPFOR",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};

	case "police_weapons":
	{
		switch(true) do
		{
			case (__GETC__(life_coplevel) == 0): {"You are not a cop!"};
			
			case (__GETC__(life_adminlevel) > 0):
			{
				["Altis Admin Shop",
					[
						["arifle_MXM_F",nil,0],
						["arifle_MX_F",nil,0],
						["arifle_MXM_Black_F",nil,0],
						["arifle_MX_Black_F",nil,0],
						["arifle_MX_SW_Black_F",nil,0],
						["arifle_MXC_Black_F",nil,0],
						["SMG_01_F",nil,0],
						["MiniGrenade","Flashbang",0],
						["hgun_ACPC2_F",nil,0],
						["hgun_P07_snds_F","Stun Pistol",0],
						["arifle_sdar_F","Taser Rifle",0],
						["hgun_Pistol_heavy_01_MRD_F",nil,0],
						["optic_MRCO",nil,0],
						["optic_Arco",nil,0],
						["optic_Holosight",nil,0],
						["optic_Holosight_smg",nil,0],
						["optic_Hamr",nil,0],
						["acc_pointer_IR",nil,0],
						["acc_flashlight",nil,0],
						["H_HelmetB_black",nil,0],
						["H_HelmetB_snakeskin",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["FirstAidKit",nil,0],
						["Medikit",nil,0],
						["30Rnd_65x39_caseless_mag",nil,0],
						["30Rnd_45ACP_Mag_SMG_01",nil,0],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",0],
						["30Rnd_556x45_Stanag",nil,0],
						["9Rnd_45ACP_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["NVGoggles_OPFOR",nil,2000],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,0],
						["Chemlight_green",nil,0],
						["Chemlight_blue",nil,0],
						["20Rnd_762x51_mag","Sell This To Give Comp",0]
					]
				];
			};
			
			case (__GETC__(life_coplevel) == 1):
			{
				["Recruit Shop",
					[
						["arifle_sdar_F","Taser Rifle",10000],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["hgun_P07_F",nil,7500],
						["SMG_02_F",nil,20000],
						["muzzle_snds_L",nil,650],
						["16Rnd_9x21_Mag",nil,50],
						["20Rnd_556x45_UW_mag","Taser Rifle Magazine",125],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 2):
			{
				["Altis Patrol Officer Shop",
					[
						["arifle_MXC_F",nil,15000],
						["SMG_01_F",nil,20000],
						["acc_flashlight",nil,750],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Arco",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,130],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 3):
			{
				["Altis Senior Patrol Officer Shop",
					[
						["arifle_MX_F",nil,15000],
						["arifle_MXC_F",nil,15000],
						["SMG_01_F",nil,18000],
						["acc_flashlight",nil,750],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 4):
			{
				["Altis Corporal Shop",
					[
						["arifle_MX_F",nil,15000],
						["arifle_MXC_F",nil,15000],
						["SMG_01_F",nil,16000],
						["MiniGrenade","Flashbang",20000],
						["acc_flashlight",nil,750],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,2000],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 5):
			{
				["Altis Sergeant Shop",
					[
						["arifle_MXC_F",nil,15000],
						["arifle_MXM_F",nil,15000],
						["arifle_MX_SW_F",nil,15000],
						["SMG_01_F",nil,15000],
						["MiniGrenade","Flashbang",20000],
						["hgun_ACPC2_F",nil,17500],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,2000],
						["acc_pointer_IR",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 6):
			{
				["Altis Lieutenant Shop",
					[
						["arifle_MX_Black_F",nil,15000],
						["arifle_MXM_Black_F",nil,15000],
						["arifle_MX_SW_F",nil,15000],
						["arifle_MXC_F",nil,15000],
						["SMG_01_F",nil,15000],
						["MiniGrenade","Flashbang",20000],
						["hgun_ACPC2_F",nil,17500],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,2000],
						["acc_pointer_IR",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 7):
			{
				["Altis Captain Shop",
					[
						["arifle_MX_Black_F",nil,15000],
						["arifle_MXM_Black_F",nil,15000],
						["arifle_MX_SW_F",nil,15000],
						["arifle_MXC_Black_F",nil,15000],
						["SMG_01_F",nil,15000],
						["MiniGrenade","Flashbang",20000],
						["hgun_ACPC2_F",nil,17500],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,2000],
						["acc_pointer_IR",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 8):
			{
				["Altis Superintendent Shop",
					[
						["arifle_MXM_Black_F",nil,15000],
						["arifle_MX_Black_F",nil,15000],
						["arifle_MX_SW_Black_F",nil,15000],
						["arifle_MXC_Black_F",nil,15000],
						["SMG_01_F",nil,14000],
						["MiniGrenade","Flashbang",20000],
						["hgun_ACPC2_F",nil,17500],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,2000],
						["acc_pointer_IR",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};

			case (__GETC__(life_coplevel) == 9):
			{
				["Altis Chief Shop",
					[
						["arifle_MXM_Black_F",nil,15000],
						["arifle_MX_Black_F",nil,15000],
						["arifle_MX_SW_Black_F",nil,15000],
						["arifle_MXC_Black_F",nil,15000],
						["SMG_01_F",nil,10000],
						["MiniGrenade","Flashbang",20000],
						["hgun_ACPC2_F",nil,17500],
						["optic_Arco",nil,2500],
						["optic_Holosight",nil,1200],
						["optic_Holosight_smg",nil,1200],
						["optic_Hamr",nil,1500],
						["acc_pointer_IR",nil,2500],
						["30Rnd_65x39_caseless_mag",nil,300],
						["30Rnd_45ACP_Mag_SMG_01",nil,150],
						["9Rnd_45ACP_Mag",nil,200],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,60]
					]
				];
			};
		};
	};

	case "cg":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (!license_cop_cg): {"You are not part of the CoastGuard!"};
			case (__GETC__(life_coplevel) < 1): {"You are not part of the CoastGuard!"};
			default
			{
				["Coast Guard",
					[
						["SMG_02_ACO_F",nil,15000],
						["hgun_ACPC2_F",nil,17500],
						["arifle_SDAR_F",nil,20000],
						["optic_Arco",nil,2500],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_9x21_Mag",nil,60],
						["9Rnd_45ACP_Mag",nil,200]
					]
				];
			};
		};
	};

	case "medic":
	{
		switch(true) do
		{
			case (playerSide != independent): {"You are not a Medic!"};
			default
			{
				["Medic Shop",
					[
						["ItemGPS",nil,100],
						["ToolKit",nil,250],
						["Medikit",nil,100],
						["FirstAidKit",nil,150],
						["Chemlight_red",nil,300],
						["Chemlight_yellow",nil,300],
						["Chemlight_green",nil,300],
						["Chemlight_blue",nil,300]
					]
				];
			};
		};
	};

	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG20_F",nil,20000],
						["arifle_Katiba_F",nil,35000],
						["arifle_Katiba_C_F",nil,30000],
						["arifle_TRG21_F",nil,25000],
						["arifle_Mk20_F",nil,25000],
						["arifle_SDAR_F",nil,20000],
						["SMG_01_F",nil,20000],
						["MiniGrenade","Flashbang",40000],
						["optic_ACO_grn",nil,3500],
						["optic_Holosight",nil,3600],
						["optic_Holosight_smg",nil,3600],
						["optic_Arco",nil,2500],
						["acc_flashlight",nil,1000],
						["optic_Hamr",nil,7500],
						["NVGoggles_INDEP",nil,2000],
						["30Rnd_9x21_Mag",nil,200],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["30Rnd_65x39_caseless_green",nil,275],
						["30Rnd_45ACP_Mag_SMG_01",nil,150]
					]
				];
			};
		};
	};

	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a cop!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,6500],
						["hgun_Pistol_heavy_02_F",nil,9850],
						["hgun_ACPC2_F",nil,11500],
						["hgun_PDW2000_F",nil,20000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["V_Rangemaster_belt",nil,4900],
						["V_Press_F",nil,30000],
						["NVGoggles",nil,2000],
						["16Rnd_9x21_Mag",nil,25],
						["9Rnd_45ACP_Mag",nil,45],
						["6Rnd_45ACP_Cylinder",nil,50],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};
		};
	};

	case "bh":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are a cop!"};
			default
			{
				["Bounty Hunter Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};

	case "donator":
	{
		switch(true) do
		{
			case (__GETC__(life_donator) == 0): {"You are not a donator!"};
			case (__GETC__(life_adminlevel) > 0): 
			{
				["STS Admin Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",0],
						["hgun_Rook40_F",nil,0],
						["hgun_PDW2000_F",nil,0],
						["hgun_Pistol_heavy_01_MRD_F",nil,0],
						["arifle_TRG20_F",nil,0],
						["arifle_Katiba_F",nil,0],
						["arifle_Katiba_C_F",nil,0],
						["arifle_TRG21_F",nil,0],
						["arifle_Mk20_F",nil,0],
						["arifle_Mk20C_F",nil,0],
						["optic_ACO_grn_smg",nil,0],
						["optic_Arco",nil,0],
						["optic_MRCO",nil,0],
						["U_IG_leader",nil,0],
						["U_O_CombatUniform_oucamo",nil,0],
						["U_O_OfficerUniform_ocamo",nil,0],
						["V_PlateCarrierIA2_dgtl",nil,0],
						["H_HelmetSpecO_blk",nil,0],
						["H_HelmetO_ocamo",nil,0],
						["H_HelmetIA_net",nil,0],
						["B_FieldPack_ocamo",nil,0],
						["B_Kitbag_mcamo",nil,0],
						["B_Bergen_sgg",nil,0],
						["B_Carryall_oli",nil,0],
						["B_Carryall_ocamo",nil,0],
						["B_Carryall_oucamo",nil,0],
						["B_Carryall_mcamo",nil,0],
						["B_Carryall_khk",nil,0],
						["B_Carryall_cbr",nil,0],
						["NVGoggles",nil,0],
						["ToolKit",nil,0],
						["itemgps",nil,0],
						["FirstAidKit",nil,0],
						["MiniGrenade","Flashbang",0],
						["16Rnd_9x21_Mag",nil,0],
						["30Rnd_9x21_Mag",nil,0],
						["11Rnd_45ACP_Mag",nil,0],
						["30Rnd_556x45_Stanag",nil,0],
						["30Rnd_65x39_caseless_green",nil,0]
					]
				];
			};
			case (__GETC__(life_donator) == 1):
			{
				["STS Donator Shop Tier 1",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["optic_ACO_grn_smg",nil,750],
						["B_FieldPack_ocamo",nil,900],
						["B_Kitbag_mcamo",nil,1500],
						["B_Bergen_sgg",nil,1500],
						["B_Carryall_oli",nil,3000],
						["B_Carryall_ocamo",nil,3000],
						["B_Carryall_oucamo",nil,3000],
						["B_Carryall_mcamo",nil,3000],
						["B_Carryall_khk",nil,3000],
						["B_Carryall_cbr",nil,3000],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75]
					]
				];
			};

			case (__GETC__(life_donator) == 2):
			{
				["STS Donator Shop Tier 2",
					[
						["hgun_Rook40_F",nil,750],
						["hgun_PDW2000_F",nil,6500],
						["arifle_MK20C_plain_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["B_FieldPack_ocamo",nil,900],
						["B_Kitbag_mcamo",nil,1500],
						["B_Bergen_sgg",nil,1500],
						["B_Carryall_oli",nil,3000],
						["B_Carryall_ocamo",nil,3000],
						["B_Carryall_oucamo",nil,3000],
						["B_Carryall_mcamo",nil,3000],
						["B_Carryall_khk",nil,3000],
						["B_Carryall_cbr",nil,3000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};

			case (__GETC__(life_donator) >= 3):
			{
				["STS Donator Shop Tier 3",
					[
						["hgun_Rook40_F",nil,500],
						["hgun_PDW2000_F",nil,6500],
						["hgun_pistol_heavy_01_F",nil,5850],
						["arifle_Mk20C_F",nil,25000],
						["optic_ACO_grn_smg",nil,750],
						["optic_MRCO",nil,10000],
						["B_FieldPack_ocamo",nil,900],
						["B_Kitbag_mcamo",nil,1500],
						["B_Bergen_sgg",nil,1500],
						["B_Carryall_oli",nil,3000],
						["B_Carryall_ocamo",nil,3000],
						["B_Carryall_oucamo",nil,3000],
						["B_Carryall_mcamo",nil,3000],
						["B_Carryall_khk",nil,3000],
						["B_Carryall_cbr",nil,3000],
						["NVGoggles",nil,350],
						["ToolKit",nil,50],
						["itemgps",nil,50],
						["FirstAidKit",nil,25],
						["16Rnd_9x21_Mag",nil,25],
						["30Rnd_9x21_Mag",nil,75],
						["11Rnd_45ACP_Mag",nil,85],
						["30Rnd_556x45_Stanag",nil,125]
					]
				];
			};
		};
	};

	case "servstat":
	{
		["Altis Service Station",
			[
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150]
			]
		];
	};

	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,150],
				["ItemMap",nil,15],
				["ItemGPS",nil,100],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,2000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};