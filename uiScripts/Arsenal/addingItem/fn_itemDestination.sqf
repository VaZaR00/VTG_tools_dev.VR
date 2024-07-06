params["_func"];
private _addToCombo = VTG_equipUI#4; //the dropdown option of where to put items

private _dest = switch (
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
	default { "Inventory" };
};
[_dest, _func];