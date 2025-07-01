trunkNum = irandom_range(4,6);
treeTrunks = array_create(trunkNum);
treeTrunkHeight = sprite_get_height(spr_slime_tree_trunk); // Adjust depending on your sprite height
treeBrushHeight = sprite_get_height(spr_slime_tree_leaves);

//Creates the roots first
treeRoot = instance_create_layer(x, y+treeTrunkHeight, "Instances", obj_slime_tree_roots);

for(var i=0;i<trunkNum;i++){
	var t = instance_create_layer(x, y - (i * treeTrunkHeight), "Instances", obj_slime_tree_trunk);
	t.stack_index = i;
    t.controller = id;
    treeTrunks[i] = t;
}

var top_y = y - (trunkNum * treeTrunkHeight);
treeBush = instance_create_layer(x, top_y - treeBrushHeight*3 / 8, "Instances", obj_slime_tree_leaves);
mark_for_update = false;