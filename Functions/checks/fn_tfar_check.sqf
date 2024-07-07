private _rootConfig = configFile >> "CfgVehicles";

private _tfar_radios = [];
private _wrong_tfar_radios = [];
private _fake_tfar_radios = [];

{
	_class = configName _x;
	if (
		("tf_" in toLower _class) or
		("radio" in toLower _class)
	) then {
		_elPar = [_rootConfig >> _class, true] call BIS_fnc_returnParents;
		if ("Bag_Base" in _elPar) then {
			_tfar_radios pushBack _class;
		};
	};
} forEach ("true" configClasses _rootConfig);

{
	_encryption = toLower getText (_rootConfig >> _x >> "tf_encryptionCode");
	_displayName = toLower getText (_rootConfig >> _x >> "displayName");

	if (count _encryption == 0) then {
		_fake_tfar_radios pushBack _x;
		continue;
	};

	_radioSide = nil;
	
	if ("[blue]" in _displayName) then {
		_radioSide = "tf_west_radio_code";
	};
	if ("[red]" in _displayName) then {
		_radioSide = "tf_east_radio_code";
	};
	if ("[green]" in _displayName) then {
		_radioSide = "tf_guer_radio_code";
	};
	
	if (_encryption != _radioSide) then {
		_wrong_tfar_radios pushBack _x;
	};
	
}forEach _tfar_radios;

private _result = _wrong_tfar_radios joinString " | ";
private _fakes = _fake_tfar_radios joinString " | ";

copyToClipboard _result;

[_result, "test result"] call BIS_fnc_3DENShowMessage;
