/// Bullet_Create(x, y, direction, damage, range, knockback, color)
function Bullet_Create(_x, _y, _damage, _range, _knockback,_spread,_obj,_instance){

	var b = instance_create_layer(_x, _y, _instance, _obj);
	b.damage = _damage;
	b.range = _range;
	b.knockback = _knockback;
	b.dir = irandom_range(-_spread+90,_spread+90);

	return b;
}

function getBulletFromBag(_array) {
    var len = array_length(_array);
    if (len > 0) {
        var index = irandom(len - 1);
        return _array[index];
    } else {
        return undefined; // or return noone, or -1 depending on your needs
    }
}

