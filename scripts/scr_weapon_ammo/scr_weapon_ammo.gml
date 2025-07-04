/// Bullet_Create(x, y, direction, damage, range, knockback, color)
function Bullet_Create(_x, _y, _damage, _range, _knockback,_spread,_pen,_gate,_obj,_instance){

	var b = instance_create_layer(_x, _y, _instance, _obj);
	b.damage = _damage;
	b.range = _range;
	b.knockback = _knockback;
	b.pen = _pen;
	b.damageGate = _gate;
	b.dir = irandom_range(-_spread+90,_spread+90);

	return b;
}
function Turret_Bullet_Create(_x, _y, _damage, _range, _knockback,_spread,_pen,_obj,_gate,_instance){

	var b = instance_create_layer(_x, _y, _instance, _obj);
	b.damage = _damage;
	b.range = _range;
	b.knockback = _knockback;
	b.pen = _pen;
	b.damageGate = _gate;
	b.dir = irandom_range(-_spread+dir,_spread+dir);

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

function array_fill_count(arr) {
    var count = 0;
    for (var i = 0; i < array_length(arr); i++) {
        if (arr[i] != undefined) {
            count++;
        }
    }
    return count;
}

function array_shift_with_value(arr) {
    var value = arr[0];
    var new_arr = [];
    for (var i = 1; i < array_length(arr); i++) {
        array_push(new_arr, arr[i]);
    }
    return [value, new_arr];
}

function weaponBuff(_buff,_percent){
	var _value
	switch (_buff){
		
		case "damage"://level 2
			_value = 1.5* _percent
		break;
	
		case "range"://level 1
			_value = 1.5* _percent
		break;
		
		case "firerate"://level 2 
			_value = 1.5-1*_percent //Fire rate has to be a lower number to shoot faster
		break;
		
		case "multishot"://level 3
			_value = round(2*_percent);
		break;
		
		case "penetration"://level 2
			_value = round(2*_percent);
		break;
		
	}	
	return  _value;
}

