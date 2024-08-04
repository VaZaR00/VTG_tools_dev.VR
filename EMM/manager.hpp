#define GUI_GRID_W	(0.005)
#define GUI_GRID_H	(0.005)

/*
class RscText;
class RscButton;
class RscListbox;
class RscEdit;
class RscTree;
class ctrlStaticBackgroundDisable;
class ctrlStaticBackgroundDisableTiles;
*/

class EMM_EquipmentModulesManager {
	idd = 11549;
	//enableSimulation = 1;
	enableDisplay = 1;
	onLoad = "uiNamespace setVariable ['EMM_EquipmentModulesManager', _this select 0]";
	onUnload = "call EMM_fnc_unload";
	class controlsBackground {		
		class BackgroundDisableTiles : ctrlStaticBackgroundDisableTiles {};
		class BackgroundDisable : ctrlStaticBackgroundDisable {};
		class background_bg: RscText
		{
			idc = -1;
			x = -33 * GUI_GRID_W;
			y = 0 * GUI_GRID_H;
			w = 263 * GUI_GRID_W;
			h = 210.5 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		class title: RscText
		{
			idc = -1;
			text = "Equipment Module Manager"; //--- ToDo: Localize;
			x = -33 * GUI_GRID_W;
			y = -0.5 * GUI_GRID_H;
			w = 263 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.75};
		};
	};

	class controls {
		class Close_Btn: RscButton
		{
			idc = 1610;
			//text = "a3\3den\data\controlsgroups\tutorial\close_ca.paa"; //--- ToDo: Localize;
			text = "X";
			x = 224.5 * GUI_GRID_W;
			y = 0.5 * GUI_GRID_H;
			w = 4.5 * GUI_GRID_W;
			h = 6 * GUI_GRID_H;
			tooltip = "Current progres will be saved"; //--- ToDo: Localize;
			onButtonClick = "call EMM_fnc_close";
		};

		class Modules_tree_grp: RscControlsGroupNoScrollbars
		{
			idc = 1779;
			x = -32 * GUI_GRID_W;
			y = 18 * GUI_GRID_H;
			w = 56 * GUI_GRID_W;
			h = 180 * GUI_GRID_H;

			class controls
			{
				class Add_folder_btn : ctrlButtonToolbar
				{
					idc = 9566;
					x = 0 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 6 * GUI_GRID_W;
					h = 7 * GUI_GRID_H;
					text = "\a3\3DEN\Data\Displays\Display3DEN\PanelLeft\entityList_layer_ca.paa";
					tooltip = "New folder";

					onButtonClick = "['Folder'] call EMM_fnc_addElement";
				};
				class Remove_folder_btn : Add_folder_btn
				{
					idc = 9567;
					x = 7 * GUI_GRID_W;
					text = "\a3\3DEN\Data\Displays\Display3DEN\PanelLeft\entityList_layerRemove_ca.paa";
					tooltip = "Delete folder";

					onButtonClick = "['Folder'] call EMM_fnc_deleteElementMiddleware";
				};
				class Rename_btn : RscButton
				{
					idc = 9667;
					x = 14 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 6 * GUI_GRID_W;
					h = 7 * GUI_GRID_H;
					colorBackground[] = {0,0,0,0.3};

					text = "R";
					tooltip = "Rename module/folder";

					onButtonClick = "call EMM_fnc_openRenameMenu";
				};
				class Search_folder_input_edit : RscEdit
				{
					idc = 9568;
					x = 21 * GUI_GRID_W;
					y = 0.4 * GUI_GRID_H;
					w = 29 * GUI_GRID_W;
					h = 6.8 * GUI_GRID_H;
					tooltip = "Search";
					sizeEx = 6.7 * GUI_GRID_H;
				};
				class Search_folder_btn : Add_folder_btn
				{
					idc = 9569;
					x = 50 * GUI_GRID_W;
					colorBackground[] = {0,0,0,0.5};
					text = "\a3\3DEN\Data\Displays\Display3DEN\search_start_ca.paa";
					tooltip = "Search";

