#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.012)
#define GUI_GRID_H	(0.02)

class EMM_failedItemsReport{
	idd = 69413;

	onUnload = "EMM_EQUIP_TEST_FAILED_ARR = nil;EMM_EQUIP_TEST_BOOL = nil;EMM_check_load = nil;";
	class controls 
	{
		class IGUIBack_2200: IGUIBack
		{
			idc = -1;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 45 * GUI_GRID_W;
			h = 49.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.3};
		};
		class RscButtonMenuOK_2600: RscButtonMenuOK
		{
			x = 58 * GUI_GRID_W + GUI_GRID_X;
			y = 47.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 6.5 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
		};
		class RscButtonMenuCopy_2700: RscButtonMenuCancel
		{
			text = "COPY"; //--- ToDo: Localize;
			x = 49 * GUI_GRID_W + GUI_GRID_X;
			y = 47.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 8 * GUI_GRID_W;
			h = 2 * GUI_GRID_H;
			onButtonClick = "[] call EMM_fnc_copyReport";
		};
		class text_ctrlGroup : RscControlsGroup
		{
			idc = -1;
			x = 21 * GUI_GRID_W + GUI_GRID_X;
			y = 2.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 43 * GUI_GRID_W;
			h = 44.5 * GUI_GRID_H;

			class controls {
				class STRUCTURED_TEXT_report: RscStructuredText
				{
					idc = 1500;
					x = 0 * GUI_GRID_W + GUI_GRID_X;
					y = 0 * GUI_GRID_H + GUI_GRID_Y;
					w = 43 * GUI_GRID_W;
					h = 1000 * GUI_GRID_H;
					colorBackground[] = {0,0,0,0.5};
				};
			};
		};
		class IGUIBack_2201: IGUIBack
		{
			idc = -1;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 45 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.8};
		};
		class RscText_1000: RscText
		{
			idc = -1;
			text = "Failed to give"; //--- ToDo: Localize;
			x = 20 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 2.5 * GUI_GRID_H;
			sizeEx = 1.5 * GUI_GRID_H;
		};
	};
};