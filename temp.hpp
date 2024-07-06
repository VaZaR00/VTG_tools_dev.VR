////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by [J] Vazar, v1.063, #Cibuca)
////////////////////////////////////////////////////////

class background_bg: RscText
{
	idc = 1002;
	x = -30 * GUI_GRID_W + GUI_GRID_X;
	y = 0 * GUI_GRID_H + GUI_GRID_Y;
	w = 260 * GUI_GRID_W;
	h = 200 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.4};
};
class title: RscText
{
	idc = 1003;
	text = "Equipment Module Manager"; //--- ToDo: Localize;
	x = -30 * GUI_GRID_W + GUI_GRID_X;
	y = -0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 260 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.75};
};
class Arsenal_frame: RscFrame
{
	idc = 1800;
	x = 26 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 100 * GUI_GRID_W;
	h = 180 * GUI_GRID_H;
};
class Module_frame: RscFrame
{
	idc = 1801;
	x = 128.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 100 * GUI_GRID_W;
	h = 180 * GUI_GRID_H;
};
class module_Lbl: RscText
{
	idc = 1007;
	text = "Module"; //--- ToDo: Localize;
	x = 170.5 * GUI_GRID_W + GUI_GRID_X;
	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 17.5 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
};
class addToLbl: RscText
{
	idc = 1008;
	text = "Add To"; //--- ToDo: Localize;
	x = 29 * GUI_GRID_W + GUI_GRID_X;
	y = 165 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
};
class amountLbl: RscText
{
	idc = 1009;
	text = "Amount"; //--- ToDo: Localize;
	x = 29 * GUI_GRID_W + GUI_GRID_X;
	y = 182.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
};
class Arsenal_Lbl: RscText
{
	idc = 1005;

	text = "Arsenal"; //--- ToDo: Localize;
	x = 67 * GUI_GRID_W + GUI_GRID_X;
	y = 6.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 17.5 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
};
class Arsenal_Tree: RscTree
{
	idc = 1501;

	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 96 * GUI_GRID_W;
	h = 122 * GUI_GRID_H;
	colorBackground[] = {-1,-1,-1,0.5};
};
class ModuleItems_Tree: RscTree
{
	idc = 1500;

	x = 27.5 * GUI_GRID_W + GUI_GRID_X;
	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 96 * GUI_GRID_W;
	h = 122 * GUI_GRID_H;
	colorBackground[] = {-1,-1,-1,0.5};
};
class search_Input: RscEdit
{
	idc = 1400;

	text = "Search: "; //--- ToDo: Localize;
	x = 30.5 * GUI_GRID_W + GUI_GRID_X;
	y = 148.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 77.5 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
	tooltip = "Search Term"; //--- ToDo: Localize;
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
class AddDestination_Combo: RscCombo
{
	idc = 2100;

	x = 46.5 * GUI_GRID_W + GUI_GRID_X;
	y = 166.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 61 * GUI_GRID_W;
	h = 8.5 * GUI_GRID_H;
};
class clearSearch_Btn: RscButton
{
	idc = 1606;

	text = "Clear"; //--- ToDo: Localize;
	x = 108.5 * GUI_GRID_W + GUI_GRID_X;
	y = 148.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
	tooltip = "Clear Search"; //--- ToDo: Localize;
};
class ArsenalAdd_Btn: RscButton
{
	idc = 1607;

	text = "Add"; //--- ToDo: Localize;
	x = 108.5 * GUI_GRID_W + GUI_GRID_X;
	y = 182.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
	tooltip = "Add X Items To Container"; //--- ToDo: Localize;
};
class deleteOneModuleItem_Btn: RscButton
{
	idc = 1600;

	text = "-"; //--- ToDo: Localize;
	x = 150 * GUI_GRID_W + GUI_GRID_X;
	y = 144 * GUI_GRID_H + GUI_GRID_Y;
	w = 5 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
	tooltip = "Delete 1 Item"; //--- ToDo: Localize;
};
class deleteItems_Btn: RscButton
{
	idc = 1601;

	text = "Delete"; //--- ToDo: Localize;
	x = 157 * GUI_GRID_W + GUI_GRID_X;
	y = 144 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
	tooltip = "Delete All Selected Items"; //--- ToDo: Localize;
	sizeEx = 7 * GUI_GRID_H;
};
class clearModule_Btn: RscButton
{
	idc = 1602;

	text = "Clear"; //--- ToDo: Localize;
	x = 212.5 * GUI_GRID_W + GUI_GRID_X;
	y = 144 * GUI_GRID_H + GUI_GRID_Y;
	w = 14 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
	tooltip = "Clear All Inventory"; //--- ToDo: Localize;
};
class CancelModule_Btn: RscButton
{
	idc = 1603;
	onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1)";