					onButtonClick = "call EMM_fnc_loadModulesTree";
				};

				class Modules_tree_grp: RscControlsGroup
				{
					idc = 1178;
					//x = -32 * GUI_GRID_W;
					//y = 18 * GUI_GRID_H;
					x = 0 * GUI_GRID_W;
					y = 8 * GUI_GRID_H;
					w = 56 * GUI_GRID_W;
					h = 171 * GUI_GRID_H;

					class HScrollBar : ScrollBar
					{
						height = 0.017;
					};

					class controls
					{
						class Modules_tree: RscTree
						{
							idc = 1778;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 57 * GUI_GRID_W;
							h = 168 * GUI_GRID_H;
							colorBackground[] = {0,0,0,0.5};

							onTreeDblClick = "_this call EMM_fnc_setCurrentModule";
						};
					};
				};
			};
		};
		class Menu: DBUG_MENU_STRIP
		{
			idc = 1008;

			x = -32 * GUI_GRID_W;
			y = 8 * GUI_GRID_H;
			w = 50 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;

			class items
			{
				items[]=
				{
					"preset",
					"module",
					"compile"
				};
				class preset
				{
					text="Preset";
					items[]=
					{
						"Import",
						"Export",
						"Export_All"
					};
				};
				class module
				{
					text="Module";
					items[]=
					{
						"New",
						"Delete"
					};
				};
				class compile
				{
					text="Compile";
					items[]=
					{
						"Set",
						"Give",
						"Give_All"
					};
				};
				class Import
				{
					text="Import";
					action = "[] call EMM_fnc_import";
				};
				class Export
				{
					text="Export";
					action = "[true] call EMM_fnc_export";
					tooltip = "Export cuurently open module";
				};
				class Export_All
				{
					text="Export All";
					action = "[] call EMM_fnc_export";
					tooltip = "Export ALL modules";
				};
				class New
				{
					text="New";
					action = "['Module'] call EMM_fnc_addElement";
					//picture = "\a3\3DEN\Data\Displays\Display3DEN\ToolBar\new_ca.paa";
					shortcuts[] = {"512+0x31"};
				};
				class Delete
				{
					text="Delete";
					shortcuts[] = {"512+0x20"};
					action = "['Module'] call EMM_fnc_deleteElementMiddleware";
				};
				class Set
				{
					text="Set";
					action = "[] call EMM_fnc_setGLmodule";
					tooltip = "Compiles modules code and sets it to Game Logic module, so equipment is applied upon mission start";
				};
				class Give
				{
					text="Give";
					action = "[true] call EMM_fnc_applyInEditor";
					tooltip = "Compiles currently open module and applies to its targets with test, so you can see if all items are given";
				};
				class Give_All
				{
					text="Give All";
					action = "[] call EMM_fnc_applyInEditor";
					tooltip = "Compiles all modules and applies to its targets with test, so you can see if all items are given";
				};
				class Default;
			};
		};

		class Arsenal_frame: RscFrame
		{
			idc = 1800;
			x = 26 * GUI_GRID_W;
			y = 18 * GUI_GRID_H;
			w = 100 * GUI_GRID_W;
			h = 180 * GUI_GRID_H;
		};
		class Arsenal_grp: RscControlsGroupNoScrollbars
		{
			idc = 1511;

			x = 26 * GUI_GRID_W;
			y = 6.5 * GUI_GRID_H;
			w = 100 * GUI_GRID_W;
			h = 191.5 * GUI_GRID_H;
			//colorBackground[] = {0,0,0,0.5};
			//onTreeDblClick = "[] call EMM_fnc_addItemFromArsenal";
			class controls
			{
				class ArsenalBackground_bg: RscText
				{
					idc = -1;

