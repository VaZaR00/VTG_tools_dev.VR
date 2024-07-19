waitUntil {!isNull player};

private _crews_str = missionNamespace getVariable ["VTG_CrewControl_Crews", []];
private _vehicles_str = missionNamespace getVariable ["VTG_CrewControl_Vehicles", []];
private _warning = missionNamespace getVariable ["VTG_CrewControl_Warning", "You're not a crew!"];
private _crewMessage = missionNamespace getVariable ["VTG_CrewControl_CrewMessage", "You're crew!"];
private _CHECK_INTERVAL = 1;

private _REST_crews = _crews_str apply {
	missionNamespace getVariable _x;
};
private _REST_vehicles = _vehicles_str apply {
	missionNamespace getVariable _x;
};

if (count _REST_crews == 0) exitWith {
	hint "NO CREWS FOR CREW CONTROL";
};
if (count _REST_vehicles == 0) exitWith {
	hint "NO VEHICLES FOR CREW CONTROL";
};

private _RESTRICTED_ROLES = [["driver"],["commander"],["gunner"],["turret",[-1]],["turret",[0]],["turret",[1]],["turret",[0,0]],["turret",[0,1]],["turret",[1,0]]];

while {sleep _CHECK_INTERVAL; (alive player)&&!(player in _REST_crews)} do
{
	private _vehicle = vehicle player;

	if (_vehicle != player) then
	{
		if !(_vehicle in _REST_vehicles) then {
			continue; //skip to next loop iteration because vehicle isn't restricted
		};

		private _seat = assignedVehicleRole player;

		if (_seat in _RESTRICTED_ROLES) then {
			moveOut player;
			titleText [_warning, "PLAIN", 0.2];
		};
	};
};

titleText [_crewMessage, "PLAIN", 0.3];