/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	if(obj_player.state == States.Regular){
	instance_destroy(obj_bobble);
	instance_destroy(self);
}

}

