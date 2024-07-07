_VTG_fnc_tools_logicModules = [];
_allLogicModules = allMissionObjects "Logic";

{
	_varName = (_x get3DENAttribute "Name")#0;
	if ("VTG_fnc_" in _varName) then {
		_VTG_fnc_tools_logicModules pushBack _x;
	};
}forEach _allLogicModules;

missionNamespace setVariable ["VTG_fnc_Tools_LogicModules", _VTG_fnc_tools_logicModules];