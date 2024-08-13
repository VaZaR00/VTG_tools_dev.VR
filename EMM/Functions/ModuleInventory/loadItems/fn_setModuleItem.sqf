params["_item", ["_parent", []], ["_parentFunc", ""], ["_isRand", true]];

private _class = _item#0;
private _func = _item#1;
private _amount = _item#2;
private _name = _class call EMM_fnc_getClassDisplayName;
private _pic = _class call EMM_fnc_getClassPicture;

if ([[_class]] call EMM_fnc_checkIfFail) exitWith {};

private _categoryIndex = [_class] call EMM_fnc_getCategory;
private _category = EMM_itemsCache_scheme#_categoryIndex#0;

if ("%NO_ITEM%" in _class) then {
    _category = (_class splitString "%")#1;
};

if (_parentFunc == "") then { _parentFunc = _func };

private _tabIndex = switch (_parentFunc) do {
    case "AIU": {1};
    case "AIV": {2};
    case "AIB": {3};
    default {0};
};

private _tab = EMM_moduleTabs#_tabIndex#0;

if (count _parent != 0) then {
    if ((_tab tvCount []) == 0) then {
        private _parentCount = count _parent;
        private _num = _parentCount - (_parentCount - 1);
        private _parentCopy = +_parent;
        _parentCopy resize (count _parentCopy - _num);
        private _firstParentFunc = _tab tvData _parentCopy;
        _tabIndex = switch (_firstParentFunc) do {
            case "AIU": {1};
            case "AIV": {2};
            case "AIB": {3};
            default {0};
        };
        _tab = EMM_moduleTabs#_tabIndex#0;
    };
    [true, _tab, _parent] call EMM_fnc_setNestParent;
};

private _itemData = [_name, _class, _pic, _func, _amount];

EMM_TEMP_NEW_ACTIVE_TAB = _tabIndex;

[_itemData, _category, _tab, _isRand] call EMM_fnc_addItemToModule;