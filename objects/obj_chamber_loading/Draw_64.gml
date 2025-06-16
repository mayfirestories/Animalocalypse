for (var i = 0; i < array_length(BulletBag); i++) {
	show_debug_message(BulletBag[i])
    var obj = BulletBag[i];
    if (is_undefined(obj)) continue; // skip empty slots
    draw_sprite(object_get_sprite(obj), 0, 120, 120 + 20 * i);
}
