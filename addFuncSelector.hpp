#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.01)
#define GUI_GRID_H	(0.017)

class AddFuncSelector {
	idd = 11550;
	onLoad = "[_this#0] call EMM_fnc_loadSelector";

	class controls {
		class background: IGUIBack
		{
			idc = -1;
			x = 38.25 * GUI_GRID_W + GUI_GRID_X;
			y = 26.94 * GUI_GRID_H + GUI_GRID_Y;
			w = 23 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
		};
		class FuncCombo: RscCombo
		{
			idc = 2100;
			x = 39 * GUI_GRID_W + GUI_GRID_X;
			y = 27.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 21.5 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;

			class Items
			{
				class default
				{
					text = "Default";
					default = 1;
				};
			};
		};
		class ok_btn: RscButtonMenuOK
		{
			x = 45 * GUI_GRID_W + GUI_GRID_X;
			y = 30.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 2.35294 * GUI_GRID_H;

			onButtonClick = "[ctrlParent (_this select 0)] call EMM_fnc_changeAddFunc;((ctrlParent (_this select 0)) closeDisplay 1)";
		};
		class cancel_btn: RscButtonMenuCancel
		{
			x = 50.5 * GUI_GRID_W + GUI_GRID_X;
			y = 30.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 10 * GUI_GRID_W;
			h = 2.35294 * GUI_GRID_H;

			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1)";
		};
	};
};