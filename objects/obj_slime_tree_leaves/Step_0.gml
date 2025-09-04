y = lerp(y, target_y, 0.2);
if (abs(y - target_y) < 0.5) {
    y = target_y;
}