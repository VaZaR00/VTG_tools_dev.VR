class EMM_equipManager
{
	idd = 6532;

	class controls
	{
		class EMM_manager_background: IGUIBack
		{
			idc = 2200;
			x = 0.310495 * safezoneW + safezoneX;
			y = 0.208479 * safezoneH + safezoneY;
			w = 0.37901 * safezoneW;
			h = 0.611255 * safezoneH;
		};
		class EMM_modules_treeView1: RscTree
		{
			idc = 1500;
			x = 0.319309 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.0837348 * safezoneW;
			h = 0.517216 * safezoneH;
			onLoad = "call EMM_fnc_initTreeItems";
		};
		class EMM_arsenal_background: IGUIBack
		{
			idc = 2201;
			x = 0.411858 * safezoneW + safezoneX;
			y = 0.537616 * safezoneH + safezoneY;
			w = 0.27324 * safezoneW;
			h = 0.244502 * safezoneH;
		};
		class EMM_moduleItems_background: IGUIBack
		{
			idc = 2202;
			x = 0.411858 * safezoneW + safezoneX;
			y = 0.293114 * safezoneH + safezoneY;
			w = 0.27324 * safezoneW;
			h = 0.235098 * safezoneH;
		};
		class EMM_moduleItems_text: RscText
		{
			idc = 1000;
			text = $STR_A3_EMM_equipManager_EMM_moduleItems_text;
			x = 0.522035 * safezoneW + safezoneX;
			y = 0.302518 * safezoneH + safezoneY;
			w = 0.0440709 * safezoneW;
			h = 0.00940393 * safezoneH;
		};
		class EMM_Arsenal_text: RscText
		{
			idc = 1001;
			text = $STR_A3_EMM_equipManager_EMM_Arsenal_text;
			x = 0.535257 * safezoneW + safezoneX;
			y = 0.54702 * safezoneH + safezoneY;
			w = 0.0308496 * safezoneW;
			h = 0.00940393 * safezoneH;
		};
		class EMM_Arsenal_ctrlGroup: RscControlsGroup
		{
			idc = 2300;
			x = 0.416265 * safezoneW + safezoneX;
			y = 0.565828 * safezoneH + safezoneY;
			w = 0.264426 * safezoneW;
			h = 0.206886 * safezoneH;
			class Controls
			{
			};
		};
		class EMM_ModuleItems_ctrlGroup: RscControlsGroup
		{
			idc = 2301;
			x = 0.416265 * safezoneW + safezoneX;
			y = 0.321325 * safezoneH + safezoneY;
			w = 0.264426 * safezoneW;
			h = 0.197482 * safezoneH;
			class VScrollbar : ScrollBar
			{
				color[] = {1,1,1,1};
				width = 0.021;
				autoScrollEnabled = 1;
			};
			class Controls
			{
			};
		};
		class EMM_ModuleName_edit: RscEdit
		{
			idc = 1400;
			text = $STR_A3_EMM_equipManager_RscEdit_1400;
			x = 0.411858 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.10577 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_ManagerHeader_structText: RscStructuredText
		{
			idc = 1100;
			text = $STR_A3_EMM_equipManager_EMM_ManagerHeader_structText;
			x = 0.310495 * safezoneW + safezoneX;
			y = 0.208478 * safezoneH + safezoneY;
			w = 0.37901 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_type_text: RscText
		{
			idc = 1002;
			text = $STR_A3_EMM_equipManager_EMM_type_text;
			x = 0.522035 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.0176284 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_type_placeholder: RscText
		{
			idc = 1003;
			text = $STR_A3_EMM_equipManager_EMM_type_placeholder;
			x = 0.544071 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.048478 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_units_text: RscText
		{
			idc = 1004;
			text = $STR_A3_EMM_equipManager_EMM_units_text;
			x = 0.596956 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.0264426 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_units_placeholder: RscText
		{
			idc = 1005;
			text = $STR_A3_EMM_equipManager_EMM_units_placeholder;
			x = 0.623399 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.048478 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_close_btn: RscButton
		{
			idc = 1600;
			x = 0.680691 * safezoneW + safezoneX;
			y = 0.208478 * safezoneH + safezoneY;
			w = 0.00881418 * safezoneW;
			h = 0.0188079 * safezoneH;
			tooltip = $STR_A3_EMM_equipManager_EMM_close_btn_tooltip;
		};
		class EMM_cancel_btn: RscButtonMenuCancel
		{
			x = 0.60577 * safezoneW + safezoneX;
			y = 0.791522 * safezoneH + safezoneY;
			w = 0.0352567 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_create_btn: RscButtonMenu
		{
			idc = 2400;
			//text = $STR_A3_EMM_equipManager_EMM_create_btn;
			text = "Create";
			x = 0.645434 * safezoneW + safezoneX;
			y = 0.791522 * safezoneH + safezoneY;
			w = 0.0352567 * safezoneW;
			h = 0.0188079 * safezoneH;
			action = "call EMM_fnc_createBtnFunc";
			//action = "call EMM_fnc_initTreeItems";
		};
		class EMM_preset_menuStrip: RscButton
		{
			idc = 1601;
			text = $STR_A3_EMM_equipManager_EMM_preset_menuStrip;
			x = 0.350159 * safezoneW + safezoneX;
			y = 0.23669 * safezoneH + safezoneY;
			w = 0.0308496 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_module_menuStrip: RscButton
		{
			idc = 1602;
			text = $STR_A3_EMM_equipManager_EMM_module_menuStrip;
			x = 0.319309 * safezoneW + safezoneX;
			y = 0.23669 * safezoneH + safezoneY;
			w = 0.0264426 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
		class EMM_help_btn: RscButton
		{
			idc = 1603;
			text = $STR_A3_EMM_equipManager_EMM_help_btn;
			x = 0.385416 * safezoneW + safezoneX;
			y = 0.23669 * safezoneH + safezoneY;
			w = 0.0308496 * safezoneW;
			h = 0.0188079 * safezoneH;
		};
	};
};