					x = 1.7 * GUI_GRID_W;
					y = 13.2 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 122 * GUI_GRID_H;
					colorBackground[] = {0,0,0,0.5};
					//onTreeDblClick = "[] call EMM_fnc_addItemFromArsenal";
				};
				class Arsenal_Lbl: RscText
				{
					idc = 1005;

					text = "Arsenal"; //--- ToDo: Localize;
					style = 2;
					x = 30 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 40 * GUI_GRID_W;
					h = 12 * GUI_GRID_H;
				};
				class Arsenal_Loading_Lbl: RscText
				{
					idc = 1338;

					text = "LOADING..."; //--- ToDo: Localize;
					style = 2;
					font = "PuristaBold";
					SizeEx = 20 * GUI_GRID_H;
					x = 1.7 * GUI_GRID_W;
					y = 13.2 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 122 * GUI_GRID_H;
					colorBackground[] = {0,0,0,0.7};
				};
				class Arsenal_Items_lbox: RscListNBox
				{
					idc = 1501;

					x = 1.7 * GUI_GRID_W;
					y = 13.2 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 122 * GUI_GRID_H;
					onLBDblClick = "[] call EMM_fnc_addItemFromArsenal";
				};
				class Category_grp : RscControlsGroupNoScrollbars
				{
					idc = 4564;
					x = 3 * GUI_GRID_W;
					y = 136.5 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 15 * GUI_GRID_H;
					class controls
					{
						class category_Lbl: RscText
						{
							idc = 6357;

							text = "Category: "; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 18 * GUI_GRID_W;
							h = 12 * GUI_GRID_H;
							tooltip = "Choose arsenal category"; //--- ToDo: Localize;
						};
						class category_Combo: RscCombo
						{
							idc = 6355;

							x = 20 * GUI_GRID_W;
							y = 2.5 * GUI_GRID_H;
							w = 74 * GUI_GRID_W;
							h = 8.5 * GUI_GRID_H;
							tooltip = "Choose arsenal category";

							onLBSelChanged = "EMM_Arsenal_filter = {true}; EMM_attachs_currentWeapon_path = []; [] call EMM_fnc_loadArsenalItems";
						};
					};
				};
				class Search_grp : RscControlsGroupNoScrollbars
				{
					idc = 4594;
					x = 3 * GUI_GRID_W;
					y = 156 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 15 * GUI_GRID_H;
					class controls
					{
						class search_Lbl: RscText
						{
							idc = 1599;

							text = "Search: "; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 15 * GUI_GRID_W;
							h = 12 * GUI_GRID_H;
							tooltip = "Search Term"; //--- ToDo: Localize;
						};
						class search_Input: RscEdit
						{
							idc = 1598;

							text = ""; //--- ToDo: Localize;
							x = 17.5 * GUI_GRID_W;
							y = 1 * GUI_GRID_H;
							w = 60 * GUI_GRID_W;
							h = 10 * GUI_GRID_H;
							tooltip = "Search Term"; //--- ToDo: Localize;
						};
						class search_Clear_Btn: RscButton
						{
							idc = 1606;

							text = "Clear"; //--- ToDo: Localize;
							x = 79.5 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 15 * GUI_GRID_W;
							h = 12 * GUI_GRID_H;
							tooltip = "Clear Search"; //--- ToDo: Localize;
							onButtonClick = "[] call EMM_fnc_clearSearch";
						};
					};
				};
				class Amount_grp : RscControlsGroupNoScrollbars
				{
					idc = 4565;
					x = 3 * GUI_GRID_W;
					y = 176.5 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 11.2 * GUI_GRID_H;
					class controls
					{
						class amount_Lbl: RscText
						{
							idc = 1009;
							text = "Amount:"; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 15.5 * GUI_GRID_W;
							h = 12 * GUI_GRID_H;
						};
						class amount_Input: RscEdit
						{
							idc = 1401;

							text = "1"; //--- ToDo: Localize;
							x = 17.5 * GUI_GRID_W;
							y = 0.5 * GUI_GRID_H;
							w = 60 * GUI_GRID_W;
							h = 10 * GUI_GRID_H;
							tooltip = "Amount of Items to Add"; //--- ToDo: Localize;
						};
						class AddItem_Arsenal_Btn: RscButton
						{
							idc = 1607;

