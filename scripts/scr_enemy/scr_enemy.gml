function get_random_enemy() {
    var total_weight = 0;
    for (var i = 0; i < array_length(current_wave.enemies); i++) {
        total_weight += current_wave.enemies[i].weight;
    }

    var roll = irandom(total_weight - 1);
    var sum = 0;

    for (var i = 0; i < array_length(current_wave.enemies); i++) {
        sum += current_wave.enemies[i].weight;
        if (roll < sum) {
            return current_wave.enemies[i].obj;
        }
    }

    return obj_enemy_common; // Fallback
}

function set_next_wave() {
    // For now just modify existing one
    current_wave = {
		//Still need work para poder scale enemy spawns
        enemies: [
            { obj: obj_enemy_line_slime, weight: 50 },
            { obj: obj_zigzag_enemy, weight: 20 },
            { obj: obj_enemy_explosive_slime, weight: 15 },
			{ obj: obj_enemy_armor_slime, weight: 15 },
        ],
        spawn_rate: current_wave.spawn_rate*0.5,
        boss_timer: current_wave.boss_timer*2,
        next_wave_delay: 60
    };

    spawn_timer = current_wave.spawn_rate;
    boss_timer = current_wave.boss_timer;
}