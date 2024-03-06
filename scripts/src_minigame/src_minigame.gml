// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_minigame(x, y, layer){
	if(object_exists(obj_minigame)){
		instance_destroy(obj_bobble);
		instance_destroy(obj_minigame);
	}
	instance_create_layer(x,y,"MiniGame", obj_minigame);
	return 0;
}