#include "..\..\..\defines.hpp";

params["_data"];

private _storage = [] call EMM_fnc_getModules;
MSG(_storage isEqualType createHashMap);
_storage insert _data;

[_storage] call EMM_fnc_setModulesStorage;