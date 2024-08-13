#define GUI_GRID_W	(0.012)
#define GUI_GRID_H	(0.02)

class EMM_name_input_menu {
	idd = 15550;
	onUnload = "EMM_var_temp_rename_open = nil";

	class controls 
	{
		class background: RscText
		{
			idc = -1;
			x = 25 * GUI_GRID_W;
			y = 22.5 * GUI_GRID_H;
			w = 31 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.3};
		};
		class input_field: RscEdit
		{
			idc = 1400;
			x = 33 * GUI_GRID_W;
			y = 24 * GUI_GRID_H;
			w = 21.5 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		class Name_lbl: RscText
		{
			idc = 1001;
			text = "Name: "; //--- ToDo: Localize;
			x = 26 * GUI_GRID_W;
			y = 24 * GUI_GRID_H;
			w = 7 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
		};
		class ok_btn: RscButtonMenuOK
		{
			idc = 1031;
			x = 39 * GUI_GRID_W;
			y = 27.5 * GUI_GRID_H;
			w = 6.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			onButtonClick = "call EMM_fnc_getRenameInput;";
		};
		class cancel_btn: RscButtonMenuCancel
		{
			idc = 1032;
			x = 46 * GUI_GRID_W;
			y = 27.5 * GUI_GRID_H;
			w = 9.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			onButtonClick = "call EMM_fnc_close;EMM_var_temp_ENTERED_NAME = false";
		};
	};
};
