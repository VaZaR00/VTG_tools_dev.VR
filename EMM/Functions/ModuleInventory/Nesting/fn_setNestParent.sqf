params[["_set", false], ["_tree", EMM_ActiveModuleTab#1], ["_path", nil]];

if (isNil "EMM_nested_currnetParentPath") exitWith {
	EMM_nested_currnetParentPath = [];
};
if (isNil "_path") then {_path = EMM_nested_currnetParentPath};

_tree tvSetColor [EMM_nested_currnetParentPath, [1,1,1,1]];
_tree tvSetSelectColor [EMM_nested_currnetParentPath, [0,0,0,1]];
EMM_nested_currnetParentPath = [];
EMM_nested_currnetParentName = "";

if (_set) then {
	EMM_nested_currnetParentPath = +_path;

	private _num = if (count _path > 2) then {3} else {1};
	_path resize (count _path - _num);
	EMM_nested_currnetParentName = _tree tvText _path;

	_tree tvSetColor [EMM_nested_currnetParentPath, [0,1,0.2,1]];
	_tree tvSetSelectColor [EMM_nested_currnetParentPath, [0,1,0.2,1]];
};

[_tree] spawn {
	uiSleep 0.1;
	(_this#0) tvExpand EMM_nested_currnetParentPath;
};