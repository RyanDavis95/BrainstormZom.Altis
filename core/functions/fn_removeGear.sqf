params ["_unit"];
private["_alpha","_side"];

_alpha = missionNamespace getVariable "INF_AlphaZombie";
_side = _unit getVariable "INF_OriginalSide";
removeHeadgear _unit;
removeGoggles _unit;
removeVest _unit;
removeBackpack _unit;
removeUniform _unit;
removeAllWeapons _unit;
removeAllAssignedItems _unit;

if (vehicleVarName _unit == _alpha) then {
        switch (_side) do {
                case west: { _unit addUniform "U_B_FullGhillie_lsh";};
                case east: { _unit addUniform "U_O_FullGhillie_lsh";};
                case independent: { _unit addUniform "U_I_FullGhillie_lsh";};
                case civilian: { };
                default { };
            };      
    } else {
        switch (_side) do {
                case west: { _unit addUniform "U_B_GhillieSuit";};
                case east: { _unit addUniform "U_O_GhillieSuit";};
                case independent: { _unit addUniform "U_I_GhillieSuit";};
                case civilian: { };
                default { };
            };         
};
