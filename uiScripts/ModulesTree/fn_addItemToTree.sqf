params["_text", ["_path", [[]] ]];
disableSerialization;

if (_text == "") exitWith { hint "empty name" };

private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];
waitUntil { !(_display isEqualTo displayNull) };

private _ctrl = _display displayCtrl 1778;

_ctrl tvAdd [_path#0, _text];