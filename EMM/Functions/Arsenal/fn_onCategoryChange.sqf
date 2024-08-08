params["_ctrl", "_sel"];

if !(!(EMM_nested_currnetParentPath isEqualTo []) &&
	{(["Access", "Magaz"] findIf {_x in (_ctrl lbText _sel)}) != -1}
) then {
	[false] call EMM_fnc_setNestParent;
	EMM_Arsenal_filter = "true"; 
};

[] call EMM_fnc_loadArsenalItems;