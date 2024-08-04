//Functions\EMM\
//EMM\

class CfgFunctions
{
	class EMM_ui
	{
		tag = "EMM";
		class _dialog 
		{
			file = "EMM\Functions\Interface\dialog";
			class open {};
			class getUIelements {};
			class message {};
			class close {};
			class unload {};
			class loadUserSettings {};
		};
		// class _ModulesTree
		// {
		// 	file = "EMM\Functions\Interface\ModulesTree";
		// 	class addItemToTree {};
		// 	class changeModule {};
		// 	class loadModulesTree {};
		// 	class setCurrentModule {};
		// 	class warning {};
		// };

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Menu    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class _Menu_Module
		{
			file = "EMM\Functions\Interface\Menu\Module";
			class createNewModule {};
			class newModule {};
			class menuDeleteModule {};
		};
		class _Menu_Preset
		{
			file = "EMM\Functions\Interface\Menu\Preset";
			class export {};
			class import {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Arsenal    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
		// class _Arsenal 
		// {
		// 	file = "EMM\Functions\Interface\Arsenal";
		// 	class loadArsenal {};
		// 	class loadAddToCombo {};
		// 	class getAmountInput {};
		// 	class onSearchKeyUp {};
		// 	class clearSearch {};
		// 	class setCompositeModule {};
		// 	class checkForComposites {};
		// };
		// class _Arsenal_addingItem
		// {
		// 	file = "EMM\Functions\Interface\Arsenal\addingItem";
		// 	class addItemFromArsenal {};
		// 	class peekItem {};
		// 	class itemDestination {};
		// 	class getAmountIfStack {};
		// 	class addItemMiddleware {};
		// 	class isWeaponAttachment {};
		// 	class checkIfRandom {};
		// };
		// class _Arsenal_weapAttach
		// {
		// 	file = "EMM\Functions\Interface\Arsenal\weaponAttachments";
		// 	class closeWeapAttachMenu {};
		// 	class editWeapAttach {};
		// 	class attachLbl {};
		// 	class checkForAttachLbl {};
		// 	
		// };
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Inventory    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		// class _ModuleInventory
		// {
		// 	file = "EMM\Functions\Interface\ModuleInventory";
		// 	class checkModule {};
		// 	class checkSaveModule {};
		// 	class onTreeSelect {};
		// 	class resetModule {};
		// };
		// class _ModuleInventory_ItemOperations
		// {
		// 	file = "EMM\Functions\Interface\ModuleInventory\itemOperations";
		// 	class addItemToModule {};
		// 	class clearModule {};
		// 	class deleteModuleItems {};
		// 	class modifyModuleItem {};
		// };
		// class _ModuleInventory_loadItems
		// {
		// 	file = "EMM\Functions\Interface\ModuleInventory\loadItems";
		// 	class importFromArsenal {};
		// 	class loadModuleData {};
		// 	class loadModuleItems {};
		// 	class setModuleItem {};
		// };
		class _ModuleInventory_addFuncSelect 
		{
			file = "EMM\Functions\Interface\ModuleInventory\AddFuncSelector";
			class changeAddFunc {};
			class loadSelector {};
			class openSelector {};
			class updateAddFunc {};
		};
		class _ModuleInventory_targets
		{
			file = "EMM\Functions\Interface\ModuleInventory\targets";
			class addTargetToCombo {};
			class getTargetsByClass {};
			class getTargetSides {};
			class loadTargetsCombo {};
			class getTargetOptionName {};
		};
		class _ModuleInventory_targets_menu
		{
			file = "EMM\Functions\Interface\ModuleInventory\targets\menu";
			class openEditTargetsMenu {};
			class loadTargetsMenu {};
			class onSelectTarget {};
			class showEditBtn {};
			class setTargets {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////  Systems  /////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class _Categories_
		{
			file = "EMM\Functions\Categories";
			class categorySortIndex {};
			class getCategory {};
			class iterate {};
			class checkCategories {};
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
			file = "EMM\Functions\compilers\applyModules";
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
			file = "EMM\Functions\compilers\applyModules\failedReport";
			class copyReport {};
			class failedToGiveReport {};
			class failedToLoadReport {};
			class checkIfFail {};
		};
		class compilers_import
		{
			file = "EMM\Functions\compilers\import";
			class parser_middleware {};
			class bi_arsenalExportParser {};
			class convertFunctionToAttribute {};
		};
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Repository    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class repository
		{
			file = "EMM\Functions\repository";
			class saveModule {};
			class deleteModule {};
			class modulesAmount {};
		};
		class repository_moduleItems
		{
			file = "EMM\Functions\repository\moduleItems";
		};
		class repository_storage
		{
			file = "EMM\Functions\repository\storage";
			class addModulesToStorage {};
			class getModulesStorage {};
			class saveItemToStorage {};
			class setStorage {};
		};
		class repository_storage_Folders
		{
			file = "EMM\Functions\repository\storage\Folders";
			class getFoldersStorage {};
			class setFoldersStorage {};
		};
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	DEV REWORK    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Dialog
		{
			file = "EMM\FunctionsRework\Dialog";
			class treeMapper {};
			class setUIEventHandlers {};
			class onSearchKeyUp {};
		};
		class Arsenal
		{
			file = "EMM\FunctionsRework\Arsenal";
			class loadArsenalItems {};
			class loadArsenalCategories {};
		};
		class _Arsenal_AddingItem
		{
			file = "EMM\FunctionsRework\Arsenal\AddingItem";
			class addItemFromArsenal {};
			class getAmount {};
			class getAmountInput {};
		};
		class ModuleInventory
		{
			file = "EMM\FunctionsRework\ModuleInventory";
			class setModuleTab {};
			class loadModuleTabs {};
			class onModuleItemDbClick {};
			class checkItemsLabels {};
			class parseModuleItemsTree {};
		};
		class ItemsOperations
		{
			file = "EMM\FunctionsRework\ItemsOperations";
			class addItem {};
			class deleteItem {};
			class modifyItem {};
		};
		class Items_
		{
			file = "EMM\FunctionsRework\Items";
			class findRootConfig {};
			class getAllItems {};
			class getClassDisplayName {};
			class getItemTypeFunc {};
			class validateFunction {};
			class validPic {};
			class isWeapon {};
		};
		class ModuleBrowser
		{
			file = "EMM\FunctionsRework\ModuleBrowser";
			class addElement {};
			class deleteElement {};
			class deleteElementMiddleware {};
			class setModulesTreeSize {};
			class loadModuleBrowser {};
		};
		class ModuleBrowser_Rename
		{
			file = "EMM\FunctionsRework\ModuleBrowser\Rename";
			class openRenameMenu {};
			class rename {};
		};
	};
};