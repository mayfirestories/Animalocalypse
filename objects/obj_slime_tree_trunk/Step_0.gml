if(hp<=0){
	if (instance_exists(controller)) {
    controller.mark_for_update = true;
    controller.treeTrunks[stack_index] = noone;
}
instance_destroy();
}
// Smoothly move toward target_y
y = lerp(y, target_y, move_speed);

// Optional: snap when very close to prevent endless tiny movement
if (abs(y - target_y) < 0.5) {
    y = target_y;
}
