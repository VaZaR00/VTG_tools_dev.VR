private _treeMap = call EMM_fnc_getFoldersStorage;
private _tree = EMM_equipUI#5;

tvClear _tree;
{
	private _pic = switch ((_x#1)) do {
		case "%EMM_FOLDER%": {
			"a3\3den\data\cfg3den\layer\icon_ca.paa";
		};
		case "%EMM_MODULE%": {
			"a3\3den\data\cfg3den\history\changeattributes_ca.paa";
		};
		default {""};
	};
	[[(_x#2), (_x#2), _pic, (_x#1), (_x#3)], _tree, (_x#0)] call EMM_fnc_addItem;
} forEach _treeMap;

[] call EMM_fnc_sortItems;