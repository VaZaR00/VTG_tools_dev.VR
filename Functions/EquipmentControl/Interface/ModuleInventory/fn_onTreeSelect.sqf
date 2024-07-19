[] call EMM_fnc_updateAddFunc;

private _attachmBtn = EMM_equipUI#13;

if ([_path] call EMM_fnc_isWeapon) then {
	_attachmBtn ctrlShow true;
}else{
	_attachmBtn ctrlShow false;
};