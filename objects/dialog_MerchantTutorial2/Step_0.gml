/// @description Insert description here
// You can write your code in this editor
event_inherited();
if(room == TutorialArea and spawnEnemy){
	if(dialog.count() <=0){
		global.salmonFish = 5;
		instance_create_layer(x + 100, y, "Assets" ,obj_basic_enemy);
		spawnEnemy = false;
		
		with(obj_merchant){
			self.dialog = dialog_MerchantTutorial3;
		}
	}
}