							text = "Add"; //--- ToDo: Localize;
							x = 79.5 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 15 * GUI_GRID_W;
							h = 12 * GUI_GRID_H;
							tooltip = "Add X Items To Module"; //--- ToDo: Localize;
							onButtonClick = "[] call EMM_fnc_addItemFromArsenal";
						};
					};
				};
			};
		};

		class Module_frame: RscFrame
		{
			idc = 1801;
			x = 128.5 * GUI_GRID_W;
			y = 18 * GUI_GRID_H;
			w = 100 * GUI_GRID_W;
			h = 180 * GUI_GRID_H;
		};
		class Module_grp: RscControlsGroupNoScrollbars
		{
			idc = 6451;

			x = 128.5 * GUI_GRID_W;
			y = 6.5 * GUI_GRID_H;
			w = 100 * GUI_GRID_W;
			h = 191.5 * GUI_GRID_H;
			class controls
			{
				class Module_Lbl: RscText
				{
					idc = 1005;

					text = "Module"; //--- ToDo: Localize;
					style = 2;
					x = 30 * GUI_GRID_W;
					y = 0 * GUI_GRID_H;
					w = 40 * GUI_GRID_W;
					h = 12 * GUI_GRID_H;
				};
				class Module_tree_tabs_grp: RscControlsGroupNoScrollbars
				{
					idc = 8644;

					x = 1.7 * GUI_GRID_W;
					y = 13.2 * GUI_GRID_H;
					w = 96.5 * GUI_GRID_W;
					h = 122 * GUI_GRID_H;

					class controls
					{
					};
				};
				class Module_tabs : RscControlsGroupNoScrollbars
				{
					idc = 3568;
					x = 1.7 * GUI_GRID_W;
					y = 135.2 * GUI_GRID_H;
					w = 50 * GUI_GRID_W;
					h = 10 * GUI_GRID_H;

					class controls
					{
						class inventory_tab_bg : Rsctext
						{
							idc = 3320;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 10 * GUI_GRID_W;
							h = 10 * GUI_GRID_H;
							colorBackground[] = {0,0,0,0.3};
						};
						class inventory_tab_btn : RscActivePicture
						{
							idc = 3330;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 10 * GUI_GRID_W;
							h = 10 * GUI_GRID_H;
							text = "\a3\Ui_F_Curator\Data\RscCommon\RscAttributeInventory\filter_0_ca.paa";
							tooltip = "Inventory";

							onButtonClick = "[0] call EMM_fnc_setModuleTab";
						};
						class uniform_tab_bg : inventory_tab_bg
						{
							idc = 3321;
							x = 11 * GUI_GRID_W;
						};
						class uniform_tab_btn : inventory_tab_btn
						{
							idc = 3331;
							x = 11 * GUI_GRID_W;
							text = "\a3\Ui_F_Curator\Data\RscCommon\RscAttributeInventory\filter_8_ca.paa";
							tooltip = "Uniform";

							onButtonClick = "[1] call EMM_fnc_setModuleTab";
						};
						class vest_tab_bg : inventory_tab_bg
						{
							idc = 3322;
							x = 22 * GUI_GRID_W;
						};
						class vest_tab_btn : inventory_tab_btn
						{
							idc = 3332;
							x = 22 * GUI_GRID_W;
							text = "\a3\Ui_F_Curator\Data\RscCommon\RscAttributeInventory\filter_9_ca.paa";
							tooltip = "Vest";

							onButtonClick = "[2] call EMM_fnc_setModuleTab";
						};
						class backpack_tab_bg : inventory_tab_bg
						{
							idc = 3323;
							x = 33 * GUI_GRID_W;
						};
						class backpack_tab_btn : inventory_tab_btn
						{
							idc = 3333;
							x = 33 * GUI_GRID_W;
							text = "\a3\Ui_F_Curator\Data\RscCommon\RscAttributeInventory\filter_10_ca.paa";
							tooltip = "Backpack";

