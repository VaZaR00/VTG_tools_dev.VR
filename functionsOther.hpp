class CfgFunctions
{
	class EMM_ui
	{
		tag = "EMM";
		class dialog 
		{
			file = "Functions\EquipmentControl\Interface\dialog";
			class open {};
			class getUIelements {};
			class message {};
			class close {};
			class unload {};
		};
		class ModulesTree
		{
			file = "Functions\EquipmentControl\Interface\ModulesTree";
			class addItemToTree {};
			class loadModulesTree {};
			class setCurrentModule {};
			class changeModule {};
			class warning {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Menu    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Menu_Module
		{
			file = "Functions\EquipmentControl\Interface\Menu\Module";
			class createNewModule {};
			class newModule {};
			class menuDeleteModule {};
		};
		class Menu_Preset
		{
			file = "Functions\EquipmentControl\Interface\Menu\Preset";
			class export {};
			class import {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Arsenal    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Arsenal 
		{
			file = "Functions\EquipmentControl\Interface\Arsenal";
			class loadArsenal {};
			class loadAddToCombo {};
			class getAmountInput {};
			class onSearchKeyUp {};
			class clearSearch {};
			class setCompositeModule {};
			class checkForComposites {};
		};
		class Arsenal_addingItem
		{
			file = "Functions\EquipmentControl\Interface\Arsenal\addingItem";
			class addItemFromArsenal {};
			class peekItem {};
			class itemDestination {};
			class getAmountIfStack {};
			class addItemMiddleware {};
			class isWeaponAttachment {};
			class checkIfRandom {};
		};
		class Arsenal_weapAttach
		{
			file = "Functions\EquipmentControl\Interface\Arsenal\weaponAttachments";
			class closeWeapAttachMenu {};
			class editWeapAttach {};
			class attachLbl {};
			class checkForAttachLbl {};
			class isWeapon {};
		};
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Inventory    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class ModuleInventory
		{
			file = "Functions\EquipmentControl\Interface\ModuleInventory";
			class checkModule {};
			class checkSaveModule {};
			class onTreeSelect {};
			class resetModule {};
		};
		class ModuleInventory_ItemOperations
		{
			file = "Functions\EquipmentControl\Interface\ModuleInventory\itemOperations";
			class addItemToModule {};
			class clearModule {};
			class deleteModuleItems {};
			class modifyModuleItem {};
		};
		class ModuleInventory_loadItems
		{
			file = "Functions\EquipmentControl\Interface\ModuleInventory\loadItems";
			class importFromArsenal {};
			class loadModuleData {};
			class loadModuleItems {};
			class setModuleItem {};
		};
		class ModuleInventory_addFuncSelect 
		{
			file = "Functions\EquipmentControl\Interface\ModuleInventory\AddFuncSelector";
			class changeAddFunc {};
			class loadSelector {};
			class openSelector {};
			class updateAddFunc {};
		};
		class ModuleInventory_targets
		{
			file = "Functions\EquipmentControl\Interface\ModuleInventory\targets";
			class addTargetToCombo {};
			class getTargetsByClass {};
			class getTargetSides {};
			class loadTargetsCombo {};
			class getTargetOptionName {};
		};
		class ModuleInventory_targets_menu
		{
			file = "Functions\EquipmentControl\Interface\ModuleInventory\targets\menu";
			class openEditTargetsMenu {};
			class loadTargetsMenu {};
			class onSelectTarget {};
			class showEditBtn {};
			class setTargets {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////  Systems  /////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Categories_
		{
			file = "Functions\EquipmentControl\Categories";
			class categorySortIndex {};
			class getCategory {};
			class iterate {};
			class checkCategories {};
		};	
		class Items_
		{
			file = "Functions\EquipmentControl\Items";
			class findRootConfig {};
			class getAllItems {};
			class getClassDisplayName {};
			class getItemTypeFunc {};
			class validPic {};
		};
	};


////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////  Other  /////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////


	class EMM_equipModule_system
	{
		tag = "EMM";
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	compilers    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class compilers_applyModules
		{
			file = "Functions\EquipmentControl\compilers\applyModules";
			class applyInEditor {};
			class compileItemFunc {};
			class compileModule {};
			class compiler {};
			class convertAttributeToFunction {};
			class prepareStorage {};
			class setGLmodule {};
		};
		class compilers_applyModules_failedReport
		{
			file = "Functions\EquipmentControl\compilers\applyModules\failedReport";
			class copyReport {};
			class failedToGiveReport {};
			class failedToLoadReport {};
			class checkIfFail {};
		};
		class compilers_import
		{
			file = "Functions\EquipmentControl\compilers\import";
			class parser_middleware {};
			class bi_arsenalExportParser {};
			class convertFunctionToAttribute {};
		};
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Repository    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class repository
		{
			file = "Functions\EquipmentControl\repository";
			class saveModule {};
			class deleteModule {};
			class modulesAmount {};
		};
		class repository_moduleItems
		{
			file = "Functions\EquipmentControl\repository\moduleItems";
			class parseModuleItemsTree {};
		};
		class repository_storage
		{
			file = "Functions\EquipmentControl\repository\storage";
			class addModulesToStorage {};
			class getModulesStorage {};
			class saveItemToStorage {};
			class setStorage {};
		};
	};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////  Other Systems  /////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

	class Naming
	{
		tag = "VTG";
		class _main_
		{
			file = "Functions\naming";
			class message {};
		};
		class _squad_
		{
			file = "Functions\naming\squadNames";
			class clearSqNames {};
			class squadMiddleware {};
			class removeSqLeadNaming {};
			class setSquadName {};
			class setSqNameToDefault {};
		};
		class _units_
		{
			file = "Functions\naming\unitNames";
			class clearUnitName {};
			class setUnitName {};
			class setUnitsNameToDefault {};
			class unitsMiddleware {};
		};
	};
	class CrewControl
	{
		tag = "VTG";
		class _main_
		{
			file = "Functions\CrewControl";
			class AddCrewControlModule {};
			class CrewControlScript {};
			class setGLmodule {};
			class Variables {};
		};
	};
};