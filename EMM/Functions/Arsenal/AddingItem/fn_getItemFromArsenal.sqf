private _arsenal = EMM_equipUI#0;

private _category = EMM_currentArsenalCategory;
private _module = EMM_ActiveModuleTab#1;

private _row = lnbCurSelRow _arsenal;

private _name = _arsenal lnbText [_row, 0];
private _class = _arsenal lnbData [_row, 0];
private _pic = _arsenal lnbPicture [_row, 1];
private _func = [_class] call EMM_fnc_getItemTypeFunc;
private _amount = [] call EMM_fnc_getAmount;

switch (EMM_ActiveModuleTab#0) do {
	case 1: { _func = "AIU" };
	case 2: { _func = "AIV" };
	case 3: { _func = "AIB" };
};
if (
	!(EMM_attachs_currentWeapon_path isEqualTo []) &&
	(_func in ["APWI", "AM"])
) then {
	_func = "AWI";
};

if (
	(_name == EMM_Current_Module)&&
	(_class == "%EMM_comp%")
) exitWith {
	["Can't add composite module into itself!", 1] call EMM_fnc_message;
};
if (_class == "%EMM_comp%") then {
	_class = "comp$$" + _name;
	_func = "none";
};

private _itemData = [_name, _class, _pic, _func, _amount];

[_itemData, _category, _module] call EMM_fnc_addItemToModule;