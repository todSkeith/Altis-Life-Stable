class life_dj_panel
{
	idd = 38401;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class mainbackground: Life_RscText
		{
			colorBackground[] = {0,0,0,0.7};
			idc = 5000;
			x = 0.05;
			y = 0.08;
			w = 0.9;
			h = 0.84;
		};
		class titlebackground: Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = 5001;
			x = 0.2625;
			y = 0.08;
			w = 0.475;
			h = 0.12;
		};
		class musictitlebackground: Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = 5002;
			x = 0.0875;
			y = 0.4;
			w = 0.15;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
		class effecttitlebackground: Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = 5003;
			x = 0.7375;
			y = 0.4;
			w = 0.175;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
		class title: Life_RscText
		{
			idc = 5004;
			text = "Club Sloth DJ Panel"; //--- ToDo: Localize;
			x = 0.2625;
			y = 0.08;
			w = 0.475;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
		class musictitle: Life_RscText
		{
			idc = 5005;
			text = "Music"; //--- ToDo: Localize;
			x = 0.1;
			y = 0.4;
			w = 0.15;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
		class logo: life_RscPicture
		{
			idc = 5006;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.3;
			y = 0.4;
			w = 0.4;
			h = 0.44;
		};
		class effectstitle: Life_RscText
		{
			idc = 5007;
			text = "Effects"; //--- ToDo: Localize;
			x = 0.7375;
			y = 0.4;
			w = 0.175;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
	};

	class controls
	{
		class dancelights: Life_RscButton
		{
			idc = 5008;
			text = "Dance Lights"; //--- ToDo: Localize;
			onLBSelChanged = "_this call life_fnc_ncstage";
			x = 0.075;
			y = 0.24;
			w = 0.3;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
		class stagelights: Life_RscButton
		{
			idc = 5009;
			text = "Stage Lights"; //--- ToDo: Localize;
			onLBSelChanged = "_this call life_fnc_nclights";
			x = 0.625;
			y = 0.24;
			w = 0.3;
			h = 0.12;
			sizeEx = 2 * GUI_GRID_H;
		};
		class musiclist: Life_RscListBox
		{
			idc = 5010;
			onLBSelChanged = "_this call life_fnc_NOTHINGYET";
			x = 0.0875;
			y = 0.54;
			w = 0.175;
			h = 0.3;
		};
		class effectlist: Life_RscListBox
		{
			idc = 5011;
			onLBSelChanged = "_this call life_fnc_NOTHINGYET";
			x = 0.7375;
			y = 0.54;
			w = 0.175;
			h = 0.3;
		};
		class close: Life_RscButton
		{
			idc = 5012;
			text = "Close"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0;";
			x = 0.425;
			y = 0.84;
			w = 0.15;
			h = 0.08;
			sizeEx = 2 * GUI_GRID_H;
		};
	};
};

