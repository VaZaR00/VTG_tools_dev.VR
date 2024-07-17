params["_btn"];
private _display = ctrlParent _btn;
private _tree = _display displayCtrl 1568;
private _includeField = _display displayCtrl 1400;
private _excludeField = _display displayCtrl 1401;

private _targets = [];
for "_i" from 0 to (_tree tvCount []) do {
	for "_j" from 0 to (_tree tvCount [_i]) do {
		if ((_tree tvValue [_i, _j]) == 1) then {
			_targets pushBack (_tree tvData [_i, _j]);
		};
	};
};

private _include = ctrlText _includeField;
private _exclude = ctrlText _excludeField;

VTG_moduleTargets = [_targets, _include, _exclude];
