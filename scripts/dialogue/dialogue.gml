// Special thanks to https://www.youtube.com/watch?v=k3AAxKOl-yU

function dialogue() constructor{
	
	_dialogues = [];
	
	add = function( _sprite, _message) {
		
		array_push(_dialogues, {
			sprite: _sprite,
			message: _message,
		});
	}
	
	pop = function(){
		var _t = array_first(_dialogues);
		array_delete(_dialogues, 0, 1);
		
		return _t;
	}
	
	
	count = function(){
		return array_length(_dialogues);	
	}

}