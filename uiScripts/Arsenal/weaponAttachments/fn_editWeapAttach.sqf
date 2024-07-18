params [["_control", VTG_equipUI#1], ["_path", tvCurSel (VTG_equipUI#1)]];

private _itemPath  = [];
_itemPath append _path;

if ([_path] call VTG_fnc_isWeapon) exitWith {};

private _weapClass = _control tvTooltip _itemPath;
private _compatibleAttachments = compatibleItems _weapClass;

if (count _compatibleAttachments == 0) exitWith {};//['No attachments for this weapon', 1] call VTG_fnc_message };

private _attCtrl = VTG_equipUI#10; //weapon attachments tree control
private _closeBtn = VTG_equipUI#11; //weapon attachments tree control Close Btn
private _arsenal = VTG_equipUI#0; //arsenal tree
private _arsenalLbl = VTG_equipUI#12; //arsenal tree lbl

_attCtrl ctrlShow true;
_closeBtn ctrlShow true;
_arsenal ctrlShow false;
_arsenalLbl ctrlSetText "Weapon Attachments";

private _allAccessories = +((VTG_itemCache#9)#1);
private _allMagazines = +((VTG_itemCache#7)#1);

_allAccessories pushBack ["Magazines", _allMagazines];
//private _compatibleMags = _allMagazines select {_x in (compatibleMagazines _weapClass)};
private _compatibleMags = compatibleMagazines _weapClass;
// {
//     private _type = _x call VTG_fnc_getCategory;
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
	{
		if (((_x#1) in _compatibleAttachments)||((_x#1) in _compatibleMags)) then {
			((_compatible#_i)#1) pushBack _x;
		};
	} forEach (_x#1);
} forEach _allAccessories;

VTG_weaponAttahcments = _compatible;
VTG_currentWeaponPath = _itemPath;

['', _attCtrl, VTG_weaponAttahcments] call VTG_fnc_loadArsenal;