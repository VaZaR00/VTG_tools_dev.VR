#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)

class EMM_presetManager
{
	idd = 12337;
	enableDisplay = 1;
	onUnload = "[] call EMM_fnc_onUnloadPM";

	class controlsBackground {
		class background: RscText
		{
			idc = -1;
			x = 1 * GUI_GRID_W;
			y = 1 * GUI_GRID_H;
			w = 38 * GUI_GRID_W;
			h = 23 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.5};
		};
		class header: RscText
		{
			idc = -1;
			text = "Presets manager";
			x = 1 * GUI_GRID_W;
			y = 1 * GUI_GRID_H;
			w = 38 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			colorBackground[] = {-1,-1,-1,0.8};
			sizeEx = 0.92 * GUI_GRID_H;
		};
	};

	class controls
	{
		class close_btn: ctrlButtonToolbar
		{
			idc = 1600;
			x = 38 * GUI_GRID_W;
			y = 1 * GUI_GRID_H;
			w = 1 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			text = "a3\3den\data\controlsgroups\tutorial\close_ca.paa";
			onButtonClick = "call EMM_fnc_close";
		};
		class preset_listnbox_bg: RscText
		{
			idc = 1499;
			x = 1.5 * GUI_GRID_W;
			y = 2.2 * GUI_GRID_H;
			w = 37 * GUI_GRID_W;
			h = 17.3 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.4};
		};
		class preset_listnbox: RscListNBox
		{
			idc = 1500;
			x = 1.5 * GUI_GRID_W;
			y = 2.2 * GUI_GRID_H;
			w = 37 * GUI_GRID_W;
			h = 17.3 * GUI_GRID_H;
		};
		class search_grp: RscControlsGroupNoScrollbars
		{
			idc = 2302;
			x = 1.7 * GUI_GRID_W;
			y = 19.6 * GUI_GRID_H;
			w = 15 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			class Controls
			{
				class search_lbl: RscText
				{
					idc = 2313;
					text = "Search: ";
					x = 0 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 3 * GUI_GRID_W;
					h = 1.3 * GUI_GRID_H;
				};
				class search_Input: RscEdit
				{
					idc = 2314;
					x = 3.2 * GUI_GRID_W;
					y = 0.2 * GUI_GRID_H;
					w = 9 * GUI_GRID_W;
					h = 1 * GUI_GRID_H;
					tooltip = "Enter search term";
				};
				class Clear_Search_btn : ctrlButtonToolbar
				{
					idc = 2315;
					x = 12.2 * GUI_GRID_W;
					y = 0.2 * GUI_GRID_H;
					w = 1.3 * GUI_GRID_W;
					h = 0.9 * GUI_GRID_H;
					colorBackground[] = {0,0,0,0.5};
					text = "a3\3den\data\displays\display3den\panelleft\entitylist_delete_ca.paa";
					tooltip = "Clear search";

					onButtonClick = "[2] call EMM_fnc_clearSearch;"; 
				};
			};
		};
		
		class save_load_grp: RscControlsGroupNoScrollbars
		{
			idc = 2301;
			x = 32.2 * GUI_GRID_W;
			y = 22.5 * GUI_GRID_H;
			w = 7 * GUI_GRID_W;
			h = 1.6 * GUI_GRID_H;
			class Controls
			{
				// class save_btn: RscButton
				// {
				// 	idc = 1602;
				// 	text = "Save";
				// 	x = 0 * GUI_GRID_W;
				// 	y = 0 * GUI_GRID_H;
				// 	w = 3 * GUI_GRID_W;
				// 	h = 1.2 * GUI_GRID_H;
				// 	tooltip = "Save current preset";
				// 	onButtonClick = "[true] spawn EMM_fnc_presetsList_addItem";
				// };
				class load_btn: RscButton
				{
					idc = 1601;
					text = "Load";
					x = 3.3 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 3 * GUI_GRID_W;
					h = 1.2 * GUI_GRID_H;
					tooltip = "Load selected preset";
					onButtonClick = "[] call EMM_fnc_loadPreset";
				};
			};
		};
		
		class crud_grp: RscControlsGroupNoScrollbars
		{
			idc = 2300;
			x = 23.6 * GUI_GRID_W;
			y = 19.7 * GUI_GRID_H;
			w = 15.3 * GUI_GRID_W;
			h = 1.5 * GUI_GRID_H;
			class Controls
			{
				class new_btn: RscButton
				{
					idc = 1603;
					text = "New";
					x = 0 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 2.5 * GUI_GRID_W;
					h = 1.3 * GUI_GRID_H;
					tooltip = "Save Current unsaved preset or create new empty preset";
					onButtonClick = "[false] spawn EMM_fnc_presetsList_addItem";
				};
				class rename_btn: new_btn
				{
					idc = 1604;
					text = "Rename";
					x = 2.8 * GUI_GRID_W;
					w = 4 * GUI_GRID_W;
					tooltip = "Rename selected preset";
					onButtonClick = "[] spawn EMM_fnc_presetsList_renameItem";
				};
				class delete_btn: new_btn
				{
					idc = 1605;
					text = "Delete";
					x = 7.1 * GUI_GRID_W;
					w = 3 * GUI_GRID_W;
					tooltip = "Delete selected preset";
					onButtonClick = "[] call EMM_fnc_presetsList_deleteItem";
				};
				class Clear_All_btn: new_btn
				{
					idc = 1605;
					text = "Clear All";
					x = 10.4 * GUI_GRID_W;
					w = 4.5 * GUI_GRID_W;
					tooltip = "Clear ALL data";
					onButtonClick = "[ctrlParent (_this#0)] call EMM_fnc_clearPreset";
				};
			};
		};
		class export_import_grp: RscControlsGroupNoScrollbars
		{
			idc = 2305;
			x = 1.5 * GUI_GRID_W;
			y = 22.5 * GUI_GRID_H;
			w = 20 * GUI_GRID_W;
			h = 1.6 * GUI_GRID_H;
			class Controls
			{
				class import_btn: RscButton
				{
					idc = 1662;
					text = "Import";
					x = 0 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 3 * GUI_GRID_W;
					h = 1.2 * GUI_GRID_H;
					tooltip = "Import presets from clipboard";
					onButtonClick = "[] call EMM_fnc_importPresetsPM";
				};
				class export_all_btn: import_btn
				{
					idc = 1663;
					text = "Export All";
					x = 3.3 * GUI_GRID_W;
					w = 4.2 * GUI_GRID_W;
					tooltip = "Export All presets";
					onButtonClick = "[] call EMM_fnc_exportPresetsPM";
				};
				class export_sel_btn: import_btn
				{
					idc = 1663;
					text = "Export Sel.";
					x = 7.8 * GUI_GRID_W;
					w = 4.2 * GUI_GRID_W;
					tooltip = "Export selected preset";
					onButtonClick = "[true] call EMM_fnc_exportPresetsPM";
				};
			};
		};
	};
};

