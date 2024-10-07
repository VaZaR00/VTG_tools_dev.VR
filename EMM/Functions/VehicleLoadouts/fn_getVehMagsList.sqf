#include "..\..\defines.hpp"

params[["_veh", (get3DENSelected "object")#0]];

PR(_turrets) = allTurrets _veh;

PR(_compitableMags) = []; 
{
	_tur = _x;
	_turWeapons = _veh weaponsTurret _tur;

	{
		_weap = _x;
		_mags = GetCfg(getArray, "CfgWeapons", _weap, "magazines");
		_magWells = GetCfg(getArray, "CfgWeapons", _weap, "magazineWell");

		if (count _mags != 0) then {
			{
				_compitableMags pushBack [_x, _tur, _weap];
			} forEach _mags;
		};
		if (count _magWells != 0) then {	
			{
				_cfgs = configProperties [configFile >> "CfgMagazineWells" >> _x];
				{
					_wellMags = getArray _x;
					{
						_compitableMags pushBack [_x, _tur, _weap];
					} forEach _wellMags;
				} forEach _cfgs;
			} forEach _magWells;
		};
	} forEach _turWeapons;
} forEach _turrets;

_compitableMags