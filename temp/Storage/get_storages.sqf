_EMM_fnc_tools_logicModules = [];
_allLogicModules = allMissionObjects "Logic";

{
	_varName = (_x get3DENAttribute "Name")#0;
	if ("EMM_fnc_" in _varName) then {
		_EMM_fnc_tools_logicModules pushBack _x;
	};
}forEach _allLogicModules;

missionNamespace setVariable ["EMM_fnc_Tools_LogicModules", _EMM_fnc_tools_logicModules];