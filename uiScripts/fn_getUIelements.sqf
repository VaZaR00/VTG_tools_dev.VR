private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];
//private _target = _display getVariable ['EIM_Target', objNull];
private _arsenal = _display displayCtrl 1501;              //1
private _inventoryTree = _display displayCtrl 1500;        //2
private _searchInput = _display displayCtrl 1598;          //3
private _amountInput = _display displayCtrl 1401;          //4
private _addToCombo = _display displayCtrl 2100;           //5
private _modulesTree = _display displayCtrl 1778;          //6
private _moduleNameInput = _display displayCtrl 1442;      //7
private _targetsCombo = _display displayCtrl 2101;         //8
private _unitsNamesInput = _display displayCtrl 1403;      //9
private _changeFuncBtn = _display displayCtrl 1686;

[
    _arsenal,           //0 - ars
    _inventoryTree,     //1 - inv
    _searchInput,       //2 - search
    _amountInput,       //3 - amount
    _addToCombo,        //4 - addTo
    _modulesTree,       //5 - modlTree
    _moduleNameInput,   //6 - modlName
    _targetsCombo,      //7 - target
    _unitsNamesInput,    //8 - units
    _changeFuncBtn      //9 - add func
];

//  VTG_equipUI#