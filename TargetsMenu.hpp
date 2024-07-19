#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.012)
#define GUI_GRID_H	(0.02)

class EMM_TargetsMenu{
	idd = 9854;

	onLoad = "[_this select 0] call EMM_fnc_loadTargetsMenu";
	class controls 
	{
		class background: IGUIBack
		{
			idc = -1;
			x = 25 * GUI_GRID_W + GUI_GRID_X;
			y = 9 * GUI_GRID_H + GUI_GRID_Y;
			w = 33.5 * GUI_GRID_W;
			h = 31 * GUI_GRID_H;
		};
		class Classes_tree: RscTree
		{
			idc = 1568;
			x = 26 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 31.5 * GUI_GRID_W;
			h = 22.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};

			onTreeSelChanged = "_this call EMM_fnc_onSelectTarget";
		};
		class Ok_btn: RscButton
		{
			idc = 1600;
			text = "OK"; //--- ToDo: Localize;
			x = 43.5 * GUI_GRID_W + GUI_GRID_X;
			y = 37.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;

			onButtonClick = "call EMM_fnc_setTargets; _this call EMM_fnc_close";
		};
		class Cancel_btn: RscButton
		{
			idc = 1601;
			text = "Cancel"; //--- ToDo: Localize;
			x = 51 * GUI_GRID_W + GUI_GRID_X;
			y = 37.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;

			onButtonClick = "_this call EMM_fnc_close";
		};
		class Include_Lbl: RscText
		{
			idc = 1002;
			text = "Include:"; //--- ToDo: Localize;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 32.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class Exclude_Lbl: RscText
		{
			idc = 1006;
			text = "Exclude:"; //--- ToDo: Localize;
			x = 25.5 * GUI_GRID_W + GUI_GRID_X;
			y = 35 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class Include_edit: RscEdit
		{
			idc = 1400;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = 32.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 24.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Write Variable Names of units dividing by commas (,). It`s for individual manipulation";
		};
		class Exclude_edit: RscEdit
		{
			idc = 1401;
			x = 33 * GUI_GRID_W + GUI_GRID_X;
			y = 35 * GUI_GRID_H + GUI_GRID_Y;
			w = 24.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			tooltip = "Write Variable Names of units dividing by commas (,). It`s for individual manipulation";
		};
	};
};