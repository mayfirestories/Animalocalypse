// ENUMS for state machine
enum SpawnerState {
    SPAWNING,
    BOSS_ACTIVE,
    SHOP,
    WAIT,
	END
}

state = SpawnerState.SPAWNING;

// Wave data — this can be swapped later
current_wave = {
    enemies: [
        { obj: obj_line_enemy, weight: 80 },
        { obj: obj_zigzag_enemy, weight: 20 }
    ],
    spawn_rate: 80, // frames between spawns
    boss_timer: 600, // time in frames to spawn boss (10s)
    next_wave_delay: 120
};



spawn_timer = current_wave.spawn_rate;
boss_timer = current_wave.boss_timer;
shop_open = false;
waveCount = 3;