/// @description  get_fall_scene_type()
function get_fall_scene_type() {

	var                        _type = 0;

	     if (is_exiting_rm())  _type = g.exit_leave.exit_type & g.FallScene_BITS;
	else if (is_exiting_ow())  _type = val(g.overworld.dm_data[?hex_str(g.overworld.exit_grid_xy)+STR_CutScene]);

	     if (is_string(_type)) _type = val(g.dm_cut_scene[?_type+STR_ID]);
	//

	// Cannot have (both UP and DW) nor (both RT and LF)
	return bit1st(_type&(g.FallScene_BIT_DOWN|g.FallScene_BIT_UP)) | bit1st(_type&(g.FallScene_BIT_RIGHT|g.FallScene_BIT_LEFT));
	//return _type;


	/*
	/// get_fs_type()

	var                         _type = undefined;

	     if (is_exiting_rm())   _type = g.exit_leave.exit_type & g.FS_BITS;
	else if (is_exiting_ow())   _type = g.ow.dm_data[? hex_str(g.ow.exit_grid_xy)+STR_CutScene];

	     if (!isDefined(_type)) _type = 0;
	else if (is_string( _type)) _type = val(g.dm_cut_scene[? _type+STR_ID]);


	return _type;

	*/



}
