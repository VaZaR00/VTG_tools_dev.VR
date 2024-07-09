params ["_control", "_path"];

private _weapons = [
	"Rifles",
    "Pistols",
    "Launchers"
];

private _itemPath  = [];
_itemPath append _path;

_path deleteAt (count _path - 1);

if ((_weapons findIf { _x in (_control tvText _path) }) == -1) exitWith {};

private _weapClass = _control tvTooltip _itemPath;

private _compatibleAttachments = _weapClass call BIS_fnc_compatibleItems;

if (count _compatibleAttachments == 0) exitWith { ['No attachments for this weapon', 1] call VTG_fnc_message };

private _attCtrl = VTG_equipUI#10; //weapon attachments tree control
private _closeBtn = VTG_equipUI#11; //weapon attachments tree control Close Btn
private _arsenal = VTG_equipUI#0; //arsenal tree
private _arsenalLbl = VTG_equipUI#12; //arsenal tree

_attCtrl ctrlShow true;
_closeBtn ctrlShow true;
_arsenal ctrlShow false;
_arsenalLbl ctrlSetText "Weapon Attachments";

private _allAccessories = (VTG_itemCache#9)#1;

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
		if ((_x#1) in _compatibleAttachments) then {
			((_compatible#_i)#1) pushBack _x;
		};
	} forEach (_x#1);
} forEach _allAccessories;

VTG_weaponAttahcments = _compatible;
VTG_currentWeaponPath = _itemPath;

['', _attCtrl, VTG_weaponAttahcments] call VTG_fnc_loadArsenal;