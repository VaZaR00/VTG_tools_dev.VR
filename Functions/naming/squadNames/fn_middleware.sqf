private _nextFunc = param[0];

private _groups = get3DENSelected "group";

if (count _groups == 0) then {
	_groups = allGroups;
};

[_groups] call _nextFunc;