if (EMM_DEV_STATE) then {
	+(parsingNamespace getVariable ["EMM_MODULES_FOLDERS", []]);
} else {
	private _data = "EMM_attributes" get3DENMissionAttribute "EMM_MODULES_FOLDERS";

	if !(_data isEqualType "") exitWith {[]}; //return
	if (count _data == 0) exitWith {[]}; //return

	_data = call compile _data;

	+_data;
};