private _errors = [];
{
	{
		_unit = _x;
		_encryption = getText (configFile >> "CfgVehicles" >> backpack _unit >> "tf_encryptionCode");
		if (_encryption != "") then {
			_radioSide = nil;

			switch (_encryption) do {
				case "tf_west_radio_code": { _radioSide = west };
				case "tf_east_radio_code": { _radioSide = east };
				case "tf_guer_radio_code": { _radioSide = resistance };
			};

			if (side _unit != _radioSide) then {
				_text = "Squad: " + (str group _unit) + ";  Units: " + (_unit get3DENAttribute "description")#0;
				_errors pushBack _text;
			};
		};
	}forEach units _x;
}forEach allGroups;

if (count _errors != 0) then {
	_text = _errors joinString " and ";
	[_text, "LR radio side not matching units side", false, "Ok"] call BIS_fnc_3DENShowMessage;
};