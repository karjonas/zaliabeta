/// @description  from_spawner_count()
function from_spawner_count() {


	var               _count  = 0;
	with(GameObjectB) _count += (state && is_from_spawner);
	return            _count;







}
