switch(state) {
    case SpawnerState.SPAWNING:
        // Countdown to spawn
        spawn_timer--;
        boss_timer--;

        // Spawn enemy
        if (spawn_timer <= 0) {
            spawn_timer = current_wave.spawn_rate;
            instance_create_layer(irandom_range(64,room_width-64), y, "Instances", get_random_enemy());
        }

        // Boss time
        if (boss_timer <= 0) {
            var boss = instance_create_layer(irandom_range(64,room_width-64), y, "Instances", obj_boss_enemy);
           
            state = SpawnerState.BOSS_ACTIVE;
        }
        break;

    case SpawnerState.BOSS_ACTIVE:
        // Wait for boss to be gone
        if (!instance_exists(obj_boss_enemy)) { //Instance Exist can be optimized
            
            state = SpawnerState.SHOP;
            instance_create_layer(room_width/2, -room_height, "gameStore", obj_store_menu);
        }
        break;

    case SpawnerState.SHOP:
        // Wait for shop to finish
		if(global.nextCounter > waveCount){
			global.nextCounter = 0;
			state = SpawnerState.END;
		} else
        if (!instance_exists(obj_store_menu)) {
            state = SpawnerState.WAIT;
            spawn_timer = current_wave.next_wave_delay;
        }
        break;

    case SpawnerState.WAIT:
        // Delay before next wave
        spawn_timer--;
        if (spawn_timer <= 0) {
            // Swap wave
            set_next_wave();
            state = SpawnerState.SPAWNING;
        }   
        break;
	case SpawnerState.END: // Trigger next room
		room_restart();
	break;
		
}