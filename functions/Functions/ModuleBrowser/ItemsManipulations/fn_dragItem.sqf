params["_tree"];

private _startPath = EMM_MODULE_BROWSER_SELECT_PATH;
//[str EMM_MODULE_BROWSER_SELECT_PATH, 1] call EMM_fnc_message;
if (_startPath isEqualTo []) exitWith {};

uiSleep 0.2;
if (!EMM_MODULE_BROWSER_DRAGGING) exitWith {};

waitUntil {!EMM_MODULE_BROWSER_DRAGGING};

_startPath = EMM_MODULE_BROWSER_SELECT_PATH;
private _destinationPath = +EMM_MODULE_BROWSER_CURRENT_HOVER_PATH;

//if (_destinationPath isEqualTo []) exitWith {};
if (_startPath isEqualTo _destinationPath) exitWith {};

//copy to prevent overriding
private _destCopy = +_destinationPath;
private _startCopy = +_startPath;

//check if trying to drag item into itself
_destCopy resize (count _startPath);
private _isNested = _destCopy isEqualTo _startPath;
if (_isNested) exitWith {};

//check if trying to drag item into same path
_startCopy deleteAt (count _startCopy - 1);
private _isSameCategory = _destinationPath isEqualTo _startCopy;
if (_isSameCategory) exitWith {};

// EMM_CONTINUE_MOVING_ITEM = false;
// [
// 	_text,
// 	_title,
// 	[
// 		"Yes",
// 		{EMM_CONTINUE_MOVING_ITEM = true}
// 	],
// 	[
// 		"No",
// 		{}
// 	],
// 	"a3\ui_f\data\map\markers\military\warning_ca.paa",
// 	findDisplay 11549
// ] call BIS_fnc_3DENShowMessage;

// waitUntil {EMM_CONTINUE_MOVING_ITEM};
//[str _destinationPath, 0] call EMM_fnc_message;

[_tree, _startPath, _destinationPath] call EMM_fnc_moveItem;