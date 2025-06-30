trunkNum = irandom_range(4,6);
treeTrunks = array_create(trunkNum);
treeTrunkHeight = 32; // Adjust depending on your sprite height


//Creates the roots first
treeRoot = instance_create_layer(x, y+treeTrunkHeight, "Instances", obj_slime_tree_roots);

for(var i=0;i<trunkNum;i++){
	var t = instance_create_layer(x, y - (i * treeTrunkHeight), "Instances", obj_slime_tree_trunk);
	t.stack_index = i;
    t.controller = id;
    treeTrunks[i] = t;
}


treeBush = instance_create_layer(x, y - (trunkNum * treeTrunkHeight+16), "Instances", obj_slime_tree_leaves);

mark_for_update = false;