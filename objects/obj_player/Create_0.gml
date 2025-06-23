
xspd = 6
yspd = 6

//Level up Variables
level = 1
xpCap = 5
xp = 0
xp_pool = 0;
//---------------------------

max_hp = 10
hp = max_hp
hit = false

Weapon_Bag = array_create(0)
Weapon_Slot = array_create(0) // check up

bag_slot = 0;
//---------Storing weapon obj to create later
Weapon_Bag[0] = obj_assault_rifle
Weapon_Bag[1] = obj_pistol
Weapon_Bag[2] = obj_relvolver
Weapon_Bag[3] = obj_shotgun
Weapon_Bag[4] = obj_sniper
Weapon_Bag[5] = obj_submachinegun
//---------Storing weapon obj to create later End


//------------Weapon equipped now and created
Weapon_Slot[0] = instance_create_layer(x,y,"Instances",Weapon_Bag[global.Character])

//------------Weapon equipped now and created End

//----------------------Constructors For Storing sprite and Name
Weapons = array_create(0)
function WeaponIcon(_spr,_name)
constructor {
 spr = _spr
 name = _name
}

Weapons[0] = new WeaponIcon(spr_assault_rifle,"AK-47");
Weapons[1] = new WeaponIcon(spr_pistol,"Pistol");
Weapons[2] = new WeaponIcon(spr_revolver,"Magnum");
Weapons[3] = new WeaponIcon(spr_shotgun,"Shotgun");
Weapons[4] = new WeaponIcon(spr_sniper,"Sniper");
Weapons[5] = new WeaponIcon(spr_submachinegun,"Machine Gun");

//---------------------For Storing sprite and Name End

//---------------------Setting and Storing ammo in chamber

Chamber = array_create(6);







