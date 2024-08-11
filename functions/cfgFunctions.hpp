
#ifdef DEBUG_ENABLED_FULL
allowFunctionsRecompile = 1;
allowFunctionsLog = 1;
#endif

class CfgFunctions
{

	class EMM
	{

		class Functions
		{

			class checkForComposites { file = "functions\Functions\Arsenal\fn_checkForComposites.sqf"; };
			class loadArsenalCategories { file = "functions\Functions\Arsenal\fn_loadArsenalCategories.sqf"; };
			class loadArsenalItems { file = "functions\Functions\Arsenal\fn_loadArsenalItems.sqf"; };
			class onCategoryChange { file = "functions\Functions\Arsenal\fn_onCategoryChange.sqf"; };
			class close { file = "functions\Functions\Dialog\fn_close.sqf"; };
			class getUIelements { file = "functions\Functions\Dialog\fn_getUIelements.sqf"; };
			class hideStartMsg { file = "functions\Functions\Dialog\fn_hideStartMsg.sqf"; };
			class open { file = "functions\Functions\Dialog\fn_open.sqf"; };
			class setUIEventHandlers { file = "functions\Functions\Dialog\fn_setUIEventHandlers.sqf"; };
			class unload { file = "functions\Functions\Dialog\fn_unload.sqf"; };
			class findRootConfig { file = "functions\Functions\Items\fn_findRootConfig.sqf"; };
			class getAllItems { file = "functions\Functions\Items\fn_getAllItems.sqf"; };
			class getCategory { file = "functions\Functions\Items\fn_getCategory.sqf"; };
			class getClassDisplayName { file = "functions\Functions\Items\fn_getClassDisplayName.sqf"; };
			class getItemTypeFunc { file = "functions\Functions\Items\fn_getItemTypeFunc.sqf"; };
			class isWeapon { file = "functions\Functions\Items\fn_isWeapon.sqf"; };
			class validateFunction { file = "functions\Functions\Items\fn_validateFunction.sqf"; };
			class validPic { file = "functions\Functions\Items\fn_validPic.sqf"; };
			class checkIfModuleNameExists { file = "functions\Functions\ModuleBrowser\fn_checkIfModuleNameExists.sqf"; };
			class loadModuleBrowser { file = "functions\Functions\ModuleBrowser\fn_loadModuleBrowser.sqf"; };
			class openModule { file = "functions\Functions\ModuleBrowser\fn_openModule.sqf"; };
			class setCurrentModule { file = "functions\Functions\ModuleBrowser\fn_setCurrentModule.sqf"; };
			class setModulesTreeSize { file = "functions\Functions\ModuleBrowser\fn_setModulesTreeSize.sqf"; };
			class setOpenedModuleColor { file = "functions\Functions\ModuleBrowser\fn_setOpenedModuleColor.sqf"; };
			class sortItems { file = "functions\Functions\ModuleBrowser\fn_sortItems.sqf"; };
			class updateBrowser { file = "functions\Functions\ModuleBrowser\fn_updateBrowser.sqf"; };
			class checkIfEmpty { file = "functions\Functions\ModuleInventory\fn_checkIfEmpty.sqf"; };
			class checkItemsLabels { file = "functions\Functions\ModuleInventory\fn_checkItemsLabels.sqf"; };
			class loadModuleTabs { file = "functions\Functions\ModuleInventory\fn_loadModuleTabs.sqf"; };
			class parseModuleItemsTree { file = "functions\Functions\ModuleInventory\fn_parseModuleItemsTree.sqf"; };
			class resetModule { file = "functions\Functions\ModuleInventory\fn_resetModule.sqf"; };
			class setModuleTab { file = "functions\Functions\ModuleInventory\fn_setModuleTab.sqf"; };
			class clearPreset { file = "functions\Functions\Preset_menu\fn_clearPreset.sqf"; };
			class export { file = "functions\Functions\Preset_menu\fn_export.sqf"; };
			class import { file = "functions\Functions\Preset_menu\fn_import.sqf"; };
			class openPresetManager { file = "functions\Functions\Preset_menu\fn_openPresetManager.sqf"; };
			class storageMiddleware { file = "functions\Functions\repository\fn_storageMiddleware.sqf"; };
			class Shared_clearSearch { file = "functions\Functions\Shared\fn_clearSearch.sqf"; };
			class Shared_copyClassname { file = "functions\Functions\Shared\fn_copyClassname.sqf"; };
			class Shared_loadUserSettings { file = "functions\Functions\Shared\fn_loadUserSettings.sqf"; };
			class Shared_message { file = "functions\Functions\Shared\fn_message.sqf"; };
			class Shared_onSearchKeyUp { file = "functions\Functions\Shared\fn_onSearchKeyUp.sqf"; };
			class Shared_treeMapper { file = "functions\Functions\Shared\fn_treeMapper.sqf"; };
			class treeElements_addItem { file = "functions\Functions\treeElements\fn_addItem.sqf"; };
			class treeElements_deleteItem { file = "functions\Functions\treeElements\fn_deleteItem.sqf"; };
			class treeElements_modifyItem { file = "functions\Functions\treeElements\fn_modifyItem.sqf"; };
			class addItemToModule { file = "functions\Functions\Arsenal\AddingItem\fn_addItemToModule.sqf"; };
			class getAmount { file = "functions\Functions\Arsenal\AddingItem\fn_getAmount.sqf"; };
			class getAmountInput { file = "functions\Functions\Arsenal\AddingItem\fn_getAmountInput.sqf"; };
			class getItemFromArsenal { file = "functions\Functions\Arsenal\AddingItem\fn_getItemFromArsenal.sqf"; };
			class applyInEditor { file = "functions\Functions\compilers\applyModules\fn_applyInEditor.sqf"; };
			class compileItemFunc { file = "functions\Functions\compilers\applyModules\fn_compileItemFunc.sqf"; };
			class compileModule { file = "functions\Functions\compilers\applyModules\fn_compileModule.sqf"; };
			class compiler { file = "functions\Functions\compilers\applyModules\fn_compiler.sqf"; };
			class convertAttributeToFunction { file = "functions\Functions\compilers\applyModules\fn_convertAttributeToFunction.sqf"; };
			class prepareStorage { file = "functions\Functions\compilers\applyModules\fn_prepareStorage.sqf"; };
			class setGLmodule { file = "functions\Functions\compilers\applyModules\fn_setGLmodule.sqf"; };
			class bi_arsenalExportParser { file = "functions\Functions\compilers\import\fn_bi_arsenalExportParser.sqf"; };
			class convertFunctionToAttribute { file = "functions\Functions\compilers\import\fn_convertFunctionToAttribute.sqf"; };
			class importClassesParser { file = "functions\Functions\compilers\import\fn_importClassesParser.sqf"; };
			class parser_middleware { file = "functions\Functions\compilers\import\fn_parser_middleware.sqf"; };
			class addElement { file = "functions\Functions\ModuleBrowser\ItemsManipulations\fn_addElement.sqf"; };
			class deleteElement { file = "functions\Functions\ModuleBrowser\ItemsManipulations\fn_deleteElement.sqf"; };
			class deleteElementMiddleware { file = "functions\Functions\ModuleBrowser\ItemsManipulations\fn_deleteElementMiddleware.sqf"; };
			class dragItem { file = "functions\Functions\ModuleBrowser\ItemsManipulations\fn_dragItem.sqf"; };
			class moveItem { file = "functions\Functions\ModuleBrowser\ItemsManipulations\fn_moveItem.sqf"; };
			class checkIfNameExists { file = "functions\Functions\ModuleBrowser\Rename\fn_checkIfNameExists.sqf"; };
			class getRenameInput { file = "functions\Functions\ModuleBrowser\Rename\fn_getRenameInput.sqf"; };
			class openRenameMenu { file = "functions\Functions\ModuleBrowser\Rename\fn_openRenameMenu.sqf"; };
			class rename { file = "functions\Functions\ModuleBrowser\Rename\fn_rename.sqf"; };
			class changeAddFunc { file = "functions\Functions\ModuleInventory\addFuncSelector\fn_changeAddFunc.sqf"; };
			class loadSelector { file = "functions\Functions\ModuleInventory\addFuncSelector\fn_loadSelector.sqf"; };
			class openSelector { file = "functions\Functions\ModuleInventory\addFuncSelector\fn_openSelector.sqf"; };
			class updateAddFunc { file = "functions\Functions\ModuleInventory\addFuncSelector\fn_updateAddFunc.sqf"; };
			class importFromArsenal { file = "functions\Functions\ModuleInventory\loadItems\fn_importFromArsenal.sqf"; };
			class loadModuleData { file = "functions\Functions\ModuleInventory\loadItems\fn_loadModuleData.sqf"; };
			class loadModuleItems { file = "functions\Functions\ModuleInventory\loadItems\fn_loadModuleItems.sqf"; };
			class loadModuleTargets { file = "functions\Functions\ModuleInventory\loadItems\fn_loadModuleTargets.sqf"; };
			class setModuleItem { file = "functions\Functions\ModuleInventory\loadItems\fn_setModuleItem.sqf"; };
			class onModuleItemDbClick { file = "functions\Functions\ModuleInventory\Nesting\fn_onModuleItemDbClick.sqf"; };
			class setNestParent { file = "functions\Functions\ModuleInventory\Nesting\fn_setNestParent.sqf"; };
			class addTargetToCombo { file = "functions\Functions\ModuleInventory\targets\fn_addTargetToCombo.sqf"; };
			class getTargetOptionName { file = "functions\Functions\ModuleInventory\targets\fn_getTargetOptionName.sqf"; };
			class getTargetsByClass { file = "functions\Functions\ModuleInventory\targets\fn_getTargetsByClass.sqf"; };
			class getTargetSides { file = "functions\Functions\ModuleInventory\targets\fn_getTargetSides.sqf"; };
			class loadTargetsCombo { file = "functions\Functions\ModuleInventory\targets\fn_loadTargetsCombo.sqf"; };
			class importFolders { file = "functions\Functions\repository\Folders\fn_importFolders.sqf"; };
			class addModule { file = "functions\Functions\repository\Modules\fn_addModule.sqf"; };
			class deleteModule { file = "functions\Functions\repository\Modules\fn_deleteModule.sqf"; };
			class getModules { file = "functions\Functions\repository\Modules\fn_getModules.sqf"; };
			class modulesAmount { file = "functions\Functions\repository\Modules\fn_modulesAmount.sqf"; };
			class saveModule { file = "functions\Functions\repository\Modules\fn_saveModule.sqf"; };
			class updateModule { file = "functions\Functions\repository\Modules\fn_updateModule.sqf"; };
			class addPresetToStorage { file = "functions\Functions\repository\Presets\fn_addPresetToStorage.sqf"; };
			class deletePresetFromStorage { file = "functions\Functions\repository\Presets\fn_deletePresetFromStorage.sqf"; };
			class getFromPreset { file = "functions\Functions\repository\Presets\fn_getFromPreset.sqf"; };
			class setToPreset { file = "functions\Functions\repository\Presets\fn_setToPreset.sqf"; };
			class checkIfFail { file = "functions\Functions\compilers\applyModules\failedReport\fn_checkIfFail.sqf"; };
			class copyReport { file = "functions\Functions\compilers\applyModules\failedReport\fn_copyReport.sqf"; };
			class failedToGiveReport { file = "functions\Functions\compilers\applyModules\failedReport\fn_failedToGiveReport.sqf"; };
			class failedToLoadReport { file = "functions\Functions\compilers\applyModules\failedReport\fn_failedToLoadReport.sqf"; };
			class loadTargetsMenu { file = "functions\Functions\ModuleInventory\targets\menu\fn_loadTargetsMenu.sqf"; };
			class onSelectTarget { file = "functions\Functions\ModuleInventory\targets\menu\fn_onSelectTarget.sqf"; };
			class openEditTargetsMenu { file = "functions\Functions\ModuleInventory\targets\menu\fn_openEditTargetsMenu.sqf"; };
			class setTargets { file = "functions\Functions\ModuleInventory\targets\menu\fn_setTargets.sqf"; };
			class showEditBtn { file = "functions\Functions\ModuleInventory\targets\menu\fn_showEditBtn.sqf"; };
			class getFoldersStorage { file = "functions\Functions\repository\Folders\DataAccess\fn_getFoldersStorage.sqf"; };
			class setFoldersStorage { file = "functions\Functions\repository\Folders\DataAccess\fn_setFoldersStorage.sqf"; };
			class getModulesStorage { file = "functions\Functions\repository\Modules\DataAccess\fn_getModulesStorage.sqf"; };
			class setModulesStorage { file = "functions\Functions\repository\Modules\DataAccess\fn_setModulesStorage.sqf"; };
			class getPresetsStorage { file = "functions\Functions\repository\Presets\DataAccess\fn_getPresetsStorage.sqf"; };
			class setPresetsStorage { file = "functions\Functions\repository\Presets\DataAccess\fn_setPresetsStorage.sqf"; };
			class att_getFoldersStorage { file = "functions\Functions\repository\Folders\DataAccess\3den_Attributes\fn_att_getFoldersStorage.sqf"; };
			class att_setFoldersStorage { file = "functions\Functions\repository\Folders\DataAccess\3den_Attributes\fn_att_setFoldersStorage.sqf"; };
			class var_getFoldersStorage { file = "functions\Functions\repository\Folders\DataAccess\DEV\fn_var_getFoldersStorage.sqf"; };
			class var_setFoldersStorage { file = "functions\Functions\repository\Folders\DataAccess\DEV\fn_var_setFoldersStorage.sqf"; };
			class att_getModulesStorage { file = "functions\Functions\repository\Modules\DataAccess\3den_Attributes\fn_att_getModulesStorage.sqf"; };
			class att_setModulesStorage { file = "functions\Functions\repository\Modules\DataAccess\3den_Attributes\fn_att_setModulesStorage.sqf"; };
			class var_getModulesStorage { file = "functions\Functions\repository\Modules\DataAccess\DEV\fn_var_getModulesStorage.sqf"; };
			class var_setModulesStorage { file = "functions\Functions\repository\Modules\DataAccess\DEV\fn_var_setModulesStorage.sqf"; };

		};

	};

};

