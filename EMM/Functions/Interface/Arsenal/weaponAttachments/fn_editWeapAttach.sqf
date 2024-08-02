params [["_control", EMM_equipUI#1], ["_path", tvCurSel (EMM_equipUI#1)]];

private _itemPath  = [];
_itemPath append _path;

if ([_path] call EMM_fnc_isWeapon) exitWith {};

private _weapClass = _control tvTooltip _itemPath;
private _compatibleAttachments = compatibleItems _weapClass;

if (count _compatibleAttachments == 0) exitWith {};//['No attachments for this weapon', 1] call EMM_fnc_message };

private _attCtrl = EMM_equipUI#10; //weapon attachments tree control
private _closeBtn = EMM_equipUI#11; //weapon attachments tree control Close Btn
private _arsenal = EMM_equipUI#0; //arsenal tree
private _arsenalLbl = EMM_equipUI#12; //arsenal tree lbl

_attCtrl ctrlShow true;
_closeBtn ctrlShow true;
_arsenal ctrlShow false;
_arsenalLbl ctrlSetText "Weapon Attachments";

private _EMM_itemCache = parsingNamespace getVariable "EMM_itemCache";
private _allAccessories = +((_EMM_itemCache#9)#1);
private _allMagazines = +((_EMM_itemCache#7)#1);

_allAccessories pushBack ["Magazines", _allMagazines];
//private _compatibleMags = _allMagazines select {_x in (compatibleMagazines _weapClass)};
private _compatibleMags = compatibleMagazines _weapClass;
// {
//     private _type = _x call EMM_fnc_getCategory;
//     private _category = switch (_type) do {
//         case 5: { "Sights" };
//         case 6: { "Pointers" };
//         case 7: { "Muzzles" };
//         case 8: { "Bipods" };
//         default { "" };
//     };
//     if (_category ==) exitWith {};
// }forEach _compatibleAttachments;
private _compatible = [];
{ 
	private _i = _forEachIndex;
	_compatible pushBack [(_x#0), []];
	private _empty = switch (_x#0) do {
		case "Sights": { "No Sight" };
		case "Pointers": { "No Pointer" };
		case "Muzzles": { "No Muzzle" };
		case "Bipods": { "No Bipod" };
		default { nil };
	};
	if (!isNil "_empty") then { ((_compatible#_i)#1) pushBack [_empty, _empty, ""]; };
	{
		if (((_x#1) in _compatibleAttachments)||((_x#1) in _compatibleMags)) then {
			((_compatible#_i)#1) pushBack _x;
		};
	} forEach (_x#1);
} forEach _allAccessories;

EMM_weaponAttahcments = _compatible;
EMM_currentWeaponPath = _itemPath;

['', _attCtrl, EMM_weaponAttahcments, false] spawn EMM_fnc_loadArsenal;