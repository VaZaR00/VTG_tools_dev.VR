if (EMM_DEV_STATE) then {
	+(uiNamespace getVariable ["EMM_EQUIP_STORAGE", []]);
} else {
	private _data = "EMM_attributes" get3DENMissionAttribute "EMM_MODULES_STORAGE";

	if !(_data isEqualType "") exitWith {[]}; //return
	if (count _data == 0) exitWith {[]}; //return

	_data = call compile _data;

	+_data;
};