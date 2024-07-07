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

private _categoryIndex = _arsenal tvValue [(_sel#0)];
//get the category of selected item
private _arsenalCategories = [];
private _arr = [];
for "_i" from 0 to (count _sel - 2) do {
	_arr pushBack (_sel#_i);
	_arsenalCategories pushBack (_arsenal tvText _arr);
};

//where we will put the item (general is just somewhere/default slot)

//get the "Add" function of selected item
private _func = _classname call VTG_fnc_getItemTypeFunc;
private _destAndFunc = _func call VTG_fnc_itemDestination;

_path = [_destAndFunc#0, _arsenalCategories, _categoryIndex] call VTG_fnc_checkCategories;
[_path, _classname, _destAndFunc#1] call VTG_fnc_peekItem;

_inventoryTree tvSortAll [[], false];