	text = "Cancel"; //--- ToDo: Localize;
	x = 209.5 * GUI_GRID_W + GUI_GRID_X;
	y = 186 * GUI_GRID_H + GUI_GRID_Y;
	w = 16.5 * GUI_GRID_W;
	h = 10 * GUI_GRID_H;
	tooltip = "Close"; //--- ToDo: Localize;
};
class Modules_tree: RscTree
{
	idc = 1500;
	x = -29 * GUI_GRID_W + GUI_GRID_X;
	y = 38.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 52 * GUI_GRID_W;
	h = 160 * GUI_GRID_H;
};
class presetMenu_frame: RscFrame
{
	idc = 1802;
	x = -29 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 25 * GUI_GRID_W;
	h = 27 * GUI_GRID_H;
};
class moduleMenu_frame: RscFrame
{
	idc = 1803;
	x = -2.5 * GUI_GRID_W + GUI_GRID_X;
	y = 9.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 25 * GUI_GRID_W;
	h = 27 * GUI_GRID_H;
};
class ImportPreset_Btn: RscButton
{
	idc = 1606;
	text = "Import"; //--- ToDo: Localize;
	x = -27.5 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 22 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
};
class ExportPreset_Btn: RscButton
{
	idc = 1607;
	text = "Export"; //--- ToDo: Localize;
	x = -27.5 * GUI_GRID_W + GUI_GRID_X;
	y = 27 * GUI_GRID_H + GUI_GRID_Y;
	w = 22 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
};
class PresetMenu_Lbl: RscText
{
	idc = 1005;

	text = "Preset"; //--- ToDo: Localize;
	x = -24 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 17.5 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
};
class ModuleMenu_Lbl: RscText
{
	idc = 1005;

	text = "Module"; //--- ToDo: Localize;
	x = 2 * GUI_GRID_W + GUI_GRID_X;
	y = 7 * GUI_GRID_H + GUI_GRID_Y;
	w = 17.5 * GUI_GRID_W;
	h = 12 * GUI_GRID_H;
};
class MenuCreateModule_Btn: RscButton
{
	idc = 1608;
	text = "Create"; //--- ToDo: Localize;
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = 18 * GUI_GRID_H + GUI_GRID_Y;
	w = 22 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
};
class DeleteModule_Btn: RscButton
{
	idc = 1609;
	text = "Delete"; //--- ToDo: Localize;
	x = -1 * GUI_GRID_W + GUI_GRID_X;
	y = 27 * GUI_GRID_H + GUI_GRID_Y;
	w = 22 * GUI_GRID_W;
	h = 8 * GUI_GRID_H;
};
class Close_Btn: RscButton
{
	idc = 1610;
	text = "X"; //--- ToDo: Localize;
	x = 224.5 * GUI_GRID_W + GUI_GRID_X;
	y = 0.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 4.5 * GUI_GRID_W;
	h = 6 * GUI_GRID_H;
	tooltip = "Current progre will be saved"; //--- ToDo: Localize;
};
class addOneModuleItem_Btn: RscButton
{
	idc = 1600;

	text = "+"; //--- ToDo: Localize;
	x = 143.5 * GUI_GRID_W + GUI_GRID_X;
	y = 144 * GUI_GRID_H + GUI_GRID_Y;
	w = 5 * GUI_GRID_W;
	h = 6.5 * GUI_GRID_H;
	tooltip = "Delete 1 Item"; //--- ToDo: Localize;
};
class ItemModuleMenu_Lbl: RscText
{
	idc = 1004;
	text = "Item: "; //--- ToDo: Localize;
	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
	y = 143.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 15 * GUI_GRID_W;
	h = 7.5 * GUI_GRID_H;
};
class ModuleName_Input: RscEdit
{
	idc = 1402;
	text = "Name: "; //--- ToDo: Localize;
	x = 131 * GUI_GRID_W + GUI_GRID_X;
	y = 153 * GUI_GRID_H + GUI_GRID_Y;
	w = 66 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
};
class Targets_combo: RscCombo
{
	idc = 2101;
	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
	y = 172 * GUI_GRID_H + GUI_GRID_Y;
	w = 50 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
	tooltip = "Select target units"; //--- ToDo: Localize;
};
class ImportModuleItems_Btn: RscButton
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
class TargetUnits_Lbl: RscText
{
	idc = 1005;
	text = "Target units: "; //--- ToDo: Localize;
	x = 129.5 * GUI_GRID_W + GUI_GRID_X;
	y = 164.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 24 * GUI_GRID_W;
	h = 7 * GUI_GRID_H;
	tooltip = "Types of units on who the module will affect"; //--- ToDo: Localize;
};
class UnitsNames_Input: RscEdit
{
	idc = 1403;
	text = "Units: "; //--- ToDo: Localize;
	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
	y = 183.5 * GUI_GRID_H + GUI_GRID_Y;
	w = 67 * GUI_GRID_W;
	h = 10.5 * GUI_GRID_H;
	tooltip = "(Optional) Variable names of units"; //--- ToDo: Localize;
};
class CreateModule_Btn: RscButton
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
class ShowUnits_Btn: RscButton
{
	idc = 1603;
	onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 1)";

	text = "Show"; //--- ToDo: Localize;
	x = 182 * GUI_GRID_W + GUI_GRID_X;
	y = 172 * GUI_GRID_H + GUI_GRID_Y;
	w = 15.5 * GUI_GRID_W;
	h = 9 * GUI_GRID_H;
	tooltip = "Select target units in editor"; //--- ToDo: Localize;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
