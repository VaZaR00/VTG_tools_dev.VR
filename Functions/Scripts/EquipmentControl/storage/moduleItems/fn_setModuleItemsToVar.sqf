private _tree = VTG_equipUI#1;

private _elements = [];
private _nestedCategories = ["To ", "Attach"];

private _getItemData = {
	params["_path"];

	private _class = _tree tvTooltip _path;
	private _func = _tree tvData _path;
	private _amount = _tree tvValue _path;

	[_class, _func, _amount];
};

private _iterate = {
	params["_path"];
////////////////////////////////////
/**///	hint str ["start",_path];
/**///	sleep 2;
////////////////////////////////////
	private _count = (_tree tvCount _path) - 1;
////////////////////////////////////
/**///	hint str ["count",_count];
/**///	sleep 2;
////////////////////////////////////
	for "_i" from 0 to _count do {
		private _downPath = [];
		_downPath append _path;
	////////////////////////////////////
/**///		hint str ["append",_downPath];
/**///		sleep 2;
	////////////////////////////////////
		_downPath pushBack _i;
	////////////////////////////////////
/**///		hint str ["pushBack",_downPath];
/**///		sleep 2;
	////////////////////////////////////
		private _text = _tree tvText _downPath;
	////////////////////////////////////
/**///		hint _text;
/**///		sleep 2;
	////////////////////////////////////
		if ((_nestedCategories findIf { _x in _text }) == 1) then {
			[_downPath] call _iterate;
		};
		if ((_tree tvData _downPath) == "") then {
			[_downPath] call _iterate;
			continue;
		};
	////////////////////////////////////	
/**///		hint "end iteration";
/**///		sleep 2;
	////////////////////////////////////
		_elements pushBack ([_downPath] call _getItemData);
		true;
	};
};

[[]] call _iterate;



// hint str [(_tree tvValue _sel), 
//  (_tree tvData _sel), 
//  (_tree tvTooltip _sel), (_tree tvText _sel)];


// for "_i" from 0 to (_tree tvCount []) do {
// 	private _text = _tree tvText [_i];
// 	if ("To " in _text) then {
// 		for "_j" from 0 to (_tree tvCount [_i]) do {
// 			[[_i, _j]] call _getItemData;
// 		};
// 		continue;
// 	};
// 	for "_j" from 0 to (_tree tvCount [_i]) do {
// 		[[_i, _j]] call _getItemData;
// 	};
// };

