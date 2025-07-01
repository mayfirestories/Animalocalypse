if (mark_for_update) {
    mark_for_update = false;

    // Shift down all trunks to fill gaps
    var new_array = [];
    var new_index = 0;

   for (var i = 0; i < array_length(treeTrunks); i++) {
    var t = treeTrunks[i];
    if (instance_exists(t)) {
        t.stack_index = new_index;
        t.target_y = y - (new_index * treeTrunkHeight); // set target, don't move directly
        new_array[new_index] = t;
        new_index++;
    }
}

    // Fill remaining with noone if needed
    var size = array_length(treeTrunks);
    for (var i = new_index; i < size; i++) {
        new_array[i] = noone;
    }

    treeTrunks = new_array;

    // Move bush down too
  if (instance_exists(treeBush)) {
    treeBush.target_y = y - (new_index * treeTrunkHeight + treeBrushHeight*3/8);
}
    // If all trunks are gone, destroy the whole tree
    var all_destroyed = true;
    for (var i = 0; i < array_length(treeTrunks); i++) {
        if (instance_exists(treeTrunks[i])) {
            all_destroyed = false;
            break;
        }
    }

    if (all_destroyed) {
        if (instance_exists(treeBush)) instance_destroy(treeBush);
        if (instance_exists(treeRoot)) instance_destroy(treeRoot);
        instance_destroy(); // destroy controller
    }
}