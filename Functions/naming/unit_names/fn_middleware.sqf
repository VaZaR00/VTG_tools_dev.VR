private _nextFunc = param[0];

private _groups = get3DENSelected "object";

if (count _groups == 0) then {
	_groups = allGroups;
};

[_groups] call _nextFunc;