{
	if (((_x#0) tvCount []) == 0) then {
		private _c = 0.3;
		(_x#1) ctrlSetTextColor [_c, _c, _c, 0.5];
	} else {
		(_x#1) ctrlSetTextColor [1, 1, 1, 0.5];
	};
} forEach EMM_moduleTabs;