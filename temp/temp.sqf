private _cfg = _x;
	(getNumber(_x >> "scope") isEqualTo 2) && 
	{([getText(_x >> "picture")] call EMM_fnc_validPic) && 
	{!((getText (_x >> "displayName")) isEqualTo "") &&
	{(!(isClass(_x >> "LinkedItems")) || {ARR_IN_STR(attWp, conifgName _cfg)})}}}