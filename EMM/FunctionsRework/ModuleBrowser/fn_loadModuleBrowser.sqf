private _treeMap = call EMM_fnc_getFoldersStorage;
private _tree = EMM_equipUI#5;

{
	_image = "";
	switch ((_x#2)) do {
		case "%EMM_FOLDER%": {
			_image = "a3\3den\data\cfg3den\layer\icon_ca.paa";
		};
	};
	[[(_x#2), (_x#2), _image, (_x#1), 0], _tree, (_x#0)] call EMM_fnc_addItem;
} forEach _treeMap;