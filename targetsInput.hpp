#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.012)
#define GUI_GRID_H	(0.02)

class VTG_TargetsInput{
	idd = 9854;

	class controls 
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = 2200;
			x = 26 * GUI_GRID_W + GUI_GRID_X;
			y = 16.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 31.5 * GUI_GRID_W;
			h = 19.5 * GUI_GRID_H;
		};
		class TargetTypesCombo: RscCombo
		{
			idc = 2100;
			x = 31 * GUI_GRID_W + GUI_GRID_X;
			y = 33.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 16 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;

			class Items
			{
				class Class
				{
					text = "Class";
					tooltip = "Text will be interpreted as classnames";
					default = 1;
				};
				class varNames
				{
					text = "Variable names";
					tooltip = "Text will be interpreted as units variable names";
				};
				class callsign
				{
					text = "Callsigns (Role names)";
					tooltip = "Text will be interpreted as units callsign (role description)";
				};
				class sides
				{
					text = "Sides";
					tooltip = "Text will be interpreted as Sides";
				};
			};
		};
		class combo_lbl: RscText
		{
			idc = 2101;

			text = "By: ";
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 33.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscEdit_1400: RscEdit
		{
			idc = 1400;
			x = 27 * GUI_GRID_W + GUI_GRID_X;
			y = 17.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 29.6 * GUI_GRID_W;
			h = 15 * GUI_GRID_H;
			tooltip = "Write elements dividing by (,) or (;)";
		};
		class RscButtonMenuOK_2600: RscButtonMenuOK
		{
			idc = 2600;

			x = 51.6 * GUI_GRID_W + GUI_GRID_X;
			y = 33.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;

			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1)";
		};
	};
};