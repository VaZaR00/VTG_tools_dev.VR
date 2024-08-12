#include "defines.hpp"
#include "manager.hpp"
#include "addFuncSelector.hpp"
#include "TargetsMenu.hpp"
#include "failedReport.hpp"
#include "cfgFunctions.hpp"
#include "presetManager.hpp"

class CfgPatches
{
	class Equipment_Modules_Manager
	{
		// Meta information for editor
		name = "Equipment Modules Manager";
		author = "Vazar";

		// Minimum compatible version. When the game's version is lower, pop-up warning will appear when launching the game. Note: was disabled on purpose some time late into Arma 2: OA.
		requiredVersion = 1.60;
		// Required addons, used for setting load order. (CfgPatches classname NOT PBO filename!)
		// When any of the addons are missing, a pop-up warning will appear when launching the game.
		requiredAddons[] = { "A3_Functions_F", "3DEN" };

		units[] = {};
		weapons[] = {};
		// Optional. If this is 1, if any of requiredAddons[] entry is missing in your game the entire config will be ignored and return no error (but in rpt) so useful to make a compat Mod (Since Arma 3 2.14)
		skipWhenMissingDependencies = 1;
		is3DENmod = 1;
	};
};

class Cfg3DEN
{
	class Mission
	{
		class EMM_attributes
		{
			displayName = "EMM_attributes";
			class AttributeCategories
			{
				class EMM_storage
				{
					class Attributes
					{
						class EMM_EQUIP_STORAGE
						{
							property="EMM_EQUIP_STORAGE";
							defaultValue="";
						};
					};
				};
			};
		};
	};
};

class ctrlMenuStrip;
class display3DEN
{
	class Controls
	{
		class MenuStrip : ctrlMenuStrip
		{
			class Items
			{
				class Tools
				{
					items[] += { "EMM_OpenManager" }; // += must be used; you want to expand the array, not override it!
				};

				class EMM_OpenManager
				{
					text = "Equipment Manager"; // Item text
					action = "[] spawn EMM_fnc_openModulesManager;"; // Expression called upon clicking; ideally, it should call your custom function
					opensNewWindow = 1;// Adds '...' to the name of the menu entry, indicating the user that a new window will be opened.
				};
			};
		};
	};
};