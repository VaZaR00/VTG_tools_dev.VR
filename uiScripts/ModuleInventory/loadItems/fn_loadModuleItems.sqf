params["_items"];
//hint str [1, _items];
private _tree = VTG_equipUI#1;

tvClear _tree;

private _iterate = {
	params["_items", ["_parent", []]];

	{
		/*
		item:

			[_class, _func, _amount]

		gun with attachments:

			[_class, _func, _amount, (_attachmnets)]
		
		random:

			["Rand", [item, item ...]]

		*/


		private _item = _x;
		if ((_item#0) == "Rand") then {
			_item deleteAt 0;
			[_item, _parent] call _iterate;
			continue;
		};
		if ((_item#1) == "AWI") then {
			//hint str _parent;
			[_item, true, _parent] call VTG_fnc_setModuleItem;
			continue;
		};

		private _path = [_item] call VTG_fnc_setModuleItem;

		if (count _item == 4) then {
			[(_item#3), _path] call _iterate;
		};
	}forEach _items;
};

[_items] call _iterate;

if !(VTG_expandInvChkbox) then {tvCollapseAll _tree};