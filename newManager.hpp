
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
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

class EquipmentModulesManager {
	idd = 11549;
	//enableSimulation = 1;
	enableDisplay = 1;
	onLoad = "uiNamespace setVariable ['EquipmentModulesManager', _this select 0]";
	onUnload = "uiNamespace setVariable ['EquipmentModulesManager', displayNull]";
	class controlsBackground {		
		class BackgroundDisableTiles : ctrlStaticBackgroundDisableTiles {};
		class BackgroundDisable : ctrlStaticBackgroundDisable {};
		class background_bg: RscText
		{
			idc = -1;
			x = -30 * GUI_GRID_W + GUI_GRID_X;
			y = 0 * GUI_GRID_H + GUI_GRID_Y;
			w = 260 * GUI_GRID_W;
			h = 200 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.7};
		};
		class title: RscText
		{
			idc = -1;
			text = "Equipment Module Manager"; //--- ToDo: Localize;
			x = -30 * GUI_GRID_W + GUI_GRID_X;
			y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 260 * GUI_GRID_W;
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
			x = 224.5 * GUI_GRID_W + GUI_GRID_X;
			y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 4.5 * GUI_GRID_W;
			h = 6 * GUI_GRID_H;
			tooltip = "Current progre will be saved"; //--- ToDo: Localize;
		};
//////////////////////////////////////////////////////////////////////////////////////		
////////    Modules Explorer    //////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
		class Modules_tree: RscTree
		{
			idc = 1778;
			x = -29 * GUI_GRID_W + GUI_GRID_X;
			y = 38.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 52 * GUI_GRID_W;
			h = 160 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};

			onLoad = "call VTG_fnc_initTreeItems";
		};
		////// Preset Menu ///////
		class Preset_Menu_frame: RscFrame
		{
			idc = 1802;
			x = -29 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 25 * GUI_GRID_W;
			h = 27 * GUI_GRID_H;
		};
		class Preset_Menu_Lbl: RscText
		{
			idc = 1005;

			text = "Preset"; //--- ToDo: Localize;
			x = -24 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
		};
		class Preset_Import_Btn: RscButton
		{
			idc = 1606;
			text = "Import"; //--- ToDo: Localize;
			x = -27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 22 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
		};
		class Preset_Export_Btn: RscButton
		{
			idc = 1607;
			text = "Export"; //--- ToDo: Localize;
			x = -27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 27 * GUI_GRID_H + GUI_GRID_Y;
			w = 22 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
		};
		////// Module Menu ///////
		class Module_Menu_frame: RscFrame
		{
			idc = 1803;
			x = -2.5 * GUI_GRID_W + GUI_GRID_X;
			y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 25 * GUI_GRID_W;
			h = 27 * GUI_GRID_H;
		};
		class Module_Menu_Lbl: RscText
		{
			idc = 1005;

			text = "Module"; //--- ToDo: Localize;
			x = 2 * GUI_GRID_W + GUI_GRID_X;
			y = 7 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
		};
		class Module_Menu_Create_Btn: RscButton
		{
			idc = 1608;
			text = "Create"; //--- ToDo: Localize;
			x = -1 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 22 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
		};
		class Module_Menu_Delete_Btn: RscButton
		{
			idc = 1609;
			text = "Delete"; //--- ToDo: Localize;
			x = -1 * GUI_GRID_W + GUI_GRID_X;
			y = 27 * GUI_GRID_H + GUI_GRID_Y;
			w = 22 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
		};

