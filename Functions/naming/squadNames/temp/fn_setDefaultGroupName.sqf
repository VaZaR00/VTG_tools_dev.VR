//_groups = param[0];

private _groups = get3DENSelected "group";

if (count _groups == 0) then {
	_groups = allGroups;
};

{
	_squadName = groupId _x;
	_x setVariable ["VTG_fnc_squadDefaultName", _squadName];
}forEach _groups;