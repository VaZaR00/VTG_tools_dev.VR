class IGUIBack;
class RscText;
class RscFrame;
class RscButton;
class RscEdit;
class RscCombo;
class RscTree;
class RscStructuredText;
class RscControlsGroup;
class RscButtonMenuOK;
class RscButtonMenuCancel;
class RscCheckBox;
class ctrlStaticBackgroundDisableTiles;
class ctrlStaticBackgroundDisable;
class ctrlMenuStrip;
class RscControlsGroupNoVScrollbars;
class ScrollBar;

//from advanced developer tools
class EMM_DBUG_MENU_STRIP: ctrlMenuStrip
{
	idc=-99;
	onSetFocus="call DBUG_fnc_handleFocus";
	onLoad="call DBUG_fnc_initCtrl";
	resizeFlags=4;
	font="PuristaMedium";
	colorBorder[]={0,0,0,0};
	colorBackground[]={0,0,0,1};
	colorText[]={1,1,1,1};
	colorSelect[]={0,0,0,1};
	colorSelectBackground[]=
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R', 0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G', 0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B', 0.08])",
		1
	};
	colorDisabled[]={1,1,1,0.25};
	colorPicture[]={1,1,1,1};
	colorPictureSelect[]={0,0,0,1};
	colorPictureDisabled[]={1,1,1,0.5};
	arrow="\a3\3DEN\Data\Controls\ctrlMenu\arrow_ca.paa";
	rowHeight=0;
	itemSpacingW="0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
	itemSpacingH="0.25 * (((safezoneW / safezoneH) min 1.2) / 30)";
	pictureCheckboxEnabled="\a3\3DEN\Data\Controls\CtrlMenu\pictureCheckboxEnabled_ca.paa";
	pictureCheckboxDisabled="#(argb,8,8,3)color(0,0,0,0)";
	pictureRadioEnabled="\a3\3DEN\Data\Controls\CtrlMenu\pictureRadioEnabled_ca.paa";
	pictureRadioDisabled="#(argb,8,8,3)color(0,0,0,0)";
	colorStripBackground[]={0,0,0,0};
	colorStripText[]={1,1,1,1};
	colorStripSelect[]={0,0,0,1};
	colorStripSelectBackground[]=
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R', 0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G', 0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B', 0.08])",
		1
	};
	colorStripDisabled[]={1,1,1,0.25};
	class Items
	{
	};
};