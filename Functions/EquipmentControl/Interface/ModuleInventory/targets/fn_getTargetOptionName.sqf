params["_type"];

private _option = EMM_TARGETS_OPTIONS select { (_x#2) == _type };

if (count _option != 0) then {
	(_option#0)#0
} else {"All"};