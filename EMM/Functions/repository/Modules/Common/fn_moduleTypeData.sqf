#include "..\..\..\..\defines.hpp";

params[["_type", 0]];

EMM_var_f_WHEN_CONTAINER_MDL = {
	params[["_show", false]];
	C_SHOW_EMM(3568, _show);
	C_SHOW_EMM(4561, _show);
	C_SHOW_EMM(1330, !_show);
	C_SHOW_EMM(1016, _show);
};

private _types = [
	[
		type_EMM_MODULE,
		{}
	],
	[
		type_EMM_MODULE_CONT,
		EMM_var_f_WHEN_CONTAINER_MDL
	]
];

_types#_type;