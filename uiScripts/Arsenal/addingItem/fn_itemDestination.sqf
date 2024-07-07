params["_func", ["_byAddTo", true]];
private _addToCombo = VTG_equipUI#4; //the dropdown option of where to put items

private _dest = 
if (_byAddTo) then {
	switch (
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
}else{
	switch (_func) do {
		case "AIU": { "To Uniform" };
		case "AIV": { "To Vest" };
		case "AIB": { "To Backpack" };
		default { "Inventory" };
	};
};
[_dest, _func];