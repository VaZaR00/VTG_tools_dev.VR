#include "..\..\..\..\defines.hpp";

params ["_display"];

PR(_type) = ISNIL(EMM_Current_Module_type, 0);
private _tree = _display displayCtrl 1568;
private _includeField = _display displayCtrl 1400;
private _excludeField = _display displayCtrl 1401;

private _moduleTargets = if (EMM_Current_Module != "%none%") then {
	([1, EMM_Current_Module] call EMM_fnc_getModules)#0;
} else { [] };

private _targetsClasses = _moduleTargets#0;

if (count _moduleTargets > 1) then {
	private _include = _moduleTargets#1;
	private _exclude = _moduleTargets#2;

	_includeField ctrlSetText _include;
	_excludeField ctrlSetText _exclude;
};

private _all = [];

switch (_type) do {
	case 0: {
		private _blue = [];
		private _red = [];
		private _green = [];
		private _civ = [];

		{
			private _class = typeOf _x;

			switch (side _x) do {
				case west: { _blue };
				case east: { _red };
				case resistance: { _green };
				case civilian: { _civ };
			} pushBackUnique _class;
		} forEach allUnits;

		_all = [
			[_blue, "Blue"],	/*, [0.3,0.4,1,1]], */
			[_red, "Red"],	/*, [1,0,0,1]], */
			[_green, "Green"],	/*, [0,1,0,1]], */
			[_civ, "Civilian"]	/*, [0.8,0.3,1,1]] */
		];
	};
	case 1: {
		private _vehicles = [];
		{
			private _class = typeOf _x;

			_vehicles pushBackUnique _class;
		} forEach vehicles;

		_all = [[_vehicles, "Containers"]];
	};
};

{
	if (count (_x#0) == 0) then { continue; };

	private _index = _tree tvAdd [[], (_x#1)];
	//_tree tvSetColor [[_index], (_x#2)];

	{
		private _color = [1,0.15,0.25,1]; //red
		private _value = 0;

		if (_x in _targetsClasses) then {
			_color = [0.32,1,0.31,1]; //green
			_value = 1;
		};

		private _tooltip = _x;
		private _name = _x call EMM_fnc_getClassDisplayName;
		if (EMM_SHOW_TARGETS_CLASSES) then {
			_tooltip = _name;
			_name = _x;
		};
		private _path = _tree tvAdd [[_index], _name];
		_tree tvSetData [[_index, _path], _x];
		_tree tvSetValue [[_index, _path], _value];
		_tree tvSetColor [[_index, _path], _color]; //red
		_tree tvSetTooltip [[_index, _path], _tooltip];
	} forEach (_x#0);
} forEach _all;

tvExpandAll _tree;