[] call VTG_fnc_updateAddFunc;

private _attachmBtn = VTG_equipUI#13;

if ([_path] call VTG_fnc_isWeapon) then {
	_attachmBtn ctrlShow true;
}else{
	_attachmBtn ctrlShow false;
};