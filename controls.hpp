////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by [J] Vazar, v1.063, #Xuzizy)
////////////////////////////////////////////////////////
class TEST_MENU
{
	idd = 1488;

	class controls
	{
		class TEST_FRAME: RscFrame
		{
			idc = 1800;
			x = 0.323716 * safezoneW + safezoneX;
			y = 0.264902 * safezoneH + safezoneY;
			w = 0.352567 * safezoneW;
			h = 0.470196 * safezoneH;
		};
		class TEST_LISTBOX: RscListbox
		{
			idc = 1500;
			x = 0.341345 * safezoneW + safezoneX;
			y = 0.405961 * safezoneH + safezoneY;
			w = 0.0661064 * safezoneW;
			h = 0.169271 * safezoneH;
		};
		class TEST_ADD_BTN: RscButton
		{
			idc = 1600;
			text = "Add"; //--- ToDo: Localize;
			x = 0.495593 * safezoneW + safezoneX;
			y = 0.471788 * safezoneH + safezoneY;
			w = 0.0352567 * safezoneW;
			h = 0.0470196 * safezoneH;
			action = "execVM 'addItem.sqf'";
		};
		

	};
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