							onButtonClick = "[3] call EMM_fnc_setModuleTab";
						};
					};
				};
				class Clear_module_Btn: RscButton
				{
					idc = 1602;

					text = "Clear"; //--- ToDo: Localize;
					x = 84 * GUI_GRID_W;
					y = 136.5 * GUI_GRID_H;
					w = 14 * GUI_GRID_W;
					h = 8 * GUI_GRID_H;
					tooltip = "Clear All Inventory"; //--- ToDo: Localize;
					onButtonClick = "tvClear (EMM_ActiveModuleTab#1)";
				};
				class Items_operations_grp : RscControlsGroupNoScrollbars
				{
					idc = 4563;
					x = 1 * GUI_GRID_W;
					y = 149 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 15 * GUI_GRID_H;
					class controls
					{
						class Item_module_Lbl: RscText
						{
							idc = 1004;
							text = "Item: "; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = -0.3 * GUI_GRID_H;
							w = 15 * GUI_GRID_W;
							h = 7.5 * GUI_GRID_H;
						};
						class Add_OneItem_module_Btn: RscButton
						{
							idc = 1600;

							text = "+"; //--- ToDo: Localize;
							x = 13 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 5 * GUI_GRID_W;
							h = 6.5 * GUI_GRID_H;
							tooltip = "Add 1 Item"; //--- ToDo: Localize;
							onButtonClick = "[EMM_ActiveModuleTab#1, tvCurSel (EMM_ActiveModuleTab#1), 1] call EMM_fnc_modifyItem";
							shortcuts[] = {"0x4E"};
						};
						class Delete_OneItem_module_Btn: RscButton
						{
							idc = 1600;

							text = "-"; //--- ToDo: Localize;
							x = 19.5 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 5 * GUI_GRID_W;
							h = 6.5 * GUI_GRID_H;
							tooltip = "Delete 1 Item"; //--- ToDo: Localize;
							onButtonClick = "[EMM_ActiveModuleTab#1, tvCurSel (EMM_ActiveModuleTab#1), -1] call EMM_fnc_modifyItem";
							shortcuts[] = {"0x4A"};
						};
						class Delete_Items_module_Btn: RscButton
						{
							idc = 1601;

							text = "Delete"; //--- ToDo: Localize;
							x = 26.5 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 14 * GUI_GRID_W;
							h = 6.5 * GUI_GRID_H;
							tooltip = "Delete All Selected Items"; //--- ToDo: Localize;
							sizeEx = 7 * GUI_GRID_H;
							onButtonClick = "[EMM_ActiveModuleTab#1, tvCurSel (EMM_ActiveModuleTab#1)] call EMM_fnc_deleteItem";
							shortcuts[] = {"0xD3"};
						};
						class Import_Items_module_Btn: RscButton
						{
							idc = 1601;

							text = "Import"; //--- ToDo: Localize;
							x = 42 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 14 * GUI_GRID_W;
							h = 6.5 * GUI_GRID_H;
							tooltip = "Import items from arsenal"; //--- ToDo: Localize;
							sizeEx = 7 * GUI_GRID_H;
							onButtonClick = "[] spawn EMM_fnc_importFromArsenal";
						};
						class Attachments_Items_module_Btn: RscButton
						{
							idc = 1605;

