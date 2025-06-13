//------------------Setting Bullet Bag

BulletBag = array_create(0);


array_push(BulletBag,obj_explosive_ammo);
array_push(BulletBag,obj_incendiary_ammo);
array_push(BulletBag,obj_penetrating_ammo);
array_push(BulletBag,obj_poison_ammo);
array_push(BulletBag,obj_regular_ammo);

//------------------Setting Bullet Bag END

//------------------Placing Bullet in Bag 
Chamber = array_create(6);

while (array_length(Chamber)<global.MaxAmmoCapacity) {
    array_push(Chamber,getBulletFromBag(BulletBag))
}

//------------------Placing Bullet in Bag END













