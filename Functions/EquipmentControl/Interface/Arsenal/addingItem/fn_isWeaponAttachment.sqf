params["_arsenalCategories", "_classname"];

private _path = [];
private _inventoryTree = EMM_equipUI#1;

private _weapons = [
	"Rifles",
    "Pistols",
    "Launchers"
];

if ("Accessories" in _arsenalCategories) then {
	_path = tvCurSel _inventoryTree;
	private _weapClass = _inventoryTree tvTooltip _path;
	_path deleteAt (count _path - 1);
	if (
		((_inventoryTree tvText _path) in _weapons) and 
		(_classname in (_weapClass call BIS_fnc_compatibleItems))
	) then {
		_path = tvCurSel _inventoryTree;
	}else{ _path = []; };
};

_path;