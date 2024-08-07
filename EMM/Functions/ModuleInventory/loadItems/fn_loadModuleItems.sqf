params["_items", ["_next", EMM_fnc_setModuleItem]];
//hint str [1, _items];

EMM_EQUIP_TEST_FAILED_ARR = [];

private _iterate = {
	params["_items", ["_parent", []], ["_parentFunc", ""]];

	private _next = EMM_fnc_setModuleItem;
	{
		/*
		item:

			[_class, _func, _amount]

		gun with attachments:

			[_class, _func, _amount, (_attachmnets)]
		
		random:

			["Rand", [item, item ...]]

		*/
		EMM_attachs_currentWeapon_path = [];

		private _item = _x;
		if ((_item#0) == "Rand") then {
			_item deleteAt 0;
			[_item, +_parent, _parentFunc] call _iterate;
			continue;
		};
		if ((_item#1) == "AWI") then {
			[_item, +_parent, _parentFunc] call _next;
			continue;
		};
		private _path = [_item, +_parent, _parentFunc] call _next;
		
		EMM_attachs_currentWeapon_path = [];

		if (count _item == 4) then {
			[(_item#3), +_path, (_item#1)] call _iterate;
		};
	}forEach _items;
};

[_items] call _iterate;

call EMM_fnc_checkIfEmpty;

if (isNil "EMM_TEMP_NEW_ACTIVE_TAB") then {EMM_TEMP_NEW_ACTIVE_TAB = 0};
[EMM_TEMP_NEW_ACTIVE_TAB] call EMM_fnc_setModuleTab;

EMM_attachs_currentWeapon_path = [];
EMM_TEMP_NEW_ACTIVE_TAB = nil;
