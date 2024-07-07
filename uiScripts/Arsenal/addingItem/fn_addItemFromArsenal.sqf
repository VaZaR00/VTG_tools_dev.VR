disableSerialization;
//get ui elements
private _arsenal = VTG_equipUI#0; //arsenal items tree
private _inventoryTree = VTG_equipUI#1; //module items tree

private _sel = tvCurSel _arsenal; //the selected item path: [cat, index]
//will throw error if only category is selected in tree view
if !((count _sel) > 1) exitWith {['Nothing selected', 1] call VTG_fnc_message};

private _classname = _arsenal tvData _sel; //the classname of item
//throw error if there no classname for some reason
if (_classname isEqualTo '') exitWith {['Nothing selected', 1] call VTG_fnc_message};

//private _categoryIndex = _arsenal tvValue [(_sel#0)];

//get the category of selected item
private _arsenalCategories = [];
private _arr = [];
for "_i" from 0 to (count _sel - 2) do {
	_arr pushBack (_sel#_i);
	_arsenalCategories pushBack (_arsenal tvText _arr);
};

[_classname, _arsenalCategories] call VTG_fnc_addItemMiddleware;

_inventoryTree tvSortAll [[], false];