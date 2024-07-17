params ["_control", "_path"];

if (count _path < 2) exitWith {};

if ((_control tvValue _path) == 1) then {
	_control tvSetValue [_path, 0];
	_control tvSetColor [_path, [1,0.15,0.25,1]]; //red
}else{
	_control tvSetValue [_path, 1];
	_control tvSetColor [_path, [0.32,1,0.31,1]]; //green
};
_control tvSetCurSel [-1];