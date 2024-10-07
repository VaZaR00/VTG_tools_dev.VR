#include "..\..\..\defines.hpp";

private _arsenal = EMM_equipUI#0;

private _category = EMM_var_currentArsenalCategory;
private _module = EMM_var_ActiveModuleTab#1;

private _row = lnbCurSelRow _arsenal;

private _name = _arsenal lnbText [_row, 0];
private _class = _arsenal lnbData [_row, 0];
private _pic = _arsenal lnbPicture [_row, 1];
private _func = [_class] call EMM_fnc_getItemTypeFunc;
private _amount = [] call EMM_fnc_getAmountInput;

if (
	!(EMM_nested_currnetParentPath isEqualTo []) &&
	(_func in ["APWI", "AM"])
) then {
	_func = "AWI";
} else {
	switch (EMM_var_ActiveModuleTab#0) do {
		case 1: { _func = "AIU" };
		case 2: { _func = "AIV" };
		case 3: { _func = "AIB" };
	};
};

if ((_class == "%EMM_comp%") &&
	(_name == EMM_Current_Module)
) exitWith {
	["Can't add composite module into itself!", 1] call EMM_fnc_message;
};
if ((_class == "%EMM_comp%") &&
	{
		_typeIndex = ISNIL(EMM_Current_Module_type, 0);
		PR(_pic) = TYPE_DATA_BY_I(_typeIndex, 0);
		_modulePic != _pic
	}
) exitWith {
	["Can't add composite module of different type!", 1] call EMM_fnc_message;
};

if (_class == "%EMM_comp%") then {
	_class = "comp$$" + _name;
	_func = "none";
};
if (_class == "%NO_ITEM%") then {
	_class = _class + _category;
};

private _itemData = [_name, _class, _pic, _func, _amount];

private _isRand = if ((EMM_var_ActiveModuleTab#0) == 0) then {true} else {false};

[_itemData, _category, _module, _isRand] call EMM_fnc_addItemToModule;