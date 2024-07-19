params [
	['_message', '', ['']],
	['_type', 0, [0]]
];
if (is3DEN) then {
	[_message, _type] call BIS_fnc_3DENNotification
} else {
	hint _message;
};