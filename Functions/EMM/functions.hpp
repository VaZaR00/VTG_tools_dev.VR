//Functions\EMM\
//EMM\

class CfgFunctions
{
	class EMM_ui
	{
		tag = "EMM";
		class dialog 
		{
			file = "Functions\EMM\Functions\Interface\dialog";
			class open {};
			class getUIelements {};
			class message {};
			class close {};
			class unload {};
			class loadUserSettings {};
		};
		class ModulesTree
		{
			file = "Functions\EMM\Functions\Interface\ModulesTree";
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
			file = "Functions\EMM\Functions\Interface\Menu\Module";
			class createNewModule {};
			class newModule {};
			class menuDeleteModule {};
		};
		class Menu_Preset
		{
			file = "Functions\EMM\Functions\Interface\Menu\Preset";
			class export {};
			class import {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Arsenal    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Arsenal 
		{
			file = "Functions\EMM\Functions\Interface\Arsenal";
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
			file = "Functions\EMM\Functions\Interface\Arsenal\addingItem";
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
			file = "Functions\EMM\Functions\Interface\Arsenal\weaponAttachments";
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
			file = "Functions\EMM\Functions\Interface\ModuleInventory";
			class checkModule {};
			class checkSaveModule {};
			class onTreeSelect {};
			class resetModule {};
		};
		class ModuleInventory_ItemOperations
		{
			file = "Functions\EMM\Functions\Interface\ModuleInventory\itemOperations";
			class addItemToModule {};
			class clearModule {};
			class deleteModuleItems {};
			class modifyModuleItem {};
		};
		class ModuleInventory_loadItems
		{
			file = "Functions\EMM\Functions\Interface\ModuleInventory\loadItems";
			class importFromArsenal {};
			class loadModuleData {};
			class loadModuleItems {};
			class setModuleItem {};
		};
		class ModuleInventory_addFuncSelect 
		{
			file = "Functions\EMM\Functions\Interface\ModuleInventory\AddFuncSelector";
			class changeAddFunc {};
			class loadSelector {};
			class openSelector {};
			class updateAddFunc {};
		};
		class ModuleInventory_targets
		{
			file = "Functions\EMM\Functions\Interface\ModuleInventory\targets";
			class addTargetToCombo {};
			class getTargetsByClass {};
			class getTargetSides {};
			class loadTargetsCombo {};
			class getTargetOptionName {};
		};
		class ModuleInventory_targets_menu
		{
			file = "Functions\EMM\Functions\Interface\ModuleInventory\targets\menu";
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
			file = "Functions\EMM\Functions\Categories";
			class categorySortIndex {};
			class getCategory {};
			class iterate {};
			class checkCategories {};
		};	
		class Items_
		{
			file = "Functions\EMM\Functions\Items";
			class findRootConfig {};
			class getAllItems {};
			class getClassDisplayName {};
			class getItemTypeFunc {};
			class validateFunction {};
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
			file = "Functions\EMM\Functions\compilers\applyModules";
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
			file = "Functions\EMM\Functions\compilers\applyModules\failedReport";
			class copyReport {};
			class failedToGiveReport {};
			class failedToLoadReport {};
			class checkIfFail {};
		};
		class compilers_import
		{
			file = "Functions\EMM\Functions\compilers\import";
			class parser_middleware {};
			class bi_arsenalExportParser {};
			class convertFunctionToAttribute {};
		};
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Repository    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class repository
		{
			file = "Functions\EMM\Functions\repository";
			class saveModule {};
			class deleteModule {};
			class modulesAmount {};
		};
		class repository_moduleItems
		{
			file = "Functions\EMM\Functions\repository\moduleItems";
			class parseModuleItemsTree {};
		};
		class repository_storage
		{
			file = "Functions\EMM\Functions\repository\storage";
			class addModulesToStorage {};
			class getModulesStorage {};
			class saveItemToStorage {};
			class setStorage {};
		};
	};
};