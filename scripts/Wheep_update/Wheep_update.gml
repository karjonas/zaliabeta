/// @description  Wheep_update()
function Wheep_update() {


	if (cs&CS_BD1) enemy_collide_pc_body();
	GOB_update_2();


	set_xy(id, x, y+get_hover_y_adj(3));







}
