/*-------- Weapon Attachments --------*/
		// class WeapAttach_Tree_hidden: RscTree
		// {
		// 	idc = 1239;

		// 	x = 27.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 25.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 96 * GUI_GRID_W;
		// 	h = 117 * GUI_GRID_H;
		// 	colorBackground[] = {0,0,0,0.5};
		// 	onTreeDblClick = "[] call EMM_fnc_addItemFromArsenal";
		// };
		// class WeapAttachClose_Btn_hidden: RscButton
		// {
		// 	idc = 1238;
		// 	//text = "a3\3den\data\controlsgroups\tutorial\close_ca.paa"; //--- ToDo: Localize;
		// 	text = "X";
		// 	x = 118.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 19 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 5 * GUI_GRID_W;
		// 	h = 6 * GUI_GRID_H;
		// 	tooltip = "Close weapon attachments menu"; //--- ToDo: Localize;
		// 	onButtonClick = "call EMM_fnc_closeWeapAttachMenu";
		// };

		// class Module_Lbl: RscText
		// {
		// 	idc = 1007;
		// 	text = "New Module"; //--- ToDo: Localize;
		// 	style = 2;
		// 	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 8.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 96 * GUI_GRID_W;
		// 	h = 8 * GUI_GRID_H;
		// };
		
		// class Module_Items_Tree: RscTree
		// {
		// 	idc = 1500;

		// 	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 20.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 96 * GUI_GRID_W;
		// 	h = 122 * GUI_GRID_H;
		// 	colorBackground[] = {0,0,0,0.5};

		// 	onTreeSelChanged = "[] call EMM_fnc_onTreeSelect";
		// 	onTreeDblClick = "_this call EMM_fnc_editWeapAttach";
		// };

		////////////////////////////////////////
		/////////  Module operations  //////////
		////////////////////////////////////////

		/*------ item ------*/
		
		/*------ function ------*/
		
		/*------ Name ------*/
		// class Name_module_Lbl: RscText
		// {
		// 	idc = 1409;
		// 	text = "Name:"; //--- ToDo: Localize;
		// 	x = 130.5 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 165.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 13 * GUI_GRID_W;
		// 	h = 9 * GUI_GRID_H;
		// };
		// class Name_module_Input: RscEdit
		// {
		// 	idc = 1442;
		// 	text = ""; //--- ToDo: Localize;
		// 	x = 145 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 165.5 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 52 * GUI_GRID_W;
		// 	h = 9 * GUI_GRID_H;
		// };
		/*------ Targets ------*/
		
		/*------ Other ------*/
		
		// class Create_module_Btn: RscButton
		// {
		// 	idc = 1603;
		// 	onButtonClick = "";

		// 	text = "Create"; //--- ToDo: Localize;
		// 	x = 210 * GUI_GRID_W + GUI_GRID_X;
		// 	y = 175 * GUI_GRID_H + GUI_GRID_Y;
		// 	w = 16.5 * GUI_GRID_W;
		// 	h = 10 * GUI_GRID_H;
		// 	tooltip = "Create/Modify module"; //--- ToDo: Localize;
		// };