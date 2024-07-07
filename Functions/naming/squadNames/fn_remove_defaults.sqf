//_groups = param[0];

private _groups = get3DENSelected "group";

if (count _groups == 0) then {
	_groups = allGroups;
};

{
	_x setVariable ["VTG_fnc_squadDefaultName", nil];
}forEach _groups;