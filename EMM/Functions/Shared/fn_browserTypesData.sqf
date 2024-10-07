#include "..\..\defines.hpp";

params["_type"];

/*
	return:
	[
		picture,
		sortIndex,
		moduleType (-1 means none)
	]
*/

switch (_type) do {
	case type_EMM_FOLDER: {
		[
			EMM_var_pic_FOLDER,
			10000,
			-1
		]
	};
	case type_EMM_MODULE: {
		[
			EMM_var_pic_MODULE,
			20000,
			0
		]
	};
	case type_EMM_MODULE_CONT: {
		[
			EMM_var_pic_MODULE_CONT,
			30000,
			1
		]
	};
	default {["", 0]};
};