//////////////////////////////////////////////////////////////////////////////////////		
////////    Arsenal    ///////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
		
		class Arsenal_Lbl: RscText
		{
			idc = 1005;

			text = "Arsenal"; //--- ToDo: Localize;
			x = 67 * GUI_GRID_W + GUI_GRID_X;
			y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
		};
		class Arsenal_frame: RscFrame
		{
			idc = 1800;
			x = 26 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 100 * GUI_GRID_W;
			h = 180 * GUI_GRID_H;
		};
		class Arsenal_Tree: RscTree
		{
			idc = 1501;

			x = 27.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 96 * GUI_GRID_W;
			h = 122 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};
		};
		// class ArsenalLoading_Disable: 
		// {
		// 	idc = 1536;

		// 	x = 27.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 96 * GUI_GRID_W;
		// 	h = 122 * GUI_GRID_H;
		// };

		////////////////////////////////////////
		/////////  Arsenal operations  /////////
		////////////////////////////////////////

		/*------ search ------*/
		class search_Lbl: RscText
		{
			idc = 1599;

			text = "Search: "; //--- ToDo: Localize;
			x = 29 * GUI_GRID_W + GUI_GRID_X;
			y = 148.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
			tooltip = "Search Term"; //--- ToDo: Localize;
		};
		class search_Input: RscEdit
		{
			idc = 1598;

			text = ""; //--- ToDo: Localize;
			x = 46.5 * GUI_GRID_W + GUI_GRID_X;
			y = 148.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 60 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
			tooltip = "Search Term"; //--- ToDo: Localize;
		};
		class search_Clear_Btn: RscButton
		{
			idc = 1606;

			text = "Clear"; //--- ToDo: Localize;
			x = 108.5 * GUI_GRID_W + GUI_GRID_X;
			y = 148.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
			tooltip = "Clear Search"; //--- ToDo: Localize;
			onButtonClick = "[] call VTG_fnc_clearSearch";
		};
		/*------ add to ------*/
		class AddTo_Lbl: RscText
		{
			idc = 1008;
			text = "Add To"; //--- ToDo: Localize;
			x = 29 * GUI_GRID_W + GUI_GRID_X;
			y = 165 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
		};
		class AddTo_Combo: RscCombo
		{
			idc = 2100;

			x = 46.5 * GUI_GRID_W + GUI_GRID_X;
			y = 166.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 61 * GUI_GRID_W;
			h = 8.5 * GUI_GRID_H;

			class items 
			{
				class General
				{
					text = "General";
					default = 1;
				};
				class Uniform
				{
					text = "Uniform";
				};
				class Vest
				{
					text = "Vest";
				};
				class Backpack
				{
					text = "Backpack";
				};
			};
		};
		/*------ amount ------*/
		class amount_Lbl: RscText
		{
			idc = 1009;
			text = "Amount"; //--- ToDo: Localize;
			x = 29 * GUI_GRID_W + GUI_GRID_X;
			y = 182.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
		};
		class amount_Input: RscEdit
		{
			idc = 1401;

			text = "1"; //--- ToDo: Localize;
			x = 46.5 * GUI_GRID_W + GUI_GRID_X;
			y = 183 * GUI_GRID_H + GUI_GRID_Y;
			w = 60 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
			tooltip = "Amount of Items to Add"; //--- ToDo: Localize;
		};
		/*------  add item ------*/
		class AddItem_Arsenal_Btn: RscButton
		{
			idc = 1607;

			text = "Add"; //--- ToDo: Localize;
			x = 108.5 * GUI_GRID_W + GUI_GRID_X;
			y = 182.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 12 * GUI_GRID_H;
			tooltip = "Add X Items To Module"; //--- ToDo: Localize;
			onButtonClick = "[] call VTG_fnc_addItemFromArsenal";
		};

