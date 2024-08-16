
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

			class checkForComposites { file = "EMM\Functions\Arsenal\fn_checkForComposites.sqf"; };
			class loadArsenalCategories { file = "EMM\Functions\Arsenal\fn_loadArsenalCategories.sqf"; };
			class loadArsenalItems { file = "EMM\Functions\Arsenal\fn_loadArsenalItems.sqf"; };
			class onCategoryChange { file = "EMM\Functions\Arsenal\fn_onCategoryChange.sqf"; };
			class close { file = "EMM\Functions\Dialog\fn_close.sqf"; };
			class getUIelements { file = "EMM\Functions\Dialog\fn_getUIelements.sqf"; };
			class hideStartMsg { file = "EMM\Functions\Dialog\fn_hideStartMsg.sqf"; };
			class openModulesManager { file = "EMM\Functions\Dialog\fn_openModulesManager.sqf"; };
			class setUIEventHandlers { file = "EMM\Functions\Dialog\fn_setUIEventHandlers.sqf"; };
			class unload { file = "EMM\Functions\Dialog\fn_unload.sqf"; };
			class findRootConfig { file = "EMM\Functions\Items\fn_findRootConfig.sqf"; };
			class getAllItems { file = "EMM\Functions\Items\fn_getAllItems.sqf"; };
			class getCategory { file = "EMM\Functions\Items\fn_getCategory.sqf"; };
			class getClassDisplayName { file = "EMM\Functions\Items\fn_getClassDisplayName.sqf"; };
			class getClassPicture { file = "EMM\Functions\Items\fn_getClassPicture.sqf"; };
			class getItemTypeFunc { file = "EMM\Functions\Items\fn_getItemTypeFunc.sqf"; };
			class isWeapon { file = "EMM\Functions\Items\fn_isWeapon.sqf"; };
			class validateFunction { file = "EMM\Functions\Items\fn_validateFunction.sqf"; };
			class validPic { file = "EMM\Functions\Items\fn_validPic.sqf"; };
			class checkIfModuleNameExists { file = "EMM\Functions\ModuleBrowser\fn_checkIfModuleNameExists.sqf"; };
			class loadModuleBrowser { file = "EMM\Functions\ModuleBrowser\fn_loadModuleBrowser.sqf"; };
			class openModule { file = "EMM\Functions\ModuleBrowser\fn_openModule.sqf"; };
			class setCurrentModule { file = "EMM\Functions\ModuleBrowser\fn_setCurrentModule.sqf"; };
			class setModulesTreeSize { file = "EMM\Functions\ModuleBrowser\fn_setModulesTreeSize.sqf"; };
			class setOpenedModuleColor { file = "EMM\Functions\ModuleBrowser\fn_setOpenedModuleColor.sqf"; };
			class sortItems { file = "EMM\Functions\ModuleBrowser\fn_sortItems.sqf"; };
			class updateBrowser { file = "EMM\Functions\ModuleBrowser\fn_updateBrowser.sqf"; };
			class checkIfEmpty { file = "EMM\Functions\ModuleInventory\fn_checkIfEmpty.sqf"; };
			class checkItemsLabels { file = "EMM\Functions\ModuleInventory\fn_checkItemsLabels.sqf"; };
			class loadModuleTabs { file = "EMM\Functions\ModuleInventory\fn_loadModuleTabs.sqf"; };
			class parseModuleItemsTree { file = "EMM\Functions\ModuleInventory\fn_parseModuleItemsTree.sqf"; };
			class resetModule { file = "EMM\Functions\ModuleInventory\fn_resetModule.sqf"; };
			class setModuleTab { file = "EMM\Functions\ModuleInventory\fn_setModuleTab.sqf"; };
			class setRandomized { file = "EMM\Functions\ModuleInventory\fn_setRandomized.sqf"; };
			class initPreset { file = "EMM\Functions\Presets\fn_initPreset.sqf"; };
			class setPreset { file = "EMM\Functions\Presets\fn_setPreset.sqf"; };
			class wipePreset { file = "EMM\Functions\Presets\fn_wipePreset.sqf"; };
			class storageMiddleware { file = "EMM\Functions\repository\fn_storageMiddleware.sqf"; };
			class saveAllData { file = "EMM\Functions\repository\fn_saveAllData.sqf"; };
			class clearSearch { file = "EMM\Functions\Shared\fn_clearSearch.sqf"; };
			class copyClassname { file = "EMM\Functions\Shared\fn_copyClassname.sqf"; };
			class loadUserSettings { file = "EMM\Functions\Shared\fn_loadUserSettings.sqf"; };
			class message { file = "EMM\Functions\Shared\fn_message.sqf"; };
			class onSearchKeyUp { file = "EMM\Functions\Shared\fn_onSearchKeyUp.sqf"; };
			class setCopyName { file = "EMM\Functions\Shared\fn_setCopyName.sqf"; };
			class treeMapper { file = "EMM\Functions\Shared\fn_treeMapper.sqf"; };
			class addItem { file = "EMM\Functions\treeElements\fn_addItem.sqf"; };
			class deleteItem { file = "EMM\Functions\treeElements\fn_deleteItem.sqf"; };
			class modifyItem { file = "EMM\Functions\treeElements\fn_modifyItem.sqf"; };
			class addItemToModule { file = "EMM\Functions\Arsenal\AddingItem\fn_addItemToModule.sqf"; };
			class getAmount { file = "EMM\Functions\Arsenal\AddingItem\fn_getAmount.sqf"; };
			class getAmountInput { file = "EMM\Functions\Arsenal\AddingItem\fn_getAmountInput.sqf"; };
			class getItemFromArsenal { file = "EMM\Functions\Arsenal\AddingItem\fn_getItemFromArsenal.sqf"; };
			class applyInEditor { file = "EMM\Functions\compilers\applyModules\fn_applyInEditor.sqf"; };
			class compileItemFunc { file = "EMM\Functions\compilers\applyModules\fn_compileItemFunc.sqf"; };
			class compileModule { file = "EMM\Functions\compilers\applyModules\fn_compileModule.sqf"; };
			class compiler { file = "EMM\Functions\compilers\applyModules\fn_compiler.sqf"; };
			class convertAttributeToFunction { file = "EMM\Functions\compilers\applyModules\fn_convertAttributeToFunction.sqf"; };
			class prepareStorage { file = "EMM\Functions\compilers\applyModules\fn_prepareStorage.sqf"; };
			class setGLmodule { file = "EMM\Functions\compilers\applyModules\fn_setGLmodule.sqf"; };
			class bi_arsenalExportParser { file = "EMM\Functions\compilers\import\fn_bi_arsenalExportParser.sqf"; };
			class convertFunctionToAttribute { file = "EMM\Functions\compilers\import\fn_convertFunctionToAttribute.sqf"; };
			class importClassesParser { file = "EMM\Functions\compilers\import\fn_importClassesParser.sqf"; };
			class parser_middleware { file = "EMM\Functions\compilers\import\fn_parser_middleware.sqf"; };
			class addElement { file = "EMM\Functions\ModuleBrowser\ItemsManipulations\fn_addElement.sqf"; };
			class deleteElement { file = "EMM\Functions\ModuleBrowser\ItemsManipulations\fn_deleteElement.sqf"; };
			class deleteElementMiddleware { file = "EMM\Functions\ModuleBrowser\ItemsManipulations\fn_deleteElementMiddleware.sqf"; };
			class dragItem { file = "EMM\Functions\ModuleBrowser\ItemsManipulations\fn_dragItem.sqf"; };
			class moveItem { file = "EMM\Functions\ModuleBrowser\ItemsManipulations\fn_moveItem.sqf"; };
			class changeAddFunc { file = "EMM\Functions\ModuleInventory\addFuncSelector\fn_changeAddFunc.sqf"; };
			class loadSelector { file = "EMM\Functions\ModuleInventory\addFuncSelector\fn_loadSelector.sqf"; };
			class openSelector { file = "EMM\Functions\ModuleInventory\addFuncSelector\fn_openSelector.sqf"; };
			class updateAddFunc { file = "EMM\Functions\ModuleInventory\addFuncSelector\fn_updateAddFunc.sqf"; };
			class importFromArsenal { file = "EMM\Functions\ModuleInventory\loadItems\fn_importFromArsenal.sqf"; };
			class loadModuleData { file = "EMM\Functions\ModuleInventory\loadItems\fn_loadModuleData.sqf"; };
			class loadModuleItems { file = "EMM\Functions\ModuleInventory\loadItems\fn_loadModuleItems.sqf"; };
			class loadModuleTargets { file = "EMM\Functions\ModuleInventory\loadItems\fn_loadModuleTargets.sqf"; };
			class setModuleItem { file = "EMM\Functions\ModuleInventory\loadItems\fn_setModuleItem.sqf"; };
			class onModuleItemDbClick { file = "EMM\Functions\ModuleInventory\Nesting\fn_onModuleItemDbClick.sqf"; };
			class setNestParent { file = "EMM\Functions\ModuleInventory\Nesting\fn_setNestParent.sqf"; };
			class addTargetToCombo { file = "EMM\Functions\ModuleInventory\targets\fn_addTargetToCombo.sqf"; };
			class getTargetOptionName { file = "EMM\Functions\ModuleInventory\targets\fn_getTargetOptionName.sqf"; };
			class getTargetsByClass { file = "EMM\Functions\ModuleInventory\targets\fn_getTargetsByClass.sqf"; };
			class getTargetSides { file = "EMM\Functions\ModuleInventory\targets\fn_getTargetSides.sqf"; };
			class loadTargetsCombo { file = "EMM\Functions\ModuleInventory\targets\fn_loadTargetsCombo.sqf"; };
			class exportPresetsPM { file = "EMM\Functions\Presets\manager\fn_exportPresetsPM.sqf"; };
			class importPresetsPM { file = "EMM\Functions\Presets\manager\fn_importPresetsPM.sqf"; };
			class loadPreset { file = "EMM\Functions\Presets\manager\fn_loadPreset.sqf"; };
			class loadPresetsList { file = "EMM\Functions\Presets\manager\fn_loadPresetsList.sqf"; };
			class onUnloadPM { file = "EMM\Functions\Presets\manager\fn_onUnloadPM.sqf"; };
			class openPresetManager { file = "EMM\Functions\Presets\manager\fn_openPresetManager.sqf"; };
			class clearPreset { file = "EMM\Functions\Presets\menu\fn_clearPreset.sqf"; };
			class export { file = "EMM\Functions\Presets\menu\fn_export.sqf"; };
			class import { file = "EMM\Functions\Presets\menu\fn_import.sqf"; };
			class getFolders { file = "EMM\Functions\repository\Folders\fn_getFolders.sqf"; };
			class importFolders { file = "EMM\Functions\repository\Folders\fn_importFolders.sqf"; };
			class addModule { file = "EMM\Functions\repository\Modules\fn_addModule.sqf"; };
			class deleteModule { file = "EMM\Functions\repository\Modules\fn_deleteModule.sqf"; };
			class getModules { file = "EMM\Functions\repository\Modules\fn_getModules.sqf"; };
			class updateModule { file = "EMM\Functions\repository\Modules\fn_updateModule.sqf"; };
			class addPreset { file = "EMM\Functions\repository\Presets\fn_addPreset.sqf"; };
			class deletePreset { file = "EMM\Functions\repository\Presets\fn_deletePreset.sqf"; };
			class getPresetData { file = "EMM\Functions\repository\Presets\fn_getPresetData.sqf"; };
			class setPresetData { file = "EMM\Functions\repository\Presets\fn_setPresetData.sqf"; };
			class checkIfNameExists { file = "EMM\Functions\Shared\Rename\fn_checkIfNameExists.sqf"; };
			class getRenameInput { file = "EMM\Functions\Shared\Rename\fn_getRenameInput.sqf"; };
			class openRenameMenu { file = "EMM\Functions\Shared\Rename\fn_openRenameMenu.sqf"; };
			class rename { file = "EMM\Functions\Shared\Rename\fn_rename.sqf"; };
			class checkIfFail { file = "EMM\Functions\compilers\applyModules\failedReport\fn_checkIfFail.sqf"; };
			class copyReport { file = "EMM\Functions\compilers\applyModules\failedReport\fn_copyReport.sqf"; };
			class failedToGiveReport { file = "EMM\Functions\compilers\applyModules\failedReport\fn_failedToGiveReport.sqf"; };
			class failedToLoadReport { file = "EMM\Functions\compilers\applyModules\failedReport\fn_failedToLoadReport.sqf"; };
			class loadTargetsMenu { file = "EMM\Functions\ModuleInventory\targets\menu\fn_loadTargetsMenu.sqf"; };
			class onSelectTarget { file = "EMM\Functions\ModuleInventory\targets\menu\fn_onSelectTarget.sqf"; };
			class openEditTargetsMenu { file = "EMM\Functions\ModuleInventory\targets\menu\fn_openEditTargetsMenu.sqf"; };
			class setTargets { file = "EMM\Functions\ModuleInventory\targets\menu\fn_setTargets.sqf"; };
			class showEditBtn { file = "EMM\Functions\ModuleInventory\targets\menu\fn_showEditBtn.sqf"; };
			class presetsList_addItem { file = "EMM\Functions\Presets\manager\Listbox\fn_presetsList_addItem.sqf"; };
			class presetsList_deleteItem { file = "EMM\Functions\Presets\manager\Listbox\fn_presetsList_deleteItem.sqf"; };
			class presetsList_renameItem { file = "EMM\Functions\Presets\manager\Listbox\fn_presetsList_renameItem.sqf"; };
			class checkForHiddenModules { file = "EMM\Functions\repository\Folders\Common\fn_checkForHiddenModules.sqf"; };
			class getFoldersStorage { file = "EMM\Functions\repository\Folders\DataAccess\fn_getFoldersStorage.sqf"; };
			class setFoldersStorage { file = "EMM\Functions\repository\Folders\DataAccess\fn_setFoldersStorage.sqf"; };
			class modulesAmount { file = "EMM\Functions\repository\Modules\Common\fn_modulesAmount.sqf"; };
			class saveModule { file = "EMM\Functions\repository\Modules\Common\fn_saveModule.sqf"; };
			class getModulesStorage { file = "EMM\Functions\repository\Modules\DataAccess\fn_getModulesStorage.sqf"; };
			class setModulesStorage { file = "EMM\Functions\repository\Modules\DataAccess\fn_setModulesStorage.sqf"; };
			class getPresetsStorage { file = "EMM\Functions\repository\Presets\DataAccess\fn_getPresetsStorage.sqf"; };
			class setPresetsStorage { file = "EMM\Functions\repository\Presets\DataAccess\fn_setPresetsStorage.sqf"; };
			class att_getFoldersStorage { file = "EMM\Functions\repository\Folders\DataAccess\3den_Attributes\fn_att_getFoldersStorage.sqf"; };
			class att_setFoldersStorage { file = "EMM\Functions\repository\Folders\DataAccess\3den_Attributes\fn_att_setFoldersStorage.sqf"; };
			class var_getFoldersStorage { file = "EMM\Functions\repository\Folders\DataAccess\DEV\fn_var_getFoldersStorage.sqf"; };
			class var_setFoldersStorage { file = "EMM\Functions\repository\Folders\DataAccess\DEV\fn_var_setFoldersStorage.sqf"; };
			class att_getModulesStorage { file = "EMM\Functions\repository\Modules\DataAccess\3den_Attributes\fn_att_getModulesStorage.sqf"; };
			class att_setModulesStorage { file = "EMM\Functions\repository\Modules\DataAccess\3den_Attributes\fn_att_setModulesStorage.sqf"; };
			class var_getModulesStorage { file = "EMM\Functions\repository\Modules\DataAccess\DEV\fn_var_getModulesStorage.sqf"; };
			class var_setModulesStorage { file = "EMM\Functions\repository\Modules\DataAccess\DEV\fn_var_setModulesStorage.sqf"; };

		};

	};

};

