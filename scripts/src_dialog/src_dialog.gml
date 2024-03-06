// Script assets have changed for v2.3.0 see
// referenced this video from GameMakers offical Youtube Channel: https://youtu.be/k3AAxKOl-yU?si=M42elMeXAqBc9UKe
function Dialogue() constructor{
	dialogs = [];
	
	add = function(_sprite, _message){
		array_push(dialogs, {
			sprite: _sprite, 
			msg: _message,
		});
	}
	
	
	pop = function(){
		var t = array_first(dialogs);
		array_delete(dialogs, 0, 1);
		
		return t;
	}
	
	count = function() {
		return array_length(dialogs)
	}
}