//////////////////////////////////////////////////////////////////////////////////////		
////////    Module    ///////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////

		class Module_Lbl: RscText
		{
			idc = 1007;
			text = "Module"; //--- ToDo: Localize;
			x = 170.5 * GUI_GRID_W + GUI_GRID_X;
			y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 17.5 * GUI_GRID_W;
			h = 8 * GUI_GRID_H;
		};
		class Module_frame: RscFrame
		{
			idc = 1801;
			x = 128.5 * GUI_GRID_W + GUI_GRID_X;
			y = 18 * GUI_GRID_H + GUI_GRID_Y;
			w = 100 * GUI_GRID_W;
			h = 180 * GUI_GRID_H;
		};
		class Module_Items_Tree: RscTree
		{
			idc = 1500;

			x = 130.5 * GUI_GRID_W + GUI_GRID_X;
			y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 96 * GUI_GRID_W;
			h = 122 * GUI_GRID_H;
			colorBackground[] = {0,0,0,0.5};

			onTreeSelChanged = "[] call VTG_fnc_updateAddFunc";
		};

		////////////////////////////////////////
		/////////  Module operations  //////////
		////////////////////////////////////////

		/*------ item ------*/
		class Item_module_Lbl: RscText
		{
			idc = 1004;
			text = "Item: "; //--- ToDo: Localize;
			x = 130.5 * GUI_GRID_W + GUI_GRID_X;
			y = 143.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15 * GUI_GRID_W;
			h = 7.5 * GUI_GRID_H;
		};
		class Add_OneItem_module_Btn: RscButton
		{
			idc = 1600;

			shortcuts[] = {"107"};
			text = "+"; //--- ToDo: Localize;
			x = 143.5 * GUI_GRID_W + GUI_GRID_X;
			y = 144 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			tooltip = "Add 1 Item"; //--- ToDo: Localize;
			onButtonClick = "[] call VTG_fnc_modifyModuleItem";
		};
		class Delete_OneItem_module_Btn: RscButton
		{
			idc = 1600;

			shortcuts[] = {"109"};
			text = "-"; //--- ToDo: Localize;
			x = 150 * GUI_GRID_W + GUI_GRID_X;
			y = 144 * GUI_GRID_H + GUI_GRID_Y;
			w = 5 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			tooltip = "Delete 1 Item"; //--- ToDo: Localize;
			onButtonClick = "[] call VTG_fnc_deleteModuleItems";
		};
		class Delete_Items_module_Btn: RscButton
		{
			idc = 1601;

			shortcuts[] = {"46"};
			text = "Delete"; //--- ToDo: Localize;
			x = 157 * GUI_GRID_W + GUI_GRID_X;
			y = 144 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			tooltip = "Delete All Selected Items"; //--- ToDo: Localize;
			sizeEx = 7 * GUI_GRID_H;
			onButtonClick = "[true] call VTG_fnc_deleteModuleItems";
		};
		class Import_Items_module_Btn: RscButton
		{
			idc = 1601;

			text = "Import"; //--- ToDo: Localize;
			x = 172.5 * GUI_GRID_W + GUI_GRID_X;
			y = 144 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			tooltip = "Import items from arsenal"; //--- ToDo: Localize;
			sizeEx = 7 * GUI_GRID_H;
		};
		/*------ function ------*/
		class function_module_Lbl: RscText
		{
			idc = 1684;
			text = "Function:"; //--- ToDo: Localize;
			x = 130.5 * GUI_GRID_W + GUI_GRID_X;
			y = 153 * GUI_GRID_H + GUI_GRID_Y;
			w = 17 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			tooltip = "The ""Add"" function of this item"; //--- ToDo: Localize;
		};
		class function_Change_module_Btn: RscButton
		{
			idc = 1686;
			onButtonClick = "[true] call VTG_fnc_openSelector";

			text = "none"; //--- ToDo: Localize;
			x = 149 * GUI_GRID_W + GUI_GRID_X;
			y = 153 * GUI_GRID_H + GUI_GRID_Y;
			w = 48 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			tooltip = "Click to change ""Add"" function"; //--- ToDo: Localize;
		};
		/*------ Name ------*/
		class Name_module_Lbl: RscText
		{
			idc = 1409;
			text = "Name:"; //--- ToDo: Localize;
			x = 130.5 * GUI_GRID_W + GUI_GRID_X;
			y = 165.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 13 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
		};
		class Name_module_Input: RscEdit
		{
			idc = 1442;
			text = ""; //--- ToDo: Localize;
			x = 145 * GUI_GRID_W + GUI_GRID_X;
			y = 165.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 52 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
		};
		/*------ Targets ------*/
		class TargetUnits_Lbl: RscText
		{
			idc = 1005;
			text = "Target units: "; //--- ToDo: Localize;
			x = 130.5 * GUI_GRID_W + GUI_GRID_X;
			y = 177 * GUI_GRID_H + GUI_GRID_Y;
			w = 24 * GUI_GRID_W;
			h = 7 * GUI_GRID_H;
			tooltip = "Types of units on who the module will affect"; //--- ToDo: Localize;
		};
		class TargetUnits_combo: RscCombo
		{
			idc = 2101;
			x = 131.5 * GUI_GRID_W + GUI_GRID_X;
			y = 184.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 50 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			tooltip = "Select target units"; //--- ToDo: Localize;
		};
		class TargetUnits_Show_Btn: RscButton
		{
			idc = 1603;
			onButtonClick = "";

			text = "Show"; //--- ToDo: Localize;
			sizeEx = 6.5 * GUI_GRID_H;
			x = 155 * GUI_GRID_W + GUI_GRID_X;
			y = 177 * GUI_GRID_H + GUI_GRID_Y;
			w = 11 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			tooltip = "Select target units in editor"; //--- ToDo: Localize;
		};
		class TargetUnits_Edit_Btn: RscButton
		{
			idc = 1661;
			onButtonClick = "call VTG_fnc_openEditTargetsMenu";

			text = "Edit"; //--- ToDo: Localize;
			x = 183 * GUI_GRID_W + GUI_GRID_X;
			y = 184.5 * GUI_GRID_H + GUI_GRID_Y;
			w = 15.5 * GUI_GRID_W;
			h = 9 * GUI_GRID_H;
			tooltip = "Edit custom units/names/classes"; //--- ToDo: Localize;
		};
		/*------ Other ------*/
		class Clear_module_Btn: RscButton
		{
			idc = 1602;

			text = "Clear"; //--- ToDo: Localize;
			x = 212.5 * GUI_GRID_W + GUI_GRID_X;
			y = 144 * GUI_GRID_H + GUI_GRID_Y;
			w = 14 * GUI_GRID_W;
			h = 6.5 * GUI_GRID_H;
			tooltip = "Clear All Inventory"; //--- ToDo: Localize;
			onButtonClick = "call VTG_fnc_clearModule";
		};
		class Create_module_Btn: RscButton
		{
			idc = 1603;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1)";

			text = "Create"; //--- ToDo: Localize;
			x = 210 * GUI_GRID_W + GUI_GRID_X;
			y = 175 * GUI_GRID_H + GUI_GRID_Y;
			w = 16.5 * GUI_GRID_W;
			h = 10 * GUI_GRID_H;
			tooltip = "Create/Modify module"; //--- ToDo: Localize;
		};
		class Cancel_module_Btn: RscButton
		{
			idc = 1603;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1)";

			text = "Cancel"; //--- ToDo: Localize;
			x = 210 * GUI_GRID_W + GUI_GRID_X;
			y = 186 * GUI_GRID_H + GUI_GRID_Y;
			w = 16.5 * GUI_GRID_W;
			h = 10 * GUI_GRID_H;
			tooltip = "Close"; //--- ToDo: Localize;
		};


		// class UnitsNames_Input: RscEdit
		// {
		// 	idc = 1403;
		// 	text = ""; //--- ToDo: Localize;
		// 	x = 145 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 184.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 52 * GUI_GRID_W;
		// 	h = 9 * GUI_GRID_H;
		// 	tooltip = "(Optional) Variable names of units"; //--- ToDo: Localize;
		// };
		// class UnitsNames_Lbl: RscText
		// {
		// 	idc = 1407;
		// 	text = "Units"; //--- ToDo: Localize;
		// 	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 183.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 13 * GUI_GRID_W;
		// 	h = 10.5 * GUI_GRID_H;
		// 	tooltip = "(Optional) Variable names of units"; //--- ToDo: Localize;
		// };
	};
};
