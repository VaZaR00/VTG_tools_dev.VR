params ["_tree", "_sel"];

//reset previous
_tree tvSetColor [EMM_Current_Module_path, [1,1,1,1]];
_tree tvSetSelectColor [EMM_Current_Module_path, [0,0,0,1]];
_tree tvSetPictureColor [EMM_Current_Module_path, [1,1,1,1]];
_tree tvSetPictureColorSelected [EMM_Current_Module_path, [1,1,1,1]];

//set current
_tree tvSetColor [_sel, [0,1,0.2,1]];
_tree tvSetSelectColor [_sel, [0,1,0.2,1]];
_tree tvSetPictureColor [_sel, [0,1,0.2,1]];
_tree tvSetPictureColorSelected [_sel, [0,1,0.2,1]];

EMM_Current_Module_path = _sel;