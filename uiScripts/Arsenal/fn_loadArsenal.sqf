//source: https://github.com/maca134/3den_inventory_manager/blob/master/src/code/fn_loadItemTree.sqf

params [
	['_term', '', ['']]
];
disableSerialization;
private _display = uiNamespace getVariable ['EquipmentModulesManager', displayNull];
private _tree = _display displayCtrl 1501;
tvClear _tree;
{
	_x params ['_name', '_list'];
	private _treeCatIndex = _forEachIndex;
	_tree tvAdd [[], _name];
	if (_term isEqualTo '') then {
		_tree tvCollapse [_treeCatIndex];
	} else {
		_tree tvExpand [_treeCatIndex];
	};
	private _itemIndex = 0;
	{
		_x params ['_itemName', '_itemClassname', '_itemPicture'];
		private _filter = if (_term isEqualTo '') then {
			false
		} else {
			((toLower _itemClassname) find (toLower _term)) isEqualTo -1 && ((toLower _itemName) find (toLower _term)) isEqualTo -1
		};
		if (!_filter) then {
			private _path = [_treeCatIndex, _itemIndex];
			_tree tvAdd [[_treeCatIndex], _itemName];
			_tree tvSetData [_path, _itemClassname];
			_tree tvSetPicture [_path, _itemPicture];
			_tree tvSetTooltip [_path, _itemClassname];
			_itemIndex = _itemIndex + 1;
		};
	} forEach _list;
	if (_itemIndex isEqualTo 0) then {
		_tree tvAdd [[_treeCatIndex], 'Nothing found'];
		_tree tvSetData [[_treeCatIndex, _itemIndex], ''];
		_tree tvSetTooltip [[_treeCatIndex, _itemIndex], 'Nothing found'];
	};
} forEach VTG_itemCache;

_tree tvSort [[]];