// params[["_new", false]];

// private _okFunc = if (_new) then {
// 	[true, {[] call VTG_fnc_newModule}]
// } else {
// 	[true, {[] call VTG_fnc_changeModule}]
// };

// [
// 	"You have unsaved data! Continue?",
// 	"Warning!",
// 	_okFunc,
// 	true,
// 	nil,
// 	(findDisplay 11549)
// ] call BIS_fnc_3DENShowMessage;

[
	"Can't continue because you have not completed current module.",
	"Warning!",
	true,
	false,
	nil,
	(findDisplay 11549)
] call BIS_fnc_3DENShowMessage;