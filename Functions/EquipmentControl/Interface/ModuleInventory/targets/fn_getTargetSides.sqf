private _sides = [];
{
	if (count (groups _x) > 0) then {
		private _option = switch (_x) do {
			case west: { ["All Blue", "Apply for All Blue units", "blue"] };
			case opfor: { ["All Red", "Apply for All Red units", "red"] };
			case independent: { ["All Green", "Apply for All Green units", "ind"] };
			case civilian: { ["All Civilian", "Apply for All Civilian units", "civ"] };
		};
		_sides pushBack _option;
	};
} forEach [west, opfor, independent, civilian];

_sides;