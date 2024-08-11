params["_map"];

private _tree = EMM_equipUI#5;
private _upPath = [];
{
	private _path = +(_x#0);
	_path insert [0, _upPath];
	_path resize (count (_x#0));

	private _pic = switch (_x#1) do {
		case "%EMM_FOLDER%": {
			"a3\3den\data\cfg3den\layer\icon_ca.paa";
		};
		case "%EMM_MODULE%": {
			"a3\3den\data\cfg3den\history\changeattributes_ca.paa";
		};
		default {""};
	};
	_upPath = [[(_x#2), (_x#2), _pic, (_x#1), 0], _tree, _path] call EMM_fnc_addItem;
} forEach _map;