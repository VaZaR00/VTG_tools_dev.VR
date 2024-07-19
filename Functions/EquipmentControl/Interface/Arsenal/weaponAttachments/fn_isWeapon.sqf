params ["_path", ["_control", (EMM_equipUI#1)]];

_path deleteAt (count _path - 1);

private _weapons = [
	"Rifles",
    "Pistols",
    "Launchers"
];

((_weapons findIf { _x in (_control tvText _path) }) == -1)