params["_type"];

private _option = VTG_TARGETS_OPTIONS select { (_x#2) == _type };
private _return = (_option#0)#0;

_return;