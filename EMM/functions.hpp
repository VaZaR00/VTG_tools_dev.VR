//Functions\EMM\
//EMM\

class CfgFunctions
{
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
			class importClassesParser {};
		};
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Repository    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class repository_Folders
		{
			file = "EMM\Functions\repository\Folders";
			class getFoldersStorage {};
			class importFolders {};
			class setFoldersStorage {};
		};
		class repository_Modules
		{
			file = "EMM\Functions\repository\Modules";
			class addModulesToStorage {};
			class deleteModule {};
			class getModulesStorage {};
			class modulesAmount {};
			class saveModule {};
			class setModuleToStorage {};
			class setStorage {};
		};
		class repository_Presets
		{
			file = "EMM\Functions\repository\Presets";
			class ss {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Global    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class _Shared 
		{
			file = "EMM\Functions\Shared";
			class copyClassname {};
			class loadUserSettings {};
			class message {};
			class onSearchKeyUp {};
			class treeMapper {};
			class clearSearch {};
		};
		class Dialog
		{
			file = "EMM\Functions\Dialog";
			class close {};
			class getUIelements {};
			class hideStartMsg {};
			class open {};
			class setUIEventHandlers {};
			class unload {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	arsenal    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Arsenal
		{
			file = "EMM\Functions\Arsenal";
			class loadArsenalItems {};
			class loadArsenalCategories {};
			class checkForComposites {};
			class onCategoryChange {};
		};
		class _Arsenal_AddingItem
		{
			file = "EMM\Functions\Arsenal\AddingItem";
			class addItemToModule {};
			class getItemFromArsenal {};
			class getAmount {};
			class getAmountInput {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	module inventory    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class ModuleInventory
		{
			file = "EMM\Functions\ModuleInventory";
			class setModuleTab {};
			class loadModuleTabs {};
			class checkItemsLabels {};
			class checkIfEmpty {};
			class resetModule {};
			class parseModuleItemsTree {};
		};
		class _ModuleInventory_addFuncSelect 
		{
			file = "EMM\Functions\ModuleInventory\AddFuncSelector";
			class changeAddFunc {};
			class loadSelector {};
			class openSelector {};
			class updateAddFunc {};
		};
		class _ModuleInventory_loadItems
		{
			file = "EMM\Functions\ModuleInventory\loadItems";
			class importFromArsenal {};
			class loadModuleData {};
			class loadModuleItems {};
			class setModuleItem {};
			class loadModuleTargets {};
		};
		class _ModuleInventory_Nesting
		{
			file = "EMM\Functions\ModuleInventory\Nesting";
			class onModuleItemDbClick {};
			class setNestParent {};
		};
		class _ModuleInventory_targets
		{
			file = "EMM\Functions\ModuleInventory\targets";
			class addTargetToCombo {};
			class getTargetsByClass {};
			class getTargetSides {};
			class loadTargetsCombo {};
			class getTargetOptionName {};
		};
		class _ModuleInventory_targets_menu
		{
			file = "EMM\Functions\ModuleInventory\targets\menu";
			class openEditTargetsMenu {};
			class loadTargetsMenu {};
			class onSelectTarget {};
			class showEditBtn {};
			class setTargets {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	browser    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class ModuleBrowser
		{
			file = "EMM\Functions\ModuleBrowser";
			class setModulesTreeSize {};
			class loadModuleBrowser {};
			class sortItems {};
			class openModule {};
			class checkIfModuleNameExists {};
			class updateBrowser {};
			class setCurrentModule {};
			class setOpenedModuleColor {};
		};
		class ModuleBrowser_getInput
		{
			file = "EMM\Functions\ModuleBrowser\Rename";
			class openRenameMenu {};
			class getInput {};
			class rename {};
			class checkIfNameExists {};
			class getSortingIndex {};
		};
		class ModuleBrowser_ItemsManipulations
		{
			file = "EMM\Functions\ModuleBrowser\ItemsManipulations";
			class addElement {};
			class deleteElement {};
			class deleteElementMiddleware {};
			class dragItem {};
			class moveItem {};
		};

////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////	Other    ////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

		class Preset_
		{
			file = "EMM\Functions\Preset";
			class export {};
			class import {};
			class clearPreset {};
		};
		class treeElements
		{
			file = "EMM\Functions\treeElements";
			class addItem {};
			class deleteItem {};
			class modifyItem {};
		};
		class Items_
		{
			file = "EMM\Functions\Items";
			class findRootConfig {};
			class getAllItems {};
			class getClassDisplayName {};
			class getItemTypeFunc {};
			class validateFunction {};
			class validPic {};
			class isWeapon {};
			class getCategory {};
		};
	};
};