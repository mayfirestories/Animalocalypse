for (var i = 0; i < global.MaxAmmoCapacity; i++) {
	show_debug_message(Chamber[i])
    var obj = Chamber[i];
    if (is_undefined(obj)) continue; // skip empty slots
    draw_sprite(object_get_sprite(obj), 0, 120, 120 + 20 * i);
}
