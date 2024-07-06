disableSerialization;
//get ui elements
private _arsenal = VTG_equipUI#0; //arsenal items tree
private _inventoryTree = VTG_equipUI#1; //module items tree
private _addToCombo = VTG_equipUI#4; //the dropdown option of where to put items

private _sel = tvCurSel _arsenal; //the selected item path: [cat, index]
//will throw error if only category is selected in tree view
if !((count _sel) isEqualTo 2) exitWith {['Nothing selected', 1] call VTG_fnc_message};

private _classname = _arsenal tvData _sel; //the classname of item
//throw error if there no classname for some reason
if (_classname isEqualTo '') exitWith {['Nothing selected', 1] call VTG_fnc_message};

//get the category of selected item
private _arsenalCategory = _arsenal tvText [(_sel#0)];
//get the "Add" function of selected item
private _func = _classname call VTG_fnc_getItemTypeFunc;
//where we will put the item (general is just somewhere/default slot)

private _destination = switch (
	_addToCombo lbText (lbCurSel _addToCombo)
) do {
	case "Uniform": {
		_func = "AIU";
		"To Uniform"
	};
	case "Vest": {
		_func = "AIV";
		"To Vest"
	};
	case "Backpack": {
		_func = "AIB";
		"To Backpack"
	};
	default { "General" };
};

_path = [_destination, _arsenalCategory] call VTG_fnc_checkCategories;
[_path, _classname, _func] call VTG_fnc_peekItem;

_inventoryTree tvSortAll [[], false];