private _display = uiNamespace getVariable ['EMM_EquipmentModulesManager', displayNull];
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
private _changeFuncBtn = _display displayCtrl 1686;        //10
private _WeapAttachTree = _display displayCtrl 1239;       //11
private _WeapAttachCloseBtn = _display displayCtrl 1238;   //12
private _arsenalLbl = _display displayCtrl 1005;           //13
private _attachmBtn = _display displayCtrl 1605;           //14
private _editBtn = _display displayCtrl 1661;              //15
private _moduleLbl = _display displayCtrl 1007;            //16
private _expandChkbox = _display displayCtrl 1875;         //17
private _loadingArsenalLbl = _display displayCtrl 1338;    //18
private _validFuncsChkbox = _display displayCtrl 1995;     //19



[
    _arsenal,           //0  -  ars
    _inventoryTree,     //1  -  inv
    _searchInput,       //2  -  search
    _amountInput,       //3  -  amount
    _addToCombo,        //4  -  addTo
    _modulesTree,       //5  -  modlTree
    _moduleNameInput,   //6  -  modlName
    _targetsCombo,      //7  -  target
    _unitsNamesInput,   //8  -  units
    _changeFuncBtn,     //9  -  add func
    _WeapAttachTree,    //10 -  weapAtt
    _WeapAttachCloseBtn,//11 -  closeWeapAtt
    _arsenalLbl,        //12 -  arsLBL
    _attachmBtn,        //13 -  attchBtn
    _editBtn,           //14 -  edit
    _moduleLbl,         //15 -  modLBL
    _expandChkbox,      //16 -  expand
    _loadingArsenalLbl, //17 -  loading
    _validFuncsChkbox   //18 -  validateFUNC
];

//  EMM_equipUI#