							text = "Attachments"; //--- ToDo: Localize;
							style = 2;
							x = 57.5 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 23 * GUI_GRID_W;
							h = 6.5 * GUI_GRID_H;
							tooltip = "Edit weapon Attachments"; //--- ToDo: Localize;
							sizeEx = 7 * GUI_GRID_H;
							onButtonClick = "[] call EMM_fnc_editWeapAttach";
						};
					};
				};
				class Function_grp : RscControlsGroupNoScrollbars
				{
					idc = 4561;
					x = 1 * GUI_GRID_W;
					y = 159.3 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 15 * GUI_GRID_H;
					class controls
					{
						class function_module_Lbl: RscText
						{
							idc = 1684;
							text = "Function:"; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 17 * GUI_GRID_W;
							h = 9 * GUI_GRID_H;
							tooltip = "The ""Add"" function of this item"; //--- ToDo: Localize;
						};
						class function_Change_module_Btn: RscButton
						{
							idc = 1686;
							onButtonClick = "call EMM_fnc_openSelector";

							text = "none"; //--- ToDo: Localize;
							x = 18.5 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 48 * GUI_GRID_W;
							h = 9 * GUI_GRID_H;
							tooltip = "Click to change ""Add"" function"; //--- ToDo: Localize;
						};
					};
				};
				class Targets_grp : RscControlsGroupNoScrollbars
				{
					idc = 4565;
					x = 2 * GUI_GRID_W;
					y = 171 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 17 * GUI_GRID_H;
					class controls
					{
						class TargetUnits_Lbl: RscText
						{
							idc = 1016;
							text = "Target units: "; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 24 * GUI_GRID_W;
							h = 7 * GUI_GRID_H;
							tooltip = "Types of units on who the module will affect"; //--- ToDo: Localize;
						};
						class TargetUnits_combo: RscCombo
						{
							idc = 2101;
							x = 0.5 * GUI_GRID_W;
							y = 7.5 * GUI_GRID_H;
							w = 50 * GUI_GRID_W;
							h = 9 * GUI_GRID_H;
							tooltip = "Select target units"; //--- ToDo: Localize;

							onLBSelChanged = "[_this#0, _this#1] call EMM_fnc_showEditBtn";
						};
						class TargetUnits_Edit_Btn: RscButton
						{
							idc = 1661;

							text = "Edit"; //--- ToDo: Localize;
							x = 52.5 * GUI_GRID_W;
							y = 7.5 * GUI_GRID_H;
							w = 15.5 * GUI_GRID_W;
							h = 9 * GUI_GRID_H;
							tooltip = "Edit custom units/names/classes"; //--- ToDo: Localize;
						};
					};
				};
				class Module_operations_grp : RscControlsGroupNoScrollbars
				{
					idc = 4565;
					x = 79 * GUI_GRID_W;
					y = 157 * GUI_GRID_H;
					w = 96 * GUI_GRID_W;
					h = 32.2 * GUI_GRID_H;
					class controls
					{
						class Rename_module_Btn: RscButton
						{
							idc = 3652;

							text = "Rename"; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 0 * GUI_GRID_H;
							w = 18.5 * GUI_GRID_W;
							h = 10 * GUI_GRID_H;
							tooltip = "Rename module"; //--- ToDo: Localize;
							onButtonClick = "call EMM_fnc_openRenameMenu";
						};
						class Save_module_Btn: Rename_module_Btn
						{
							idc = 3653;

							text = "Save"; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 11 * GUI_GRID_H;
							tooltip = "Save module"; //--- ToDo: Localize;

							onButtonClick = "call EMM_fnc_saveModule";
						};
						class Delete_module_Btn: Rename_module_Btn
						{
							idc = 3654;

							text = "Delete"; //--- ToDo: Localize;
							x = 0 * GUI_GRID_W;
							y = 22 * GUI_GRID_H;
							tooltip = "Delete module"; //--- ToDo: Localize;

							onButtonClick = "[] call EMM_fnc_deleteModule";
						};
					};
				};
			};
		};
		
		class EMM_options_line_ctrlG : RscControlsGroupNoVScrollbars
		{
			idc = 1874;
			x = -31 * GUI_GRID_W;
			y = 198.3 * GUI_GRID_H;
			w = 258 * GUI_GRID_W;
			h = 11 * GUI_GRID_H;

			class HScrollBar : ScrollBar
			{
				height = 0.017;
			};

			class controls
			{

			};
		};
	};
};
