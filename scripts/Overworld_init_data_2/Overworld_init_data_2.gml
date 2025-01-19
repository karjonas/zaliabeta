/// @description  Overworld_init_data_2()
function Overworld_init_data_2() {

	if (DEV) sdm(" Overworld_init_data_2()");


	var _i,_j, _idx, _val1,_val2, _count1,_count2;
	var _owrc,_owrc_, _ow_clm,_ow_row, _ow_clm_,_ow_row_;
	var _tsrc;
	var _dk, _str1,_str2;
	var _dl1 = ds_list_create();

	var         _dl_AreaNames = ds_list_create();
	ds_list_add(_dl_AreaNames,"NORTH CASTLE FIELD");
	ds_list_add(_dl_AreaNames,"NORTH CASTLE WOODS"); // 18 character limit
	ds_list_add(_dl_AreaNames,"NORTH CASTLE LAKE");
	ds_list_add(_dl_AreaNames,"RAURU WOODS");
	//                                                      //
	ds_list_add(_dl_AreaNames,"TANTARI DESERT");
	ds_list_add(_dl_AreaNames,"PARAPA DESERT");
	ds_list_add(_dl_AreaNames,"RUTO MOUNTAINS");
	ds_list_add(_dl_AreaNames,"SARIA FIELD");
	//                                                      //
	ds_list_add(_dl_AreaNames,"SARIA WOODS");
	ds_list_add(_dl_AreaNames,"SARIA BAY");
	ds_list_add(_dl_AreaNames,"SARIA CEMETERY");
	ds_list_add(_dl_AreaNames,"MORUGE SWAMP");
	//                                                      //
	ds_list_add(_dl_AreaNames,"MIDORO FIELD");
	ds_list_add(_dl_AreaNames,"MIDORO SWAMP");
	ds_list_add(_dl_AreaNames,"ROYAL CEMETERY");
	ds_list_add(_dl_AreaNames,"DEATH MOUNTAIN");
	//                                                      //
	//                                                      //
	ds_list_add(_dl_AreaNames,"NABOORU FIELD");
	ds_list_add(_dl_AreaNames,"NABOORU BAY");
	ds_list_add(_dl_AreaNames,"DARUNIA FIELD");
	ds_list_add(_dl_AreaNames,"DARUNIA FOREST");
	//                                                      //
	ds_list_add(_dl_AreaNames,"DARUNIA MOUNTAINS");
	ds_list_add(_dl_AreaNames,"KASUTO CEMETERY");
	ds_list_add(_dl_AreaNames,"KASUTO FOREST");
	ds_list_add(_dl_AreaNames,"KASUTO SWAMP");
	//                                                      //
	ds_list_add(_dl_AreaNames,"SEASHORE");
	ds_list_add(_dl_AreaNames,"VALLEY OF DEATH");
	ds_list_add(_dl_AreaNames,"MAZE ISLAND");
	ds_list_add(_dl_AreaNames,"WHALE ISLAND");
	//                                                      //
	ds_list_add(_dl_AreaNames,"SARIA RIVER");
	ds_list_add(_dl_AreaNames,"NABOORU WOODS");
	ds_list_add(_dl_AreaNames,"MAKARRHA");
	ds_list_add(_dl_AreaNames,"DRAGMIRE"); // DRAGMIRE A
	//                                                      //
	ds_list_add(_dl_AreaNames,"DRAGMIRE"); // DRAGMIRE B (Island behind Dragmire)



	OW_CLMS = $0100;
	OW_ROWS = $0100;
	OW_W = OW_CLMS<<SHIFT;
	OW_H = OW_ROWS<<SHIFT;



	ds_grid_resize(dg_tsrc_def, OW_CLMS, OW_ROWS);
	ds_grid_clear( dg_tsrc_def, 0);
	ds_grid_copy(dg_tsrc,dg_tsrc_def);

	ds_grid_resize(dg_solid_def, OW_CLMS, OW_ROWS);
	ds_grid_clear( dg_solid_def, 0);
	ds_grid_copy(dg_solid,dg_solid_def);

	ds_grid_resize(dg_area, OW_CLMS, OW_ROWS);
	ds_grid_clear( dg_area, -1);

	ds_grid_resize(dg_AreaNames, OW_CLMS, OW_ROWS);
	ds_grid_clear( dg_AreaNames, MapAreaName_DEF);

	ds_grid_resize(dg_hidden_exits_help, 0,ds_grid_height(dg_hidden_exits_help));
	ds_grid_clear (dg_hidden_exits_help, 0);


	ds_grid_clear(dg_tsrc_def,$00);








	_ow_clm = $BE;
	_ow_row = $39;

	         _dk = "_PATH_"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_VOLCA"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_CEMET"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_SWAMP"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_FORES"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_BEACH"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_DESER"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_FIELD"+"_MazIs_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $29;
	dm_data[?_dk+STR_Rows] = $3F;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$29)-1,(_ow_row+$3F)-1, $0103); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $00;
	_ow_row = $92;

	         _dk = "_PATH_"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_VOLCA"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_CEMET"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_SWAMP"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_FORES"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_BEACH"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_DESER"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_FIELD"+"_DthMt_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $39;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$49)-1,(_ow_row+$39)-1, $0101); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $7D;
	_ow_row = $B6;

	         _dk = "_PATH_"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_VOLCA"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_CEMET"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_SWAMP"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_FORES"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_BEACH"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_DESER"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_FIELD"+"_EastA_"+"04"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $83;
	dm_data[?_dk+STR_Rows] = $4A;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$83)-1,(_ow_row+$4A)-1, $0402); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $49;
	_ow_row = $B6;

	         _dk = "_PATH_"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_VOLCA"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_CEMET"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_SWAMP"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_FORES"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_BEACH"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_DESER"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	         _dk = "_FIELD"+"_EastA_"+"03"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $34;
	dm_data[?_dk+STR_Rows] = $4A;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$34)-1,(_ow_row+$4A)-1, $0302); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $00;
	_ow_row = $CB;

	         _dk = "_PATH_"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_VOLCA"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_CEMET"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_SWAMP"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_FORES"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_BEACH"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_DESER"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	         _dk = "_FIELD"+"_EastA_"+"03"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $49;
	dm_data[?_dk+STR_Rows] = $35;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$49)-1,(_ow_row+$35)-1, $0302); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $76;
	_ow_row = $8C;

	         _dk = "_PATH_"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_VOLCA"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_CEMET"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_SWAMP"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_FORES"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_BEACH"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_DESER"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	         _dk = "_FIELD"+"_EastA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $8A;
	dm_data[?_dk+STR_Rows] = $2A;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$8A)-1,(_ow_row+$2A)-1, $0202); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $76;
	_ow_row = $86;

	         _dk = "_PATH_"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_VOLCA"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_CEMET"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_SWAMP"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_FORES"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_BEACH"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_DESER"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_FIELD"+"_EastA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0F;
	dm_data[?_dk+STR_Rows] = $06;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$0F)-1,(_ow_row+$06)-1, $0202); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $76;
	_ow_row = $00;

	         _dk = "_PATH_"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_VOLCA"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_CEMET"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_SWAMP"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_FORES"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_BEACH"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_DESER"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	         _dk = "_FIELD"+"_EastA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $48;
	dm_data[?_dk+STR_Rows] = $86;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$48)-1,(_ow_row+$86)-1, $0102); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $85;
	_ow_row = $86;

	         _dk = "_PATH_"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_VOLCA"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_CEMET"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_SWAMP"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_FORES"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_BEACH"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_DESER"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	         _dk = "_FIELD"+"_EastA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $39;
	dm_data[?_dk+STR_Rows] = $06;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$39)-1,(_ow_row+$06)-1, $0102); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $BE;
	_ow_row = $00;

	         _dk = "_PATH_"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_VOLCA"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_CEMET"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_SWAMP"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_FORES"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_BEACH"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_DESER"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	         _dk = "_FIELD"+"_EastA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $39;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$42)-1,(_ow_row+$39)-1, $0102); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $BE;
	_ow_row = $78;

	         _dk = "_PATH_"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_VOLCA"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_CEMET"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_SWAMP"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_FORES"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_BEACH"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_DESER"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	         _dk = "_FIELD"+"_EastA_"+"01"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $42;
	dm_data[?_dk+STR_Rows] = $14;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$42)-1,(_ow_row+$14)-1, $0102); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $E7;
	_ow_row = $39;

	         _dk = "_PATH_"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_VOLCA"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_CEMET"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_SWAMP"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_FORES"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_BEACH"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_DESER"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	         _dk = "_FIELD"+"_EastA_"+"01"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $19;
	dm_data[?_dk+STR_Rows] = $3F;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$19)-1,(_ow_row+$3F)-1, $0102); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $00;
	_ow_row = $64;

	         _dk = "_PATH_"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_VOLCA"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_CEMET"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_SWAMP"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_FORES"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_BEACH"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_DESER"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	         _dk = "_FIELD"+"_WestA_"+"02"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $62;
	dm_data[?_dk+STR_Rows] = $2E;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$62)-1,(_ow_row+$2E)-1, $0200); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $4F;
	_ow_row = $61;

	         _dk = "_PATH_"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_VOLCA"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_CEMET"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_SWAMP"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_FORES"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_BEACH"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_DESER"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_FIELD"+"_WestA_"+"02"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $13;
	dm_data[?_dk+STR_Rows] = $03;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$13)-1,(_ow_row+$03)-1, $0200); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $62;
	_ow_row = $6B;

	         _dk = "_PATH_"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_VOLCA"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_CEMET"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_SWAMP"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_FORES"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_BEACH"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_DESER"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	         _dk = "_FIELD"+"_WestA_"+"02"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $06;
	dm_data[?_dk+STR_Rows] = $27;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$06)-1,(_ow_row+$27)-1, $0200); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $68;
	_ow_row = $6F;

	         _dk = "_PATH_"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_VOLCA"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_CEMET"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_SWAMP"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_FORES"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_BEACH"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_DESER"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	         _dk = "_FIELD"+"_WestA_"+"02"+"03";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $23;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$0E)-1,(_ow_row+$23)-1, $0200); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $49;
	_ow_row = $92;

	         _dk = "_PATH_"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_VOLCA"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_CEMET"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_SWAMP"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_FORES"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_BEACH"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_DESER"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	         _dk = "_FIELD"+"_WestA_"+"02"+"04";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $2D;
	dm_data[?_dk+STR_Rows] = $24;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$2D)-1,(_ow_row+$24)-1, $0200); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $62;
	_ow_row = $61;

	         _dk = "_PATH_"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_VOLCA"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_CEMET"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_SWAMP"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_FORES"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_BEACH"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_DESER"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	         _dk = "_FIELD"+"_WestA_"+"02"+"05";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $14;
	dm_data[?_dk+STR_Rows] = $0A;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$14)-1,(_ow_row+$0A)-1, $0200); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $00;
	_ow_row = $61;

	         _dk = "_PATH_"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_VOLCA"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_CEMET"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_SWAMP"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_FORES"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_BEACH"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_DESER"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	         _dk = "_FIELD"+"_WestA_"+"01"+"00";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $4F;
	dm_data[?_dk+STR_Rows] = $03;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$4F)-1,(_ow_row+$03)-1, $0100); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $00;
	_ow_row = $00;

	         _dk = "_PATH_"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_VOLCA"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_CEMET"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_SWAMP"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_FORES"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_BEACH"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_DESER"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	         _dk = "_FIELD"+"_WestA_"+"01"+"01";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $76;
	dm_data[?_dk+STR_Rows] = $61;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$76)-1,(_ow_row+$61)-1, $0100); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name




	_ow_clm = $68;
	_ow_row = $6B;

	         _dk = "_PATH_"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_VOLCA"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_CEMET"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_SWAMP"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_FORES"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_BEACH"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_DESER"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	         _dk = "_FIELD"+"_WestA_"+"01"+"02";
	dm_data[?_dk+STR_Clm]  = _ow_clm;
	dm_data[?_dk+STR_Row]  = _ow_row;
	dm_data[?_dk+STR_Clms] = $0E;
	dm_data[?_dk+STR_Rows] = $04;

	ds_grid_set_region(dg_area, _ow_clm,_ow_row, (_ow_clm+$0E)-1,(_ow_row+$04)-1, $0100); // value is 2 bytes. $(FF)FF: the sub area (Example: West 1: West-North, West 2: West-South). $FF(FF): the index of g.dl_area_name








	// Raft data examples: '0101', '0102'
	// Raft tiles are in pairs: (01)01 Set num, 01(01) Member num 1 or 2
	// Member 1 is always N or W of member 2

	_owrc  = ($74<<8) | $65;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0101;
	dm_data[?STR_Raft+"0101"+STR_OWRC] = _owrc;

	_owrc  = ($74<<8) | $81;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0102;
	dm_data[?STR_Raft+"0102"+STR_OWRC] = _owrc;

	_owrc  = ($28<<8) | $48;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0201;
	dm_data[?STR_Raft+"0201"+STR_OWRC] = _owrc;

	_owrc  = ($12<<8) | $48;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0202;
	dm_data[?STR_Raft+"0202"+STR_OWRC] = _owrc;

	_owrc  = ($0F<<8) | $4D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0301;
	dm_data[?STR_Raft+"0301"+STR_OWRC] = _owrc;

	_owrc  = ($0F<<8) | $66;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0302;
	dm_data[?STR_Raft+"0302"+STR_OWRC] = _owrc;

	_owrc  = ($12<<8) | $72;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0401;
	dm_data[?STR_Raft+"0401"+STR_OWRC] = _owrc;

	_owrc  = ($2F<<8) | $72;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0402;
	dm_data[?STR_Raft+"0402"+STR_OWRC] = _owrc;

	_owrc  = ($32<<8) | $76;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0501;
	dm_data[?STR_Raft+"0501"+STR_OWRC] = _owrc;

	_owrc  = ($32<<8) | $87;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0502;
	dm_data[?STR_Raft+"0502"+STR_OWRC] = _owrc;

	_owrc  = ($33<<8) | $99;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0601;
	dm_data[?STR_Raft+"0601"+STR_OWRC] = _owrc;

	_owrc  = ($18<<8) | $99;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0602;
	dm_data[?STR_Raft+"0602"+STR_OWRC] = _owrc;

	_owrc  = ($14<<8) | $A0;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0701;
	dm_data[?STR_Raft+"0701"+STR_OWRC] = _owrc;

	_owrc  = ($14<<8) | $B8;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Raft] = $0702;
	dm_data[?STR_Raft+"0702"+STR_OWRC] = _owrc;



















	_owrc  = ($5D<<8) | $56;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_01"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0120"+STR_OWRC]      = $5D56; // goto owrc
	g.dm_rm[?"_TownA_0120"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownA_0120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Rauru02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($5D<<8) | $56;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_02";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_02"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0210"+STR_OWRC]      = $5D56; // goto owrc
	g.dm_rm[?"_TownA_0210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_TownA_0210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Rauru01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($4B<<8) | $2A;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_04"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0420"+STR_OWRC]      = $4B2A; // goto owrc
	g.dm_rm[?"_TownA_0420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownA_0420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Ruto02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($4B<<8) | $2A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_05";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_05"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0510"+STR_OWRC]      = $4B2A; // goto owrc
	g.dm_rm[?"_TownA_0510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_TownA_0510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Ruto01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($82<<8) | $30;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_06";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_06"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0620"+STR_OWRC]      = $8230; // goto owrc
	g.dm_rm[?"_TownA_0620"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_TownA_0620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Saria02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($80<<8) | $30;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_08";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_08"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0810"+STR_OWRC]      = $8030; // goto owrc
	g.dm_rm[?"_TownA_0810"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_TownA_0810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Saria01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($72<<8) | $64;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_09"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0920"+STR_OWRC]      = $7264; // goto owrc
	g.dm_rm[?"_TownA_0920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_TownA_0920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Mido02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($72<<8) | $64;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_0B";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_0B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0B10"+STR_OWRC]      = $7264; // goto owrc
	g.dm_rm[?"_TownA_0B10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_TownA_0B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Mido01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($7C<<8) | $91;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_0C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0C20"+STR_OWRC]      = $7C91; // goto owrc
	g.dm_rm[?"_TownA_0C20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownA_0C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Nabooru02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($7C<<8) | $91;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_0E";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_0E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0E10"+STR_OWRC]      = $7C91; // goto owrc
	g.dm_rm[?"_TownA_0E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_TownA_0E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Nabooru01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($61<<8) | $7D;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_0F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_0F20"+STR_OWRC]      = $617D; // goto owrc
	g.dm_rm[?"_TownA_0F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownA_0F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Darunia02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($61<<8) | $7D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_11";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_1110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_1110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_1110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_1110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_11"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_1110"+STR_OWRC]      = $617D; // goto owrc
	g.dm_rm[?"_TownA_1110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_TownA_1110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Darunia01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($95<<8) | $B8;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_12";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_1220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_1220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_1220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_1220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_12"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_1220"+STR_OWRC]      = $95B8; // goto owrc
	g.dm_rm[?"_TownA_1220"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownA_1220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_New_Kasuto01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($A3<<8) | $9C;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_15"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_1520"+STR_OWRC]      = $A39C; // goto owrc
	g.dm_rm[?"_TownA_1520"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownA_1520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Old_Kasuto02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($A3<<8) | $9C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownA_17";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownA_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownA_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownA_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownA_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownA_17"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_1710"+STR_OWRC]      = $A39C; // goto owrc
	g.dm_rm[?"_TownA_1710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_TownA_1710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Old_Kasuto01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($7C<<8) | $91;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_TownA_19"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownA_1920"+STR_OWRC]      = $7B93; // goto owrc
	g.dm_rm[?"_TownA_1920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_TownA_1920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Nabooru03"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($D5<<8) | $C1;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownB_02";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownB_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownB_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownB_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownB_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownB_02"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownB_0210"+STR_OWRC]      = $D5C1; // goto owrc
	g.dm_rm[?"_TownB_0210"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownB_0210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Bulblin02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($D5<<8) | $C1;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_TownB_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_TownB_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_TownB_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_TownB_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_TownB_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_TownB_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_TownB_0020"+STR_OWRC]      = $D5C1; // goto owrc
	g.dm_rm[?"_TownB_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_TownB_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Bulblin01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($3C<<8) | $64;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcA_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcA_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcA_0020"+STR_OWRC]      = $3C64; // goto owrc
	g.dm_rm[?"_PalcA_0020"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_PalcA_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Parapa_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($3C<<8) | $64;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcA_0D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcA_0D10"+STR_OWRC]      = $3C64; // goto owrc
	g.dm_rm[?"_PalcA_0D10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_PalcA_0D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Parapa_Palace02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($67<<8) | $34;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcB_00";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcB_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcB_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcB_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcB_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcB_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcB_0010"+STR_OWRC]      = $6734; // goto owrc
	g.dm_rm[?"_PalcB_0010"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_PalcB_0010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Midoro_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($67<<8) | $34;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcB_14"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcB_1410"+STR_OWRC]      = $6734; // goto owrc
	g.dm_rm[?"_PalcB_1410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_PalcB_1410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Midoro_Palace02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($7C<<8) | $B8;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcE_00";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcE_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcE_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcE_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcE_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcE_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcE_0020"+STR_OWRC]      = $7CB8; // goto owrc
	g.dm_rm[?"_PalcE_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_PalcE_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_PalcE_0010"+STR_OWRC]      = $7CB8; // goto owrc
	g.dm_rm[?"_PalcE_0010"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_PalcE_0010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Palace_On_The_Sea01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($7C<<8) | $B8;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcE_06"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcE_0610"+STR_OWRC]      = $7CB8; // goto owrc
	g.dm_rm[?"_PalcE_0610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_PalcE_0610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Palace_On_The_Sea02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($89<<8) | $61;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcC_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcC_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcC_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcC_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcC_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcC_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcC_0020"+STR_OWRC]      = $8961; // goto owrc
	g.dm_rm[?"_PalcC_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_PalcC_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Island_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($89<<8) | $61;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcC_0E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcC_0E10"+STR_OWRC]      = $8961; // goto owrc
	g.dm_rm[?"_PalcC_0E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_PalcC_0E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Island_Palace02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($5F<<8) | $D6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcD_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcD_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcD_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcD_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcD_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcD_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcD_0020"+STR_OWRC]      = $5FD6; // goto owrc
	g.dm_rm[?"_PalcD_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_PalcD_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Maze_Island_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($5F<<8) | $D6;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcD_0D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcD_0D10"+STR_OWRC]      = $5FD6; // goto owrc
	g.dm_rm[?"_PalcD_0D10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_PalcD_0D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Maze_Island_Palace02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($AB<<8) | $AC;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcF_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcF_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcF_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcF_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcF_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcF_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcF_0020"+STR_OWRC]      = $ABAC; // goto owrc
	g.dm_rm[?"_PalcF_0020"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_PalcF_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Three_Eye_Rock_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($AB<<8) | $AC;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcF_16"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcF_1610"+STR_OWRC]      = $ABAC; // goto owrc
	g.dm_rm[?"_PalcF_1610"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_PalcF_1610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Three_Eye_Rock_Palace02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($89<<8) | $7E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcG_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcG_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcG_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcG_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcG_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcG_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcG_0020"+STR_OWRC]      = $897E; // goto owrc
	g.dm_rm[?"_PalcG_0020"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_PalcG_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Great_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($89<<8) | $7E;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcG_36"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcG_3610"+STR_OWRC]      = $897E; // goto owrc
	g.dm_rm[?"_PalcG_3610"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_PalcG_3610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Great_Palace02"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($EA<<8) | $D6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_PalcH_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_PalcH_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_PalcH_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_PalcH_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_PalcH_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_PalcH_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcH_0020"+STR_OWRC]      = $EAD6; // goto owrc
	g.dm_rm[?"_PalcH_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_PalcH_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Dragmire_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($89<<8) | $7E;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_PalcG_3C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_PalcG_3C10"+STR_OWRC]      = $897E; // goto owrc
	g.dm_rm[?"_PalcG_3C10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_PalcG_3C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_Great_Palace03"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($63<<8) | $C7;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_01";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_01"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0120"+STR_OWRC]      = $63C6; // goto owrc
	g.dm_rm[?"_MazIs_0120"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0110"+STR_OWRC]      = $63C8; // goto owrc
	g.dm_rm[?"_MazIs_0110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($69<<8) | $CA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_02";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_02"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0220"+STR_OWRC]      = $69C9; // goto owrc
	g.dm_rm[?"_MazIs_0220"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0210"+STR_OWRC]      = $69CB; // goto owrc
	g.dm_rm[?"_MazIs_0210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5F<<8) | $C3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_03";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0380"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0380"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0380"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0380"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_03"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0380"+STR_OWRC]      = $5FC3; // goto owrc
	g.dm_rm[?"_MazIs_0380"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0380"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0320"+STR_OWRC]      = $5FC3; // goto owrc
	g.dm_rm[?"_MazIs_0320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($61<<8) | $D3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_04";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0480"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0480"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0480"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0480"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_04"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0480"+STR_OWRC]      = $61D3; // goto owrc
	g.dm_rm[?"_MazIs_0480"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0480"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0420"+STR_OWRC]      = $61D3; // goto owrc
	g.dm_rm[?"_MazIs_0420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5F<<8) | $CA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_05";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_05"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0520"+STR_OWRC]      = $5FC9; // goto owrc
	g.dm_rm[?"_MazIs_0520"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0510"+STR_OWRC]      = $5FCB; // goto owrc
	g.dm_rm[?"_MazIs_0510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($56<<8) | $CD;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_09";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_09"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0920"+STR_OWRC]      = $55CD; // goto owrc
	g.dm_rm[?"_MazIs_0920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_MazIs_0920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0910"+STR_OWRC]      = $57CD; // goto owrc
	g.dm_rm[?"_MazIs_0910"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_MazIs_0910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($57<<8) | $C8;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_07";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_07"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0720"+STR_OWRC]      = $57C7; // goto owrc
	g.dm_rm[?"_MazIs_0720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0710"+STR_OWRC]      = $57C9; // goto owrc
	g.dm_rm[?"_MazIs_0710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($53<<8) | $CA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_08";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_08"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0820"+STR_OWRC]      = $53C9; // goto owrc
	g.dm_rm[?"_MazIs_0820"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0810"+STR_OWRC]      = $53CB; // goto owrc
	g.dm_rm[?"_MazIs_0810"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($4F<<8) | $CC;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_06";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_06"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0620"+STR_OWRC]      = $4FCB; // goto owrc
	g.dm_rm[?"_MazIs_0620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0610"+STR_OWRC]      = $4FCD; // goto owrc
	g.dm_rm[?"_MazIs_0610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5A<<8) | $D9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_0A";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_0A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0A10"+STR_OWRC]      = $5AD9; // goto owrc
	g.dm_rm[?"_MazIs_0A10"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_MazIs_0A20"+STR_OWRC]      = $5AD9; // goto owrc
	g.dm_rm[?"_MazIs_0A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($68<<8) | $B1;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_00";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_MazIs_0020"+STR_OWRC]      = $68B0; // goto owrc
	g.dm_rm[?"_MazIs_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_MazIs_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($68<<8) | $BF;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_MazIs_00";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_MazIs_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_MazIs_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_MazIs_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_MazIs_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_MazIs_0010"+STR_OWRC]      = $68C0; // goto owrc
	g.dm_rm[?"_MazIs_0010"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_MazIs_0010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($98<<8) | $2A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_01";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_01"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0120"+STR_OWRC]      = $982A; // goto owrc
	g.dm_rm[?"_DthMt_0120"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($95<<8) | $2D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_01";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0110"+STR_OWRC]      = $952D; // goto owrc
	g.dm_rm[?"_DthMt_0110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_0110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($96<<8) | $32;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_02";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_02"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0220"+STR_OWRC]      = $9632; // goto owrc
	g.dm_rm[?"_DthMt_0220"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($98<<8) | $35;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_02";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0210"+STR_OWRC]      = $9835; // goto owrc
	g.dm_rm[?"_DthMt_0210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_0210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9A<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_03";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_03"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0310"+STR_OWRC]      = $9A3C; // goto owrc
	g.dm_rm[?"_DthMt_0310"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($96<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_03";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0320"+STR_OWRC]      = $963C; // goto owrc
	g.dm_rm[?"_DthMt_0320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9B<<8) | $2D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_04";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_04"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0420"+STR_OWRC]      = $9B2D; // goto owrc
	g.dm_rm[?"_DthMt_0420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9B<<8) | $31;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_04";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0410"+STR_OWRC]      = $9B31; // goto owrc
	g.dm_rm[?"_DthMt_0410"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9E<<8) | $2D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_05";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_05"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0520"+STR_OWRC]      = $9E2D; // goto owrc
	g.dm_rm[?"_DthMt_0520"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9D<<8) | $2F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_05";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0510"+STR_OWRC]      = $9D2F; // goto owrc
	g.dm_rm[?"_DthMt_0510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_0510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9D<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_06";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_06"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0620"+STR_OWRC]      = $9D38; // goto owrc
	g.dm_rm[?"_DthMt_0620"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9E<<8) | $3A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_06";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0610"+STR_OWRC]      = $9E3A; // goto owrc
	g.dm_rm[?"_DthMt_0610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_0610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A1<<8) | $2E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_07";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_07"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0720"+STR_OWRC]      = $A12E; // goto owrc
	g.dm_rm[?"_DthMt_0720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A4<<8) | $2F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_07";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0710"+STR_OWRC]      = $A42F; // goto owrc
	g.dm_rm[?"_DthMt_0710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_0710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9E<<8) | $3E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_08";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_08"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0820"+STR_OWRC]      = $9E3E; // goto owrc
	g.dm_rm[?"_DthMt_0820"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A0<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_08";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0810"+STR_OWRC]      = $A03F; // goto owrc
	g.dm_rm[?"_DthMt_0810"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A5<<8) | $3E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_09";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_09"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0920"+STR_OWRC]      = $A53E; // goto owrc
	g.dm_rm[?"_DthMt_0920"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A3<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_09";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0910"+STR_OWRC]      = $A33F; // goto owrc
	g.dm_rm[?"_DthMt_0910"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A9<<8) | $2D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0A";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0A20"+STR_OWRC]      = $A92D; // goto owrc
	g.dm_rm[?"_DthMt_0A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A7<<8) | $31;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0A";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0A10"+STR_OWRC]      = $A731; // goto owrc
	g.dm_rm[?"_DthMt_0A10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_0A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A8<<8) | $39;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0B";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0B20"+STR_OWRC]      = $A839; // goto owrc
	g.dm_rm[?"_DthMt_0B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A7<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0B";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0B10"+STR_OWRC]      = $A73C; // goto owrc
	g.dm_rm[?"_DthMt_0B10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_0B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AA<<8) | $37;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0C";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0C20"+STR_OWRC]      = $AA37; // goto owrc
	g.dm_rm[?"_DthMt_0C20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_0C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AA<<8) | $3D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0C";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0C10"+STR_OWRC]      = $AA3D; // goto owrc
	g.dm_rm[?"_DthMt_0C10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AF<<8) | $3A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0D";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0D20"+STR_OWRC]      = $AF3A; // goto owrc
	g.dm_rm[?"_DthMt_0D20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AD<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0D";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0D10"+STR_OWRC]      = $AD3C; // goto owrc
	g.dm_rm[?"_DthMt_0D10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_0D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AD<<8) | $40;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0E";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0E20"+STR_OWRC]      = $AD40; // goto owrc
	g.dm_rm[?"_DthMt_0E20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_0E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AA<<8) | $42;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0E";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0E10"+STR_OWRC]      = $AA42; // goto owrc
	g.dm_rm[?"_DthMt_0E10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_0E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AE<<8) | $34;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_0F";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_0F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0F20"+STR_OWRC]      = $AE34; // goto owrc
	g.dm_rm[?"_DthMt_0F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_0F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($99<<8) | $39;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_16";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_16"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1620"+STR_OWRC]      = $9939; // goto owrc
	g.dm_rm[?"_DthMt_1620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_1620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($95<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_16";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1610"+STR_OWRC]      = $9538; // goto owrc
	g.dm_rm[?"_DthMt_1610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_1610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9D<<8) | $33;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_17";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_17"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1720"+STR_OWRC]      = $9D33; // goto owrc
	g.dm_rm[?"_DthMt_1720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_1720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9E<<8) | $35;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_17";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1710"+STR_OWRC]      = $9E35; // goto owrc
	g.dm_rm[?"_DthMt_1710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_1710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A2<<8) | $32;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_18";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_18"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1820"+STR_OWRC]      = $A232; // goto owrc
	g.dm_rm[?"_DthMt_1820"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_1820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A1<<8) | $34;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_18";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1810"+STR_OWRC]      = $A134; // goto owrc
	g.dm_rm[?"_DthMt_1810"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_1810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A4<<8) | $35;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_19";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_19"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1920"+STR_OWRC]      = $A435; // goto owrc
	g.dm_rm[?"_DthMt_1920"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_1920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A4<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_19";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1910"+STR_OWRC]      = $A438; // goto owrc
	g.dm_rm[?"_DthMt_1910"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_1910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($AE<<8) | $32;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_1A";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1A80"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1A80"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1A80"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1A80"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1A20"+STR_OWRC]      = $AE32; // goto owrc
	g.dm_rm[?"_DthMt_1A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_1A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($93<<8) | $41;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_1C";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1C10"+STR_OWRC]      = $9341; // goto owrc
	g.dm_rm[?"_DthMt_1C10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_1C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($89<<8) | $3D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_1C";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1C20"+STR_OWRC]      = $893D; // goto owrc
	g.dm_rm[?"_DthMt_1C20"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_1C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A8<<8) | $28;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_1F";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_1F10"+STR_OWRC]      = $A828; // goto owrc
	g.dm_rm[?"_DthMt_1F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_1F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A8<<8) | $1E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_1F";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_1F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_1F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_1F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_1F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_1F20"+STR_OWRC]      = $A81E; // goto owrc
	g.dm_rm[?"_DthMt_1F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_1F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A8<<8) | $1B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_21";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_2180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_2180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_2180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_2180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_21"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_2180"+STR_OWRC]      = $A81B; // goto owrc
	g.dm_rm[?"_DthMt_2180"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_2180"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($BA<<8) | $2E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_2F";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_2F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_2F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_2F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_2F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_2F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_2F10"+STR_OWRC]      = $BA2E; // goto owrc
	g.dm_rm[?"_DthMt_2F10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_2F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($B4<<8) | $48;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_24";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_24"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_2420"+STR_OWRC]      = $B448; // goto owrc
	g.dm_rm[?"_DthMt_2420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_2420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_DthMt_2410"+STR_OWRC]      = $B448; // goto owrc
	g.dm_rm[?"_DthMt_2410"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_DthMt_2410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A5<<8) | $3A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_00";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_0010"+STR_OWRC]      = $A53A; // goto owrc
	g.dm_rm[?"_DthMt_0010"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_0010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8C<<8) | $31;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_2C";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_2C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_2C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_2C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_2C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_2C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_2C20"+STR_OWRC]      = $8B31; // goto owrc
	g.dm_rm[?"_DthMt_2C20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_2C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8D<<8) | $33;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_2D";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_2D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_2D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_2D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_2D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_2D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_2D10"+STR_OWRC]      = $8D34; // goto owrc
	g.dm_rm[?"_DthMt_2D10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_DthMt_2D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C1<<8) | $3E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_31";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_3180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_3180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_3180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_3180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_31"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_DthMt_3180"+STR_OWRC]      = $C13E; // goto owrc
	g.dm_rm[?"_DthMt_3180"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_DthMt_3180"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8E<<8) | $31;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_DthMt_2C";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_DthMt_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_DthMt_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_DthMt_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_DthMt_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_DthMt_2C10"+STR_OWRC]      = $8F31; // goto owrc
	g.dm_rm[?"_DthMt_2C10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_DthMt_2C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9D<<8) | $9D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_00";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0020"+STR_OWRC]      = $9D9C; // goto owrc
	g.dm_rm[?"_EastA_0020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_0020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0010"+STR_OWRC]      = $9D9E; // goto owrc
	g.dm_rm[?"_EastA_0010"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_0010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A4<<8) | $9F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_01";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_01"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0120"+STR_OWRC]      = $A49E; // goto owrc
	g.dm_rm[?"_EastA_0120"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_0120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0110"+STR_OWRC]      = $A4A0; // goto owrc
	g.dm_rm[?"_EastA_0110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_0110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8C<<8) | $8F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_02";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_02"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0220"+STR_OWRC]      = $8B8F; // goto owrc
	g.dm_rm[?"_EastA_0220"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0210"+STR_OWRC]      = $8D8F; // goto owrc
	g.dm_rm[?"_EastA_0210"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($91<<8) | $8B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_03";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_03"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0320"+STR_OWRC]      = $908B; // goto owrc
	g.dm_rm[?"_EastA_0320"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0310"+STR_OWRC]      = $928B; // goto owrc
	g.dm_rm[?"_EastA_0310"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($94<<8) | $8D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_04";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_04"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0420"+STR_OWRC]      = $948C; // goto owrc
	g.dm_rm[?"_EastA_0420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_0420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0410"+STR_OWRC]      = $948E; // goto owrc
	g.dm_rm[?"_EastA_0410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_0410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A0<<8) | $92;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_05";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_05"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0520"+STR_OWRC]      = $9F92; // goto owrc
	g.dm_rm[?"_EastA_0520"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0510"+STR_OWRC]      = $A192; // goto owrc
	g.dm_rm[?"_EastA_0510"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($64<<8) | $83;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_06";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_06"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0620"+STR_OWRC]      = $6383; // goto owrc
	g.dm_rm[?"_EastA_0620"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0610"+STR_OWRC]      = $6583; // goto owrc
	g.dm_rm[?"_EastA_0610"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($78<<8) | $B9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_07";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_07"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0720"+STR_OWRC]      = $78B9; // goto owrc
	g.dm_rm[?"_EastA_0720"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_0710"+STR_OWRC]      = $78B9; // goto owrc
	g.dm_rm[?"_EastA_0710"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($74<<8) | $92;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_08";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_08"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0820"+STR_OWRC]      = $7492; // goto owrc
	g.dm_rm[?"_EastA_0820"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($70<<8) | $95;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_08";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_0810"+STR_OWRC]      = $7095; // goto owrc
	g.dm_rm[?"_EastA_0810"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($87<<8) | $93;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_09";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_09"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0920"+STR_OWRC]      = $8793; // goto owrc
	g.dm_rm[?"_EastA_0920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_0920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8E<<8) | $99;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_0B";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_0B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0B20"+STR_OWRC]      = $8E99; // goto owrc
	g.dm_rm[?"_EastA_0B20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8E<<8) | $AB;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_0D";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_0D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0D20"+STR_OWRC]      = $8EAB; // goto owrc
	g.dm_rm[?"_EastA_0D20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8E<<8) | $B3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_0E";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_0E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0E10"+STR_OWRC]      = $8EB3; // goto owrc
	g.dm_rm[?"_EastA_0E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_0E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8B<<8) | $7C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_10";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_10"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1020"+STR_OWRC]      = $8B7C; // goto owrc
	g.dm_rm[?"_EastA_1020"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8B<<8) | $7E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_10";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_1010"+STR_OWRC]      = $8B7E; // goto owrc
	g.dm_rm[?"_EastA_1010"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8D<<8) | $80;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_13";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_13"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1320"+STR_OWRC]      = $8D80; // goto owrc
	g.dm_rm[?"_EastA_1320"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8D<<8) | $84;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_14";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_14"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1410"+STR_OWRC]      = $8D84; // goto owrc
	g.dm_rm[?"_EastA_1410"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($66<<8) | $84;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_17";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_17"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1720"+STR_OWRC]      = $6584; // goto owrc
	g.dm_rm[?"_EastA_1720"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_1720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_1710"+STR_OWRC]      = $6784; // goto owrc
	g.dm_rm[?"_EastA_1710"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($96<<8) | $82;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_18";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_18"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1820"+STR_OWRC]      = $9582; // goto owrc
	g.dm_rm[?"_EastA_1820"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_1820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_1810"+STR_OWRC]      = $9782; // goto owrc
	g.dm_rm[?"_EastA_1810"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($93<<8) | $7D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_19";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_19"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1920"+STR_OWRC]      = $927D; // goto owrc
	g.dm_rm[?"_EastA_1920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_1920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_1910"+STR_OWRC]      = $947D; // goto owrc
	g.dm_rm[?"_EastA_1910"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A3<<8) | $82;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_1A";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_1A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1A20"+STR_OWRC]      = $A381; // goto owrc
	g.dm_rm[?"_EastA_1A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_1A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_1A10"+STR_OWRC]      = $A383; // goto owrc
	g.dm_rm[?"_EastA_1A10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_1A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($81<<8) | $AF;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_21";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_21"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2120"+STR_OWRC]      = $81AF; // goto owrc
	g.dm_rm[?"_EastA_2120"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2110"+STR_OWRC]      = $81AF; // goto owrc
	g.dm_rm[?"_EastA_2110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_2110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2100"+STR_OWRC]      = $81AF; // goto owrc
	g.dm_rm[?"_EastA_2100"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_2100"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($7A<<8) | $84;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_26";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_26"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2620"+STR_OWRC]      = $7A84; // goto owrc
	g.dm_rm[?"_EastA_2620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2610"+STR_OWRC]      = $7A84; // goto owrc
	g.dm_rm[?"_EastA_2610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_2610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2600"+STR_OWRC]      = $7A84; // goto owrc
	g.dm_rm[?"_EastA_2600"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_2600"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9B<<8) | $B0;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_2C";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_2C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2C20"+STR_OWRC]      = $9BB0; // goto owrc
	g.dm_rm[?"_EastA_2C20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2C10"+STR_OWRC]      = $9BB0; // goto owrc
	g.dm_rm[?"_EastA_2C10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_2C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2C00"+STR_OWRC]      = $9BB0; // goto owrc
	g.dm_rm[?"_EastA_2C00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_2C00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($84<<8) | $87;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_2D";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_2D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2D20"+STR_OWRC]      = $8487; // goto owrc
	g.dm_rm[?"_EastA_2D20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_2D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2D10"+STR_OWRC]      = $8487; // goto owrc
	g.dm_rm[?"_EastA_2D10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_2D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2D00"+STR_OWRC]      = $8487; // goto owrc
	g.dm_rm[?"_EastA_2D00"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_2D00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A7<<8) | $AA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_2E";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_2E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2E20"+STR_OWRC]      = $A7AA; // goto owrc
	g.dm_rm[?"_EastA_2E20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2E10"+STR_OWRC]      = $A7AA; // goto owrc
	g.dm_rm[?"_EastA_2E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_2E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($91<<8) | $94;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_33";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_33"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3320"+STR_OWRC]      = $9194; // goto owrc
	g.dm_rm[?"_EastA_3320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3310"+STR_OWRC]      = $9194; // goto owrc
	g.dm_rm[?"_EastA_3310"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3300"+STR_OWRC]      = $9194; // goto owrc
	g.dm_rm[?"_EastA_3300"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_3300"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6C<<8) | $AA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_3A";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_3A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3A20"+STR_OWRC]      = $6CAA; // goto owrc
	g.dm_rm[?"_EastA_3A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3A10"+STR_OWRC]      = $6CAA; // goto owrc
	g.dm_rm[?"_EastA_3A10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3A00"+STR_OWRC]      = $6CAA; // goto owrc
	g.dm_rm[?"_EastA_3A00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_3A00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($78<<8) | $9C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_3B";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_3B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3B20"+STR_OWRC]      = $789C; // goto owrc
	g.dm_rm[?"_EastA_3B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3B10"+STR_OWRC]      = $789C; // goto owrc
	g.dm_rm[?"_EastA_3B10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3B00"+STR_OWRC]      = $789C; // goto owrc
	g.dm_rm[?"_EastA_3B00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_3B00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A3<<8) | $95;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_3E";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_3E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3E20"+STR_OWRC]      = $A395; // goto owrc
	g.dm_rm[?"_EastA_3E20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3E10"+STR_OWRC]      = $A395; // goto owrc
	g.dm_rm[?"_EastA_3E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3E00"+STR_OWRC]      = $A395; // goto owrc
	g.dm_rm[?"_EastA_3E00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_3E00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9B<<8) | $7E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_3F";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_3F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3F20"+STR_OWRC]      = $9B7E; // goto owrc
	g.dm_rm[?"_EastA_3F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3F10"+STR_OWRC]      = $9B7E; // goto owrc
	g.dm_rm[?"_EastA_3F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3F00"+STR_OWRC]      = $9B7E; // goto owrc
	g.dm_rm[?"_EastA_3F00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_3F00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5E<<8) | $82;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_11";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_11"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1120"+STR_OWRC]      = $5E82; // goto owrc
	g.dm_rm[?"_EastA_1120"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_1120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($72<<8) | $9F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_12";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_12"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1210"+STR_OWRC]      = $729F; // goto owrc
	g.dm_rm[?"_EastA_1210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_1210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($94<<8) | $A9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_15";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_15"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1520"+STR_OWRC]      = $94A9; // goto owrc
	g.dm_rm[?"_EastA_1520"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_1520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_1510"+STR_OWRC]      = $94A9; // goto owrc
	g.dm_rm[?"_EastA_1510"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_1510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($89<<8) | $96;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_16";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_16"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1620"+STR_OWRC]      = $8996; // goto owrc
	g.dm_rm[?"_EastA_1620"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($46<<8) | $A3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_6A";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_6A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_6A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_6A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_6A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_6A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_6A20"+STR_OWRC]      = $46A3; // goto owrc
	g.dm_rm[?"_EastA_6A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_6A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_6A10"+STR_OWRC]      = $46A3; // goto owrc
	g.dm_rm[?"_EastA_6A10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_6A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($69<<8) | $8D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_1C";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_1C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1C10"+STR_OWRC]      = $698D; // goto owrc
	g.dm_rm[?"_EastA_1C10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_1C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9E<<8) | $7C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_1F";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_1F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1F10"+STR_OWRC]      = $9E7C; // goto owrc
	g.dm_rm[?"_EastA_1F10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($1F<<8) | $68;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_20";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_20"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2010"+STR_OWRC]      = $1F68; // goto owrc
	g.dm_rm[?"_EastA_2010"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_2010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2020"+STR_OWRC]      = $1F68; // goto owrc
	g.dm_rm[?"_EastA_2020"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_2020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($63<<8) | $A3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_23";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+STR_Special+STR_Encounter] = "_EastA_23";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_23"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2320"+STR_OWRC]      = $63A3; // goto owrc
	g.dm_rm[?"_EastA_2320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2310"+STR_OWRC]      = $63A3; // goto owrc
	g.dm_rm[?"_EastA_2310"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_2310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($87<<8) | $B2;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_68";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_6820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_6820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_6820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_6820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_68"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_6820"+STR_OWRC]      = $86B2; // goto owrc
	g.dm_rm[?"_EastA_6820"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_6820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($37<<8) | $A5;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_29";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_29"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2920"+STR_OWRC]      = $38A5; // goto owrc
	g.dm_rm[?"_EastA_2920"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_2920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($36<<8) | $A5;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_EastA_2A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2A10"+STR_OWRC]      = $38A5; // goto owrc
	g.dm_rm[?"_EastA_2A10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_2A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($3A<<8) | $A4;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_EastA_52"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_5220"+STR_OWRC]      = $3AA4; // goto owrc
	g.dm_rm[?"_EastA_5220"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_5220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($83<<8) | $9C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_24";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_24"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2420"+STR_OWRC]      = $839C; // goto owrc
	g.dm_rm[?"_EastA_2420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_2410"+STR_OWRC]      = $839C; // goto owrc
	g.dm_rm[?"_EastA_2410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_2410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($0F<<8) | $6C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_2B";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_2B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_2B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_2B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_2B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_2B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_2B20"+STR_OWRC]      = $0F6C; // goto owrc
	g.dm_rm[?"_EastA_2B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_2B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($0F<<8) | $72;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_41";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_41"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4110"+STR_OWRC]      = $0F72; // goto owrc
	g.dm_rm[?"_EastA_4110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_4110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($15<<8) | $98;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_31";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_31"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3120"+STR_OWRC]      = $1598; // goto owrc
	g.dm_rm[?"_EastA_3120"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3110"+STR_OWRC]      = $1598; // goto owrc
	g.dm_rm[?"_EastA_3110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($98<<8) | $BB;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_69";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_6920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_6920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_6920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_6920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_69"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_6920"+STR_OWRC]      = $97BB; // goto owrc
	g.dm_rm[?"_EastA_6920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_6920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9B<<8) | $8F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_36";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_36"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3620"+STR_OWRC]      = $9B8F; // goto owrc
	g.dm_rm[?"_EastA_3620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_3620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3610"+STR_OWRC]      = $9B8F; // goto owrc
	g.dm_rm[?"_EastA_3610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_3610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3600"+STR_OWRC]      = $9B8F; // goto owrc
	g.dm_rm[?"_EastA_3600"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_3600"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($28<<8) | $8E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_37";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_3720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_3720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_3720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_3720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_37"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_3710"+STR_OWRC]      = $288E; // goto owrc
	g.dm_rm[?"_EastA_3710"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_3710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_3720"+STR_OWRC]      = $288E; // goto owrc
	g.dm_rm[?"_EastA_3720"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_3720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($88<<8) | $B2;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_68";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_6810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_6810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_6810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_6810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_6810"+STR_OWRC]      = $89B2; // goto owrc
	g.dm_rm[?"_EastA_6810"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_6810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($99<<8) | $BB;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_69";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_6910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_6910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_6910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_6910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_6910"+STR_OWRC]      = $9ABB; // goto owrc
	g.dm_rm[?"_EastA_6910"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_6910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D5<<8) | $48;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_48";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+dk_NO_ENCOUNTER] = 1; // dk_NO_ENCOUNTER:  Can't use encounter skip exploit for this exit
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_48"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4820"+STR_OWRC]      = $D547; // goto owrc
	g.dm_rm[?"_EastA_4820"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_4820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($DA<<8) | $4E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_49";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_49"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4910"+STR_OWRC]      = $DA4E; // goto owrc
	g.dm_rm[?"_EastA_4910"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_4910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D8<<8) | $4C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_49";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_4920"+STR_OWRC]      = $D84C; // goto owrc
	g.dm_rm[?"_EastA_4920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_4920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D5<<8) | $59;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_4A";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_4A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4A20"+STR_OWRC]      = $D559; // goto owrc
	g.dm_rm[?"_EastA_4A20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_4A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E4<<8) | $46;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_4E";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_4E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4E10"+STR_OWRC]      = $E346; // goto owrc
	g.dm_rm[?"_EastA_4E10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_4E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E5<<8) | $45;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_4E";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_4E20"+STR_OWRC]      = $E645; // goto owrc
	g.dm_rm[?"_EastA_4E20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_4E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E7<<8) | $50;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_4D";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_4D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4D20"+STR_OWRC]      = $E750; // goto owrc
	g.dm_rm[?"_EastA_4D20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_4D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_4D10"+STR_OWRC]      = $E750; // goto owrc
	g.dm_rm[?"_EastA_4D10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_4D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_4D00"+STR_OWRC]      = $E750; // goto owrc
	g.dm_rm[?"_EastA_4D00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_EastA_4D00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($77<<8) | $95;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_5B";
	dm_data[?_owrc_+STR_AccessRm] = "";
	g.dm_rm[?"_EastA_5B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_5B20"+STR_OWRC]      = $7795; // goto owrc
	g.dm_rm[?"_EastA_5B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_5B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_5B10"+STR_OWRC]      = $7795; // goto owrc
	g.dm_rm[?"_EastA_5B10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_5B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($78<<8) | $8D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_62";
	dm_data[?_owrc_+STR_AccessRm] = "";
	g.dm_rm[?"_EastA_62"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_6220"+STR_OWRC]      = $788D; // goto owrc
	g.dm_rm[?"_EastA_6220"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_6220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_6210"+STR_OWRC]      = $788D; // goto owrc
	g.dm_rm[?"_EastA_6210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_6210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($85<<8) | $87;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_70";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_7020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_7020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_7020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_7020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_70"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_7020"+STR_OWRC]      = $8587; // goto owrc
	g.dm_rm[?"_EastA_7020"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_7020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_7010"+STR_OWRC]      = $8587; // goto owrc
	g.dm_rm[?"_EastA_7010"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_7010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_Forest_Hammer"+_owrc_] = "_Forest_Hammer_0101"; // info example: '_Forest_Hammer_0101'
	dm_data[?"_OWRC_Forest_Hammer_0101"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($BF<<8) | $C9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_77";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_7710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_7710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_7710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_7710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_77"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_7710"+STR_OWRC]      = $BFC9; // goto owrc
	g.dm_rm[?"_EastA_7710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_7710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($BF<<8) | $94;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_78";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+dk_NO_ENCOUNTER] = 1; // dk_NO_ENCOUNTER:  Can't use encounter skip exploit for this exit
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_7820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_7820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_7820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_7820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_78"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_7820"+STR_OWRC]      = $BF93; // goto owrc
	g.dm_rm[?"_EastA_7820"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_7820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D0<<8) | $C3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_8E";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_8E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8E10"+STR_OWRC]      = $D0C3; // goto owrc
	g.dm_rm[?"_EastA_8E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_8E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CB<<8) | $C4;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_8F";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_8F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8F20"+STR_OWRC]      = $CBC4; // goto owrc
	g.dm_rm[?"_EastA_8F20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_8F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($BF<<8) | $D0;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_80";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_80"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8020"+STR_OWRC]      = $BFD0; // goto owrc
	g.dm_rm[?"_EastA_8020"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_8020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C1<<8) | $D3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_81";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_81"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8120"+STR_OWRC]      = $C1D3; // goto owrc
	g.dm_rm[?"_EastA_8120"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_8120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C0<<8) | $DA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_84";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_84"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8410"+STR_OWRC]      = $C0DA; // goto owrc
	g.dm_rm[?"_EastA_8410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_8410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C7<<8) | $D7;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_87";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_87"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8720"+STR_OWRC]      = $C7D7; // goto owrc
	g.dm_rm[?"_EastA_8720"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_8720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CC<<8) | $CA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_8C";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_8C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8C20"+STR_OWRC]      = $CCCA; // goto owrc
	g.dm_rm[?"_EastA_8C20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_8C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C4<<8) | $DC;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_85";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_85"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8510"+STR_OWRC]      = $C4DC; // goto owrc
	g.dm_rm[?"_EastA_8510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_8510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C8<<8) | $DC;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_86";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_86"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8610"+STR_OWRC]      = $C8DC; // goto owrc
	g.dm_rm[?"_EastA_8610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_8610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CB<<8) | $D1;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_88";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_88"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8810"+STR_OWRC]      = $CBD1; // goto owrc
	g.dm_rm[?"_EastA_8810"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_8810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CA<<8) | $CB;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_8B";
	dm_data[?_owrc_+STR_AccessRm] = "21212121";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8B21"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8B21"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8B21"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8B21"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_8B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8B21"+STR_OWRC]      = $CACB; // goto owrc
	g.dm_rm[?"_EastA_8B21"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_8B21"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D0<<8) | $D3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_8D";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_8D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_8D20"+STR_OWRC]      = $D0D3; // goto owrc
	g.dm_rm[?"_EastA_8D20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_8D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CD<<8) | $D9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_8D";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_8D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_8D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_8D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_8D10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_8D10"+STR_OWRC]      = $CDD9; // goto owrc
	g.dm_rm[?"_EastA_8D10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_8D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($DE<<8) | $B3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_64";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_6420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_6420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_6420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_6420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_64"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_6420"+STR_OWRC]      = $DEB3; // goto owrc
	g.dm_rm[?"_EastA_6420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_6420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D6<<8) | $D3;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_90";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_90"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9010"+STR_OWRC]      = $D6D3; // goto owrc
	g.dm_rm[?"_EastA_9010"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_9010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9020"+STR_OWRC]      = $D6D3; // goto owrc
	g.dm_rm[?"_EastA_9020"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_9020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E0<<8) | $BD;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_A0";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_A020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_A020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_A020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_A020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_A0"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_A020"+STR_OWRC]      = $E0BD; // goto owrc
	g.dm_rm[?"_EastA_A020"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_A020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C9<<8) | $C1;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_91";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9100"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_91"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9110"+STR_OWRC]      = $C9C1; // goto owrc
	g.dm_rm[?"_EastA_9110"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9120"+STR_OWRC]      = $C9C1; // goto owrc
	g.dm_rm[?"_EastA_9120"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($C8<<8) | $BD;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_92";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9200"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9200"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9200"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9200"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_92"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9210"+STR_OWRC]      = $C8BD; // goto owrc
	g.dm_rm[?"_EastA_9210"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_9210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9220"+STR_OWRC]      = $C8BD; // goto owrc
	g.dm_rm[?"_EastA_9220"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_9220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CD<<8) | $B6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_93";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_93"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9310"+STR_OWRC]      = $CDB6; // goto owrc
	g.dm_rm[?"_EastA_9310"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9320"+STR_OWRC]      = $CDB6; // goto owrc
	g.dm_rm[?"_EastA_9320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D3<<8) | $B5;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_94";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_94"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9410"+STR_OWRC]      = $D3B5; // goto owrc
	g.dm_rm[?"_EastA_9410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9420"+STR_OWRC]      = $D3B5; // goto owrc
	g.dm_rm[?"_EastA_9420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CB<<8) | $BE;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_95";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_95"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9510"+STR_OWRC]      = $CBBE; // goto owrc
	g.dm_rm[?"_EastA_9510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9520"+STR_OWRC]      = $CBBE; // goto owrc
	g.dm_rm[?"_EastA_9520"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CC<<8) | $BC;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_96";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_96"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9610"+STR_OWRC]      = $CCBC; // goto owrc
	g.dm_rm[?"_EastA_9610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9620"+STR_OWRC]      = $CCBC; // goto owrc
	g.dm_rm[?"_EastA_9620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CA<<8) | $BB;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_97";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_97"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9710"+STR_OWRC]      = $CABB; // goto owrc
	g.dm_rm[?"_EastA_9710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9720"+STR_OWRC]      = $CABB; // goto owrc
	g.dm_rm[?"_EastA_9720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CC<<8) | $BA;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_98";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_98"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9810"+STR_OWRC]      = $CCBA; // goto owrc
	g.dm_rm[?"_EastA_9810"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9820"+STR_OWRC]      = $CCBA; // goto owrc
	g.dm_rm[?"_EastA_9820"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CB<<8) | $B9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_99";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9900"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9900"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9900"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9900"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_99"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9910"+STR_OWRC]      = $CBB9; // goto owrc
	g.dm_rm[?"_EastA_9910"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9920"+STR_OWRC]      = $CBB9; // goto owrc
	g.dm_rm[?"_EastA_9920"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CD<<8) | $B8;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_9A";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_9A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9A10"+STR_OWRC]      = $CDB8; // goto owrc
	g.dm_rm[?"_EastA_9A10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9A20"+STR_OWRC]      = $CDB8; // goto owrc
	g.dm_rm[?"_EastA_9A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CE<<8) | $B7;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_9B";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_9B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9B10"+STR_OWRC]      = $CEB7; // goto owrc
	g.dm_rm[?"_EastA_9B10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9B20"+STR_OWRC]      = $CEB7; // goto owrc
	g.dm_rm[?"_EastA_9B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D1<<8) | $B6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_9C";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_9C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9C10"+STR_OWRC]      = $D1B6; // goto owrc
	g.dm_rm[?"_EastA_9C10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9C20"+STR_OWRC]      = $D1B6; // goto owrc
	g.dm_rm[?"_EastA_9C20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D0<<8) | $B7;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_9D";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9D00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_9D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9D10"+STR_OWRC]      = $D0B7; // goto owrc
	g.dm_rm[?"_EastA_9D10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9D10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9D20"+STR_OWRC]      = $D0B7; // goto owrc
	g.dm_rm[?"_EastA_9D20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D3<<8) | $B6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_9E";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_9E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9E10"+STR_OWRC]      = $D3B6; // goto owrc
	g.dm_rm[?"_EastA_9E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9E20"+STR_OWRC]      = $D3B6; // goto owrc
	g.dm_rm[?"_EastA_9E20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($CA<<8) | $BD;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_9F";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_9F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_9F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_9F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_9F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_9F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_9F10"+STR_OWRC]      = $CABD; // goto owrc
	g.dm_rm[?"_EastA_9F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_9F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_9F20"+STR_OWRC]      = $CABD; // goto owrc
	g.dm_rm[?"_EastA_9F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_9F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($EB<<8) | $B7;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_A1";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_A180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_A180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_A180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_A180"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'


	_owrc  = ($D9<<8) | $C6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_B2";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_B210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_B210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_B210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_B210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_B2"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_B210"+STR_OWRC]      = $D9C6; // goto owrc
	g.dm_rm[?"_EastA_B210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_B210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A0<<8) | $8A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_C6";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_C610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_C610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_C610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_C610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_C6"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_C610"+STR_OWRC]      = $A08A; // goto owrc
	g.dm_rm[?"_EastA_C610"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_C610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($DC<<8) | $C8;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_B3";
	dm_data[?_owrc_+STR_AccessRm] = "20101020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_B320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_B310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_B310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_B320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_B3"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_B320"+STR_OWRC]      = $DCC7; // goto owrc
	g.dm_rm[?"_EastA_B320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_B320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_B310"+STR_OWRC]      = $DBC8; // goto owrc
	g.dm_rm[?"_EastA_B310"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_B310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E0<<8) | $CB;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_B4";
	dm_data[?_owrc_+STR_AccessRm] = "20101020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_B420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_B410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_B410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_B420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_B4"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_B420"+STR_OWRC]      = $E1CB; // goto owrc
	g.dm_rm[?"_EastA_B420"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_B420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_B410"+STR_OWRC]      = $DFCB; // goto owrc
	g.dm_rm[?"_EastA_B410"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_EastA_B410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D7<<8) | $C6;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_B5";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_B510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_B510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_B510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_B510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_B5"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_B510"+STR_OWRC]      = $D7C7; // goto owrc
	g.dm_rm[?"_EastA_B510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_B510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E4<<8) | $CD;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_B6";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_B610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_B620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_B610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_B620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_B6"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_B610"+STR_OWRC]      = $E4CE; // goto owrc
	g.dm_rm[?"_EastA_B610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_B610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_EastA_B620"+STR_OWRC]      = $E4CC; // goto owrc
	g.dm_rm[?"_EastA_B620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_B620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D7<<8) | $C5;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_B5";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_B520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_B520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_B520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_B520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_B520"+STR_OWRC]      = $D7C4; // goto owrc
	g.dm_rm[?"_EastA_B520"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_EastA_B520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($10<<8) | $B9;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_0F";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_0F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_0F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_0F20"+STR_OWRC]      = $10B9; // goto owrc
	g.dm_rm[?"_EastA_0F20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_0F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($D6<<8) | $4B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_4F";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_4F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4F10"+STR_OWRC]      = $D64B; // goto owrc
	g.dm_rm[?"_EastA_4F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_EastA_4F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($E2<<8) | $61;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_42";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_4220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_4220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_4220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_4220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_42"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_4220"+STR_OWRC]      = $E261; // goto owrc
	g.dm_rm[?"_EastA_4220"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_4220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($86<<8) | $7E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_EastA_1B";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_EastA_1B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_EastA_1B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_EastA_1B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_EastA_1B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_EastA_1B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_EastA_1B20"+STR_OWRC]      = $867E; // goto owrc
	g.dm_rm[?"_EastA_1B20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_EastA_1B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5B<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_00";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_00"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0000"+STR_OWRC]      = $5B3F; // goto owrc
	g.dm_rm[?"_WestA_0000"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_0000"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	dm_data[?"_OWRC_North_Palace01"] = _owrc; // datakey example: '_OWRC_Parapa_Palace01'


	_owrc  = ($79<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_01";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0120"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_01"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0120"+STR_OWRC]      = $7838; // goto owrc
	g.dm_rm[?"_WestA_0120"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_0120"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_0110"+STR_OWRC]      = $7A38; // goto owrc
	g.dm_rm[?"_WestA_0110"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($7E<<8) | $42;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_02";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0220"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_02"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0220"+STR_OWRC]      = $7E41; // goto owrc
	g.dm_rm[?"_WestA_0220"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_0220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_0210"+STR_OWRC]      = $7E43; // goto owrc
	g.dm_rm[?"_WestA_0210"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_0210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($88<<8) | $42;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_04";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_04"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0420"+STR_OWRC]      = $8841; // goto owrc
	g.dm_rm[?"_WestA_0420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_0420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($88<<8) | $49;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_05";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_05"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0510"+STR_OWRC]      = $884A; // goto owrc
	g.dm_rm[?"_WestA_0510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_0510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($62<<8) | $66;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_06";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0610"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0620"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_06"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0620"+STR_OWRC]      = $6166; // goto owrc
	g.dm_rm[?"_WestA_0620"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_0620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_0610"+STR_OWRC]      = $6366; // goto owrc
	g.dm_rm[?"_WestA_0610"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($55<<8) | $5F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_07";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_07"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0710"+STR_OWRC]      = $555F; // goto owrc
	g.dm_rm[?"_WestA_0710"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($4D<<8) | $56;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_07";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_0720"+STR_OWRC]      = $4D56; // goto owrc
	g.dm_rm[?"_WestA_0720"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_0720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5B<<8) | $44;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_03";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+dk_NO_ENCOUNTER] = 1; // dk_NO_ENCOUNTER:  Can't use encounter skip exploit for this exit
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_03"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0310"+STR_OWRC]      = $5B45; // goto owrc
	g.dm_rm[?"_WestA_0310"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_0310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($61<<8) | $29;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_09";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_09"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0920"+STR_OWRC]      = $6129; // goto owrc
	g.dm_rm[?"_WestA_0920"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_0920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($65<<8) | $2B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_0B";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_0B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0B10"+STR_OWRC]      = $652B; // goto owrc
	g.dm_rm[?"_WestA_0B10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($65<<8) | $4E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_0C";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_0C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0C10"+STR_OWRC]      = $654E; // goto owrc
	g.dm_rm[?"_WestA_0C10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6C<<8) | $31;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_0E";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0E20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_0E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0E20"+STR_OWRC]      = $6C31; // goto owrc
	g.dm_rm[?"_WestA_0E20"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($65<<8) | $5E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_10";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_10"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1020"+STR_OWRC]      = $655E; // goto owrc
	g.dm_rm[?"_WestA_1020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($87<<8) | $5A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "_Fall_04";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_12";
	dm_data[?_owrc_+STR_AccessRm] = "80808080";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1280"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1280"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1280"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1280"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_12"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1280"+STR_OWRC]      = $875A; // goto owrc
	g.dm_rm[?"_WestA_1280"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1280"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1220"+STR_OWRC]      = $875A; // goto owrc
	g.dm_rm[?"_WestA_1220"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1220"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8D<<8) | $64;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_2A";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_2A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2A10"+STR_OWRC]      = $8D64; // goto owrc
	g.dm_rm[?"_WestA_2A10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($67<<8) | $2F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_14";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1400"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_14"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1420"+STR_OWRC]      = $672F; // goto owrc
	g.dm_rm[?"_WestA_1420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1410"+STR_OWRC]      = $672F; // goto owrc
	g.dm_rm[?"_WestA_1410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1400"+STR_OWRC]      = $672F; // goto owrc
	g.dm_rm[?"_WestA_1400"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1400"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($73<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_15";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_15"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1520"+STR_OWRC]      = $733C; // goto owrc
	g.dm_rm[?"_WestA_1520"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1510"+STR_OWRC]      = $733C; // goto owrc
	g.dm_rm[?"_WestA_1510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1500"+STR_OWRC]      = $733C; // goto owrc
	g.dm_rm[?"_WestA_1500"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1500"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($74<<8) | $39;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_16";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_16"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1620"+STR_OWRC]      = $7439; // goto owrc
	g.dm_rm[?"_WestA_1620"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1610"+STR_OWRC]      = $7439; // goto owrc
	g.dm_rm[?"_WestA_1610"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1600"+STR_OWRC]      = $7439; // goto owrc
	g.dm_rm[?"_WestA_1600"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1600"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($74<<8) | $3D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_17";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1700"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_17"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1720"+STR_OWRC]      = $743D; // goto owrc
	g.dm_rm[?"_WestA_1720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1710"+STR_OWRC]      = $743D; // goto owrc
	g.dm_rm[?"_WestA_1710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1700"+STR_OWRC]      = $743D; // goto owrc
	g.dm_rm[?"_WestA_1700"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1700"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5B<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_1A";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1A10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1A20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_1A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1A20"+STR_OWRC]      = $5B37; // goto owrc
	g.dm_rm[?"_WestA_1A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($74<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_1B";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_1B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1B20"+STR_OWRC]      = $743F; // goto owrc
	g.dm_rm[?"_WestA_1B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1B10"+STR_OWRC]      = $743F; // goto owrc
	g.dm_rm[?"_WestA_1B10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1B00"+STR_OWRC]      = $743F; // goto owrc
	g.dm_rm[?"_WestA_1B00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1B00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($75<<8) | $3B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_1C";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1C00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_1C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1C20"+STR_OWRC]      = $753B; // goto owrc
	g.dm_rm[?"_WestA_1C20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1C10"+STR_OWRC]      = $753B; // goto owrc
	g.dm_rm[?"_WestA_1C10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1C00"+STR_OWRC]      = $753B; // goto owrc
	g.dm_rm[?"_WestA_1C00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1C00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($8D<<8) | $4E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_1F";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_1F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_1F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_1F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_1F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_1F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_1F20"+STR_OWRC]      = $8D4E; // goto owrc
	g.dm_rm[?"_WestA_1F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_1F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1F10"+STR_OWRC]      = $8D4E; // goto owrc
	g.dm_rm[?"_WestA_1F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_1F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_1F00"+STR_OWRC]      = $8D4E; // goto owrc
	g.dm_rm[?"_WestA_1F00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_1F00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($7F<<8) | $47;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_20";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2000"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_20"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2020"+STR_OWRC]      = $7F47; // goto owrc
	g.dm_rm[?"_WestA_2020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2010"+STR_OWRC]      = $7F47; // goto owrc
	g.dm_rm[?"_WestA_2010"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2000"+STR_OWRC]      = $7F47; // goto owrc
	g.dm_rm[?"_WestA_2000"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_2000"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($47<<8) | $45;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_21";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2110"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_21"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2110"+STR_OWRC]      = $4745; // goto owrc
	g.dm_rm[?"_WestA_2110"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_2110"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($67<<8) | $66;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_26";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2600"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_26"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2620"+STR_OWRC]      = $6766; // goto owrc
	g.dm_rm[?"_WestA_2620"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_2620"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2610"+STR_OWRC]      = $6766; // goto owrc
	g.dm_rm[?"_WestA_2610"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_2610"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2600"+STR_OWRC]      = $6766; // goto owrc
	g.dm_rm[?"_WestA_2600"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_2600"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($51<<8) | $4D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_2B";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2B00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_2B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2B20"+STR_OWRC]      = $514D; // goto owrc
	g.dm_rm[?"_WestA_2B20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2B10"+STR_OWRC]      = $514D; // goto owrc
	g.dm_rm[?"_WestA_2B10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2B00"+STR_OWRC]      = $514D; // goto owrc
	g.dm_rm[?"_WestA_2B00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_2B00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($63<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_2D";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_2D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2D20"+STR_OWRC]      = $6338; // goto owrc
	g.dm_rm[?"_WestA_2D20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_2D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($7D<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_2E";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2E00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_2E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2E20"+STR_OWRC]      = $7D3C; // goto owrc
	g.dm_rm[?"_WestA_2E20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2E20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2E10"+STR_OWRC]      = $7D3C; // goto owrc
	g.dm_rm[?"_WestA_2E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2E00"+STR_OWRC]      = $7D3C; // goto owrc
	g.dm_rm[?"_WestA_2E00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_2E00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6E<<8) | $30;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_33";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3300"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_33"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3320"+STR_OWRC]      = $6E30; // goto owrc
	g.dm_rm[?"_WestA_3320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_3320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3310"+STR_OWRC]      = $6E30; // goto owrc
	g.dm_rm[?"_WestA_3310"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_3310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3300"+STR_OWRC]      = $6E30; // goto owrc
	g.dm_rm[?"_WestA_3300"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_3300"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6D<<8) | $4F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_34";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_34"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3420"+STR_OWRC]      = $6D4F; // goto owrc
	g.dm_rm[?"_WestA_3420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_3420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3410"+STR_OWRC]      = $6D4F; // goto owrc
	g.dm_rm[?"_WestA_3410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_3410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($82<<8) | $5E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_38";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3800"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_38"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3820"+STR_OWRC]      = $825E; // goto owrc
	g.dm_rm[?"_WestA_3820"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_3820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3810"+STR_OWRC]      = $825E; // goto owrc
	g.dm_rm[?"_WestA_3810"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_3810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3800"+STR_OWRC]      = $825E; // goto owrc
	g.dm_rm[?"_WestA_3800"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_3800"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6B<<8) | $4D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_3A";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3A00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_3A"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3A20"+STR_OWRC]      = $6B4D; // goto owrc
	g.dm_rm[?"_WestA_3A20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_3A20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3A10"+STR_OWRC]      = $6B4D; // goto owrc
	g.dm_rm[?"_WestA_3A10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_3A10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3A00"+STR_OWRC]      = $6B4D; // goto owrc
	g.dm_rm[?"_WestA_3A00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_3A00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($56<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_29";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_29"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2920"+STR_OWRC]      = $563F; // goto owrc
	g.dm_rm[?"_WestA_2920"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2910"+STR_OWRC]      = $563F; // goto owrc
	g.dm_rm[?"_WestA_2910"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($7F<<8) | $5A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_24";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2420"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_24"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2420"+STR_OWRC]      = $7F5A; // goto owrc
	g.dm_rm[?"_WestA_2420"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2420"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2410"+STR_OWRC]      = $7F5A; // goto owrc
	g.dm_rm[?"_WestA_2410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($73<<8) | $3D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_25";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2510"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_25"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2520"+STR_OWRC]      = $733D; // goto owrc
	g.dm_rm[?"_WestA_2520"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2510"+STR_OWRC]      = $733D; // goto owrc
	g.dm_rm[?"_WestA_2510"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5B<<8) | $3F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_00";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0020"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'


	_owrc  = ($6F<<8) | $38;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_08";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_08"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_0810"+STR_OWRC]      = $6F38; // goto owrc
	g.dm_rm[?"_WestA_0810"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_0810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6B<<8) | $37;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_08";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_0820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_0820"+STR_OWRC]      = $6B37; // goto owrc
	g.dm_rm[?"_WestA_0820"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_0820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($85<<8) | $35;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_37";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3720"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_37"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3720"+STR_OWRC]      = $8535; // goto owrc
	g.dm_rm[?"_WestA_3720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_3720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3710"+STR_OWRC]      = $8535; // goto owrc
	g.dm_rm[?"_WestA_3710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_3710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($3A<<8) | $5E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_3F";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_3F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3F20"+STR_OWRC]      = $3A5E; // goto owrc
	g.dm_rm[?"_WestA_3F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_3F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_3F10"+STR_OWRC]      = $3A5E; // goto owrc
	g.dm_rm[?"_WestA_3F10"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_3F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5D<<8) | $33;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_3E";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_3E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_3E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_3E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_3E10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_3E"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_3E10"+STR_OWRC]      = $5D33; // goto owrc
	g.dm_rm[?"_WestA_3E10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_3E10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($7F<<8) | $57;
	_owrc_ = hex_str(_owrc);
	g.dm_rm[?"_WestA_60"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_6020"+STR_OWRC]      = $7F57; // goto owrc
	g.dm_rm[?"_WestA_6020"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_6020"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($0F<<8) | $47;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_2F";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2F00"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_2F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2F20"+STR_OWRC]      = $0F47; // goto owrc
	g.dm_rm[?"_WestA_2F20"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_2F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2F10"+STR_OWRC]      = $0F47; // goto owrc
	g.dm_rm[?"_WestA_2F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_2F00"+STR_OWRC]      = $0F47; // goto owrc
	g.dm_rm[?"_WestA_2F00"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_2F00"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($3D<<8) | $5F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_43";
	dm_data[?_owrc_+STR_AccessRm] = "20101020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4310"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_43"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4320"+STR_OWRC]      = $3E5F; // goto owrc
	g.dm_rm[?"_WestA_4320"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_4320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_4310"+STR_OWRC]      = $3C5F; // goto owrc
	g.dm_rm[?"_WestA_4310"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_4310"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($49<<8) | $3C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_2C";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_2C10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_2C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_2C10"+STR_OWRC]      = $493C; // goto owrc
	g.dm_rm[?"_WestA_2C10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_2C10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($2F<<8) | $31;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_44";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4410"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_44"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4410"+STR_OWRC]      = $2F31; // goto owrc
	g.dm_rm[?"_WestA_4410"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_4410"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($79<<8) | $19;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_4D";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4D20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_4D"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4D20"+STR_OWRC]      = $7919; // goto owrc
	g.dm_rm[?"_WestA_4D20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_4D20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($75<<8) | $1F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_4F";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4F20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_4F"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4F20"+STR_OWRC]      = $741F; // goto owrc
	g.dm_rm[?"_WestA_4F20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_4F20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($74<<8) | $28;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_4F";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4F10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_4F10"+STR_OWRC]      = $7428; // goto owrc
	g.dm_rm[?"_WestA_4F10"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_4F10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($75<<8) | $1C;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_52";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5210"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_52"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5210"+STR_OWRC]      = $741C; // goto owrc
	g.dm_rm[?"_WestA_5210"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_5210"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($68<<8) | $1D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_55";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5520"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_55"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5520"+STR_OWRC]      = $681D; // goto owrc
	g.dm_rm[?"_WestA_5520"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_5520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($9E<<8) | $4F;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_45";
	dm_data[?_owrc_+STR_AccessRm] = "00000000";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4500"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_45"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4520"+STR_OWRC]      = $9E4F; // goto owrc
	g.dm_rm[?"_WestA_4520"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_4520"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_4510"+STR_OWRC]      = $9E4F; // goto owrc
	g.dm_rm[?"_WestA_4510"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_4510"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_4500"+STR_OWRC]      = $9E4F; // goto owrc
	g.dm_rm[?"_WestA_4500"+STR_ow_dir]    = $0F; // goto ow facing dir
	g.dm_rm[?"_WestA_4500"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6A<<8) | $3E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_47";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4710"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_47"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4720"+STR_OWRC]      = $6A3E; // goto owrc
	g.dm_rm[?"_WestA_4720"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_4720"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_4710"+STR_OWRC]      = $6A3E; // goto owrc
	g.dm_rm[?"_WestA_4710"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_4710"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($40<<8) | $5E;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_58";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_58"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5810"+STR_OWRC]      = $405E; // goto owrc
	g.dm_rm[?"_WestA_5810"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_5810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($41<<8) | $5D;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_58";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5820"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_5820"+STR_OWRC]      = $415D; // goto owrc
	g.dm_rm[?"_WestA_5820"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_5820"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($43<<8) | $2A;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_FF";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_FF20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_FF20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_FF20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_FF20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_FF"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_FF20"+STR_OWRC]      = $432A; // goto owrc
	g.dm_rm[?"_WestA_FF20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_FF20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($40<<8) | $2B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_F8";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_F810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_F810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_F810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_F810"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_F8"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_F810"+STR_OWRC]      = $402B; // goto owrc
	g.dm_rm[?"_WestA_F810"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_F810"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($6E<<8) | $64;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_40";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_4010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_4010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_4010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_4010"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_40"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_4010"+STR_OWRC]      = $6E64; // goto owrc
	g.dm_rm[?"_WestA_4010"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_4010"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($61<<8) | $55;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_5B";
	dm_data[?_owrc_+STR_AccessRm] = "10101010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5B10"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_5B"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5B10"+STR_OWRC]      = $6155; // goto owrc
	g.dm_rm[?"_WestA_5B10"+STR_ow_dir]    = $04; // goto ow facing dir
	g.dm_rm[?"_WestA_5B10"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($5F<<8) | $53;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_5B";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5B20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_5B20"+STR_OWRC]      = $5F53; // goto owrc
	g.dm_rm[?"_WestA_5B20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_5B20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($69<<8) | $65;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_5C";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5C20"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_5C"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5C20"+STR_OWRC]      = $6965; // goto owrc
	g.dm_rm[?"_WestA_5C20"+STR_ow_dir]    = $08; // goto ow facing dir
	g.dm_rm[?"_WestA_5C20"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($A4<<8) | $4B;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $01;
	dm_data[?_owrc_+STR_Open+STR_Default] = $01;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_59";
	dm_data[?_owrc_+STR_AccessRm] = "20102010";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5910"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5920"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_59"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5920"+STR_OWRC]      = $A44A; // goto owrc
	g.dm_rm[?"_WestA_5920"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_5920"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit
	g.dm_rm[?"_WestA_5910"+STR_OWRC]      = $A44C; // goto owrc
	g.dm_rm[?"_WestA_5910"+STR_ow_dir]    = $01; // goto ow facing dir
	g.dm_rm[?"_WestA_5910"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit


	_owrc  = ($74<<8) | $16;
	_owrc_ = hex_str(_owrc);
	dm_data[?_owrc_+STR_Open]             = $00;
	dm_data[?_owrc_+STR_Open+STR_Default] = $00;
	dm_data[?_owrc_+STR_CutScene] = "0";
	dm_data[?_owrc_+STR_RmName]   = "_WestA_53";
	dm_data[?_owrc_+STR_AccessRm] = "20202020";
	dm_data[?_owrc_+"08"+STR_Exit] = "_WestA_5320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"04"+STR_Exit] = "_WestA_5320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"02"+STR_Exit] = "_WestA_5320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	dm_data[?_owrc_+"01"+STR_Exit] = "_WestA_5320"; // goto rm exit.  datakey example: owrc + ow move_dir  + '_Exit'
	g.dm_rm[?"_WestA_53"+STR_OWRC]        = _owrc; // scene owrc
	g.dm_rm[?"_WestA_5320"+STR_OWRC]      = $7315; // goto owrc
	g.dm_rm[?"_WestA_5320"+STR_ow_dir]    = $02; // goto ow facing dir
	g.dm_rm[?"_WestA_5320"+STR_goto_reen] = Area_OvrwA+_owrc_; // goto ow exit








	// STR_Scene+STR_OWRC
	// This is an exit obj that's soley here to 
	// indicate the owrc of a scene so pause menu 
	// map will acurately show the ow position of PC.
	// _data Example: '_WestA_FF'
	// _data Example: '_WestA_FA,_WestA_F4,_WestA_F3'  (all share same owrc)

	_owrc = ($45<<8) | $2A;
	g.dm_rm[?"_WestA_FF"+STR_OWRC] = _owrc;

	_owrc = ($BF<<8) | $A4;
	g.dm_rm[?"_EastA_75"+STR_OWRC] = _owrc;

	_owrc = ($BF<<8) | $BA;
	g.dm_rm[?"_EastA_76"+STR_OWRC] = _owrc;

	_owrc = ($3E<<8) | $2B;
	g.dm_rm[?"_WestA_F7"+STR_OWRC] = _owrc;

	_owrc = ($3B<<8) | $2B;
	g.dm_rm[?"_WestA_FE"+STR_OWRC] = _owrc;

	_owrc = ($5B<<8) | $3E;
	g.dm_rm[?"_WestA_18"+STR_OWRC] = _owrc;

	_owrc = ($5B<<8) | $3B;
	g.dm_rm[?"_WestA_19"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_48"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_49"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_3D"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_3E"+STR_OWRC] = _owrc;

	_owrc = ($5B<<8) | $42;
	g.dm_rm[?"_WestA_03"+STR_OWRC] = _owrc;

	_owrc = ($5B<<8) | $40;
	g.dm_rm[?"_WestA_31"+STR_OWRC] = _owrc;

	_owrc = ($5B<<8) | $3F;
	g.dm_rm[?"_WestA_00"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_32"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_3C"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_42"+STR_OWRC] = _owrc;

	_owrc = ($6C<<8) | $31;
	g.dm_rm[?"_WestA_0F"+STR_OWRC] = _owrc;

	_owrc = ($63<<8) | $2A;
	g.dm_rm[?"_WestA_0A"+STR_OWRC] = _owrc;

	_owrc = ($49<<8) | $2A;
	g.dm_rm[?"_TownA_03"+STR_OWRC] = _owrc;

	_owrc = ($65<<8) | $5E;
	g.dm_rm[?"_WestA_11"+STR_OWRC] = _owrc;

	_owrc = ($8B<<8) | $5D;
	g.dm_rm[?"_WestA_13"+STR_OWRC] = _owrc;

	_owrc = ($47<<8) | $45;
	g.dm_rm[?"_WestA_36"+STR_OWRC] = _owrc;

	_owrc = ($73<<8) | $3D;
	g.dm_rm[?"_TownA_5F"+STR_OWRC] = _owrc;

	_owrc = ($8D<<8) | $31;
	g.dm_rm[?"_DthMt_2C"+STR_OWRC] = _owrc;

	_owrc = ($81<<8) | $2F;
	g.dm_rm[?"_WestA_4A"+STR_OWRC] = _owrc;

	_owrc = ($7E<<8) | $22;
	g.dm_rm[?"_WestA_4C"+STR_OWRC] = _owrc;

	_owrc = ($7C<<8) | $20;
	g.dm_rm[?"_WestA_4D"+STR_OWRC] = _owrc;

	_owrc = ($75<<8) | $23;
	g.dm_rm[?"_WestA_4F"+STR_OWRC] = _owrc;

	_owrc = ($AE<<8) | $34;
	g.dm_rm[?"_DthMt_0F"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_10"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_11"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_12"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_13"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_14"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_15"+STR_OWRC] = _owrc;

	_owrc = ($BA<<8) | $2E;
	g.dm_rm[?"_DthMt_23"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_22"+STR_OWRC] = _owrc;

	_owrc = ($A8<<8) | $1B;
	g.dm_rm[?"_DthMt_21"+STR_OWRC] = _owrc;

	_owrc = ($C1<<8) | $3E;
	g.dm_rm[?"_DthMt_31"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_30"+STR_OWRC] = _owrc;

	_owrc = ($88<<8) | $48;
	g.dm_rm[?"_WestA_05"+STR_OWRC] = _owrc;

	_owrc = ($88<<8) | $43;
	g.dm_rm[?"_WestA_04"+STR_OWRC] = _owrc;

	_owrc = ($BF<<8) | $95;
	g.dm_rm[?"_EastA_74"+STR_OWRC] = _owrc;

	_owrc = ($68<<8) | $B8;
	g.dm_rm[?"_MazIs_00"+STR_OWRC] = _owrc;

	_owrc = ($7C<<8) | $91;
	g.dm_rm[?"_TownA_78"+STR_OWRC] = _owrc;

	_owrc = ($65<<8) | $4E;
	g.dm_rm[?"_WestA_0D"+STR_OWRC] = _owrc;

	_owrc = ($3A<<8) | $2B;
	g.dm_rm[?"_WestA_FA"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_F6"+STR_OWRC] = _owrc;

	_owrc = ($3C<<8) | $2B;
	g.dm_rm[?"_WestA_F4"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_F5"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_F3"+STR_OWRC] = _owrc;
	g.dm_rm[?"_WestA_FC"+STR_OWRC] = _owrc;

	_owrc = ($6E<<8) | $64;
	g.dm_rm[?"_WestA_41"+STR_OWRC] = _owrc;

	_owrc = ($8E<<8) | $99;
	g.dm_rm[?"_EastA_0C"+STR_OWRC] = _owrc;

	_owrc = ($87<<8) | $93;
	g.dm_rm[?"_EastA_0A"+STR_OWRC] = _owrc;

	_owrc = ($A7<<8) | $AA;
	g.dm_rm[?"_EastA_34"+STR_OWRC] = _owrc;

	_owrc = ($36<<8) | $A5;
	g.dm_rm[?"_EastA_50"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_51"+STR_OWRC] = _owrc;

	_owrc = ($7C<<8) | $91;
	g.dm_rm[?"_EastA_53"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_54"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_56"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_57"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_58"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_59"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_5A"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_5C"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_5D"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_5E"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_5F"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_61"+STR_OWRC] = _owrc;

	_owrc = ($15<<8) | $98;
	g.dm_rm[?"_EastA_63"+STR_OWRC] = _owrc;

	_owrc = ($C0<<8) | $D5;
	g.dm_rm[?"_EastA_82"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_83"+STR_OWRC] = _owrc;

	_owrc = ($CC<<8) | $CF;
	g.dm_rm[?"_EastA_89"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_8A"+STR_OWRC] = _owrc;

	_owrc = ($E8<<8) | $B9;
	g.dm_rm[?"_EastA_A2"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_A3"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_A4"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_A5"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_A6"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_A7"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_A8"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_AA"+STR_OWRC] = _owrc;

	_owrc = ($D6<<8) | $C2;
	g.dm_rm[?"_EastA_B0"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_B1"+STR_OWRC] = _owrc;

	_owrc = ($89<<8) | $7E;
	g.dm_rm[?"_EastA_C0"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_C1"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_C2"+STR_OWRC] = _owrc;
	g.dm_rm[?"_EastA_C3"+STR_OWRC] = _owrc;

	_owrc = ($AE<<8) | $34;
	g.dm_rm[?"_DthMt_10"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_11"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_12"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_13"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_14"+STR_OWRC] = _owrc;
	g.dm_rm[?"_DthMt_15"+STR_OWRC] = _owrc;

	_owrc = ($D5<<8) | $4A;
	g.dm_rm[?"_EastA_4F"+STR_OWRC] = _owrc;

	_owrc = ($83<<8) | $9C;
	g.dm_rm[?"_TownA_74"+STR_OWRC] = _owrc;

	_owrc = ($DE<<8) | $B3;
	g.dm_rm[?"_EastA_65"+STR_OWRC] = _owrc;

	_owrc = ($46<<8) | $A3;
	g.dm_rm[?"_EastA_6B"+STR_OWRC] = _owrc;

	_owrc = ($85<<8) | $87;
	g.dm_rm[?"_EastA_71"+STR_OWRC] = _owrc;

	_owrc = ($EB<<8) | $B7;
	g.dm_rm[?"_EastA_A1"+STR_OWRC] = _owrc;

	_owrc = ($6B<<8) | $32;
	g.dm_rm[?"_WestA_5A"+STR_OWRC] = _owrc;

	_owrc = ($7F<<8) | $5A;
	g.dm_rm[?"_WestA_60"+STR_OWRC] = _owrc;

	_owrc = ($67<<8) | $33;
	g.dm_rm[?"_PalcB_16"+STR_OWRC] = _owrc;

	_owrc = ($75<<8) | $18;
	g.dm_rm[?"_WestA_54"+STR_OWRC] = _owrc;












	_count1 = $0100;
	_count2 = $0100;
	ds_grid_resize(dg_tsrc_def, _count1,_count2);
	ds_grid_clear( dg_tsrc_def, $00);
	ds_grid_copy(dg_tsrc,dg_tsrc_def);

	ds_list_clear(_dl1);
	// ROWS $00-$0F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010101010" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000D41010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000D41010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000004"+"0404040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000D4D410"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000040404"+"0404040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000000000000D410"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004040440"+"4040414004000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"2424811010101010" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000000000000F0D4"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004044130"+"4041404040AE0000" + "0000000000000000"+"0000000000000000" + "000000000000B024"+"24248124D5101010" + "1010D52410000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00000000000000F0"+"D410101010100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $10-$1F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004044040"+"4140414040000000" + "0000000000000000"+"0000000000000000" + "0000000000000024"+"2424248110101010" + "1024242400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"F0D5101010100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000040404"+"4040410400000000" + "0000000000000000"+"0000000000000000" + "0000000000000004"+"2424241010101010" + "2424240000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000004000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"F0F0101010100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"AF00000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0404241010101010" + "0000AF0000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000404100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"D4F0101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0004042410101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000040" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00F0101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000040410101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"4140414000004140" + "AE00000000000000"+"0000000000000000" + "0000000000000000"+"B0F0D41000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000040410100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000041"+"7840404041404040" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00D4F01000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000041010100010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000004040"+"4040414040414000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000D40000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000041010000010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"4140404041000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000041010001010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00AF000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0004401000001010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0004040000101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0404400000100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0441400000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0440000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0404000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"4000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $20-$2F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000040000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000004041000000"+"0000004100000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000004040400000"+"0000004040000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000404130300000"+"0000403041400000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000403030303000"+"B100303030400400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000003000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101000000000" + "0004303030303030"+"2030303030400400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010303030040404" + "0404043030304140"+"4040303041040400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000003000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101030"+"3030300404040404" + "0404040441404040"+"4041404004040400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000303000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000001010303030"+"0404040404000000" + "0000040404044041"+"4140040404040000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000303000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010103030303004"+"0404040000000000" + "0000000404040404"+"0404040404040000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000302000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010103030300404"+"0400000000000000" + "0000000000040404"+"0404040404000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000030303020" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "10C0101030040404"+"0000000000000000" + "0000000000000004"+"0404040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000B10000000000"+"0000000000000000" + "0000000000000000"+"0000202030303040" + "4100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $30-$3F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010040400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0041404000000000"+"0000000000000000" + "0000000000000000"+"0041412030302041" + "4000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010101010" + "1000001004040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "4020204041000000"+"0000000000000000" + "0000000000000000"+"4141202030302040" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010000404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "203030204140AE00"+"0000000000000000" + "00000000000000B0"+"4141203030202041" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010100404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "2030303020410000"+"0000000000000000" + "0000000000000000"+"0041203030204140" + "0400000000000000"+"00B1000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0020202000000000"+"0000000000000000" + "0000000000000000"+"0000203030204004" + "0404000000000000"+"0040300000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1010040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000030040404" + "0404000000000000"+"4130302000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1004040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000404" + "0404040000000000"+"4030204000000000" + "0000000000080000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"1010101010101010" + "1004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0004040404000004"+"4120204100000000" + "0000000000080000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"1010101010101010" + "1004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000404040404"+"0440400400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"1010101010101010" + "1004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000040404" + "0800000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0404040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000004242510" + "1010040404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000000000A0A0000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"101010D510101010" + "1004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000024241010" + "2424242424040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0A04040404040A00"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"101010D510101010" + "1010040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000002424101024" + "2424102491240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0404040A04040404"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "1010040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000242410101025" + "1010101024240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000040404" + "0404040404040404"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "1010100400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0024241010101024" + "2424101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000004040404" + "0404040404040404"+"0400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "1010100400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0024101010102424" + "1024241010102400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000004040404" + "0404040404040404"+"0404000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $40-$4F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000001010101010"+"101010D510101010" + "1010100404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"2424101010102510" + "1010242424102400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000A04040404" + "0404414040404004"+"0404040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010D4D410101010" + "1010101004000000"+"0000000000000000" + "0000000000000000"+"0000000000080000" + "0000000000000024"+"2424101024251010" + "1010102424242400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000A04040404" + "4040414040414041"+"4004040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010D41010101010" + "1010101004080000"+"0000000000000000" + "0000000000000000"+"0000000004100404" + "0400000000002424"+"2410102424242424" + "1010101024241000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"000000040A040440" + "4041404030303040"+"4041040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010D41010101010" + "1010101010040000"+"0000000000000000" + "0000000000000004"+"0404040404101024" + "2404040424242410"+"1010102424242424" + "2410102424101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000404044041" + "4040303030303030"+"3030400400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010000010101010" + "1010101010040400"+"0000000000000000" + "2424242424242424"+"2424040410101010" + "2424242424101010"+"1010242424242424" + "1010102424101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000A04044040" + "3030303030303030"+"3030304004000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1000000010101010" + "1010101010100404"+"0000000000002424" + "2424242424242424"+"2424242410101010" + "2424241010101024"+"2424242424242410" + "1010242410101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000004044130" + "3030303030303030"+"3030303040000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010001010101010" + "1010101010101004"+"0800000024242424" + "2424242410101024"+"2424242410101010" + "1024242424242424"+"2424101024242424" + "2410241010101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000004044030" + "3030303030303030"+"3030303041000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"0408082424242424" + "2424242410C01024"+"2424242410101010" + "1010102424242424"+"2410102424242410" + "1024242424101010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000004044040" + "3030303030303030"+"3030303030000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010102424242424" + "2424242424242424"+"2424242424101010" + "1010101024242424"+"1010102424101010" + "1010242424242410"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000040441" + "3030303030303030"+"3030303030000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101025242424" + "2424242424242424"+"2424242424101010" + "1010101010242410"+"1010102424241010" + "1010102410242410"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000040440" + "4130303030303030"+"3030303030000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010001000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"10F0D4F0F0F01010" + "1010101010101010"+"1010101010102424" + "2424242424242424"+"2424242424241010" + "1010101010241010"+"1010101024242410" + "1010101010102424"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000404" + "4030303030303030"+"3030303000000000" + "0000000000000000"+"0000000000000000" + "0000001010101010"+"1010101010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"F0F0E8F0F0F01010" + "1010101010101010"+"1010101010101024" + "2424242424242424"+"2424242424241010" + "1010101010242410"+"1010101010242424" + "1010101010242424"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "4030303030303030"+"3030300000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"F0F0F0F0F0F0F0F0" + "D410101010101010"+"1010101010101010" + "2424242424242424"+"2424242424242410" + "1010101010102424"+"2424101010242424" + "1010101024242424"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0440413030303030"+"4000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"F0F0F0F0F0F0F0F0" + "F0D4101010101010"+"1010101010101010" + "1024242424242424"+"2424242424242410" + "101010101010C010"+"1024241010242424" + "2410101010102424"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0004403030303041"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000010F0F0F0F0F0"+"F0F0F0F0D4D4F0D4" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"F0F0F0F0F0101010" + "F0F0F0F0F0F0F0F0"+"F0F0F0D4F0F01010" + "1010102424242424"+"2424242420202020" + "1010101010101010"+"1010242410242424" + "2424241010102424"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000044130304000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000010F010101010"+"1010101010F01010" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"F010101010101010" + "1030303030303030"+"3030303030F0F0F0" + "F0F0D42424242424"+"2420202020202020" + "1010101010101010"+"1010102424242424" + "2424242424101024"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000040400000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010D4F0F0F0F0"+"F0F0F0F0F0F0F0D4" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $50-$5F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"F010101010101010" + "1030303030303030"+"3030303030303030" + "3030F0D424242420"+"2020202020202020" + "2010101010101010"+"1010101010102424" + "2424242424241024"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010F010101010"+"101010F0101010F0" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"D410101010101010" + "1030303030303030"+"3030303030303030" + "303030F0D4242020"+"2020202020302020" + "2010101010101010"+"1010101010101010" + "1010242424242424"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010F010F0D4F0"+"F0F010F0F0F010F0" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"F010101010101010" + "1030303030303030"+"3030303030303030" + "30303030F0D4F0F0"+"F0F0F0F0F0F0F020" + "2010101010101010"+"1010101010101010" + "1010101024242424"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010F010F01010"+"10F010F010F010F0" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"D510101010101010" + "1010303030303030"+"3030303030303030" + "3030303020202020"+"202020202020F0F0" + "F0F0101010101010"+"1010101010101010" + "1010101010102424"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000400000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010F010D4F0F0"+"10F0F0F010F010F0" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"D410101010101010" + "1010103030303030"+"3030303030303030" + "3030202020202020"+"2020202020202020" + "20F0F0D4F0F03030"+"3030101010101010" + "1010101010101024"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000400000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "101010F0101010F0"+"10F0101010F010F0" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"D510101010101010" + "1010101030303030"+"3030303030303030" + "3020202020202020"+"2020202020202020" + "20F0303030F0F0F0"+"30303030101010C0" + "1010101010101010"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "101010F0F0F0F0F0"+"10D4F0F010D410F0" + "1010101010101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"D510101010101010" + "1010101020202020"+"3030303030303023" + "2020202020202020"+"2020202020202020" + "20F03030303030D4"+"F030303030303030" + "1010101010101010"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"101010F010D410F0" + "1010101010101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"D410101010101010" + "1010102020202020"+"2020303030000000" + "0020202020202020"+"2020202020202020" + "F0D4303030303030"+"D430303030303010" + "1010101010101010"+"2510000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "101010D4F0F0F0F0"+"F0F0F0F010F010F0" + "1010101010101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"F010101010101010" + "1010202020202020"+"2020000000000000" + "0000002020202020"+"20202020202020F0" + "F030303030303030"+"D430303030303010" + "1010101010101024"+"D510100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000024240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "101010F010101010"+"101010F010F010F0" + "1010101010101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"D5D4101010101010" + "1020202020202020"+"2000000000000000" + "0000000020202020"+"202020202020F0F0" + "3030303030303030"+"F030303030301010" + "101010101025D5D5"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000024302400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "101010F0F0F0F0D4"+"F0D410F010F0F0F0" + "F0F0F0F010101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"10D4D51010101010" + "1020202020202020"+"000000000000D4F0" + "D400000000202020"+"2020202020F0F030" + "30303030303030F0"+"D430303030101010" + "1010101010241010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000002430303024"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00101010101010D4"+"101010F010101010" + "101010F010000000"+"0008000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000100000" + "1010101010101010"+"10D4F0D410101010" + "1010202020202020"+"000000080000F0E1" + "F0B2F0F0F0F0F0F0"+"D4F0F0F0F0F03030" + "30303030303030D4"+"3030303010101010" + "1010101025D51010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000002430303024"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000010F0F0D410F0"+"10F0F0F0F0F010D4" + "D4F010F010001010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010100000" + "1010101010101010"+"D4D4D4D510101010" + "1010102020202020"+"000000000000D4F0" + "F000000000202020"+"2020203030303030" + "30303030303030F0"+"3030301010101010" + "10101010D4101010"+"1010101000000000" + "0000000000000000"+"0000000000000410" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000243030303024"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000010F010D410F0"+"1010101010F01010" + "10D410F000001010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101000" + "1010101010101010"+"D4F0D4D410101010" + "1010102020202020"+"2000000000000000" + "0000000000202020"+"2020303030303030" + "303030303030E9F0"+"3030101010101010" + "1010101024D50000"+"0010101010000000" + "0000000000000000"+"0000000000041010" + "1010000004252424"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "0024303030303024"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010D410F010F0"+"F0F0F0F010F0F0F0" + "F0F010F000101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101000" + "1010101010101010"+"D4D4D4D410101010" + "1010101020202020"+"2020000000000000" + "0000000020202020"+"2020303030303030" + "30303030303030D4"+"1010101010101010" + "1010101024F00000"+"0000101010000000" + "0000000000000000"+"0000000000041010" + "1010C01010102424"+"2424000000000000" + "0000000000000000"+"0000000000000000" + "0024303030303024"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "001010F010F01010"+"10F0101010101010" + "10F010F000D4F0D4"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010100000" + "1010101010101010"+"D5D4D4D410101010" + "1010101010102020"+"2020200000000000" + "2020202020202020"+"2030303030303030" + "101010C0101030F0"+"1010101010101010" + "10101010F0D40000"+"0000000000000000" + "0000000000000000"+"0000000024242510" + "1010101010101024"+"2424242400000000" + "0000000000000000"+"0000000000000000" + "2424303030303024"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "101010D410F0F0F0"+"F0F0F0F0F0D4F0F0" + "10F010F0B2F0E0D4"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $60-$6F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000100010" + "1010101010101010"+"10F0D4D410101010" + "1010101010101020"+"2020202020202020" + "2010101010202020"+"3030303030101010" + "1010101010101080"+"1010101010101010" + "1010101010D40000"+"0000000000000000" + "0000000000000000"+"0000002424242410" + "1010101010101024"+"2424303030000000" + "0000000000000000"+"0000000000000024" + "2430303030303030"+"2400000000000000" + "0000000000000000"+"0000000000000000" + "101010F010101010"+"1010101010F000B3" + "0000000000F0D4D4"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"10C0101010101010" + "1010101010101020"+"2020202020201010" + "1010101010101030"+"3030101010101010" + "1010101010C010D4"+"2020101010101010" + "1010101010F0F000"+"0000000000000000" + "0000000000000000"+"0000242524732425" + "1010101010102524"+"3030303030303000" + "0000000000000000"+"0000000000242424" + "3030303030303030"+"2424000000000000" + "0000000000000000"+"0000000000000000" + "101010F0F0F0F0F0"+"F0F0F0F0F0F000F0" + "10F0F0D410101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000010100000"+"0000101000101010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"2020202010101010" + "1010101010101010"+"1010101010101010" + "10101010102020F0"+"2020202020101010" + "101010101010D500"+"0000000000000000" + "0000000000000000"+"0000242424242424" + "2424241010102424"+"3030303030303030" + "3030000000000000"+"0000003030303030" + "3030303030303030"+"3024240000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"10101010000000F0" + "10F0101010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000010" + "0000101010101000"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"C010101010101010" + "1010101010101010"+"1010101010101010" + "10101020202020D4"+"2020202020201010" + "101010101010F0D4"+"0000000000000000" + "0000000000000000"+"0010252424252410" + "1010422510101024"+"2430303030303030" + "3030300000000000"+"0030303030303030" + "3030303330303030"+"3024242400000000" + "0000000000000000"+"0000000000000000" + "0010101010F0F0F0"+"F0F0F0F000F0F0F0" + "10D4F0F010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000001000" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "10202020202020F0"+"2020202020201010" + "10101010101010F0"+"0000000000000000" + "0000000000000000"+"1010102524241010" + "101010D510101024"+"2430303030303030" + "3030303030303030"+"3030303030303030" + "3030303030303030"+"3024242424000000" + "0000000000000000"+"0000000000000000" + "0010101010F01010"+"101010F000F01010" + "101010F010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000010100000" + "1010100000000010"+"1010101010101010" + "1010101010101010"+"101010C010101010" + "1010101010101010"+"1038383810101010" + "1010101010101010"+"101010101010C010" + "10202020202020F0"+"202020202082C010" + "10101010101010D4"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "101010D5D5101024"+"2410303030303030" + "3030303030303030"+"3030303030303030" + "3030303030303030"+"3024242424240000" + "0000000000000000"+"0000000000000000" + "0000101010F0F0F0"+"F0F010F0B2F010F0" + "F0D410F010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000001010101000" + "0000000000001010"+"1010101010101010" + "1010101010101010"+"1010202020201010" + "1010103838383838"+"3838383838381010" + "1010101010101010"+"1010101010102020" + "20202020202020F0"+"2020202020201010" + "1010101010303030"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "10101010D5102425"+"2410303030303030" + "3030302020202030"+"3030303030303030" + "3030303030303030"+"2424242424240000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00B3000000F010F0" + "10F010F010101010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010100000" + "0000001010101010"+"1010101010101010" + "1010101010101010"+"1020202020202030" + "1010103890383838"+"383838D4D4383810" + "1010101010101010"+"1010101020202020" + "20202020202020F0"+"2020202020201010" + "1010101010302330"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "10101010D5242424"+"2410103030303020" + "2020202020202020"+"3030303030303030" + "3030303030303030"+"3030242424240000" + "0000000000000000"+"0000000000000000" + "0000001010F010F0"+"F0F010F0F0F010F0" + "10F010F010101010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010000010" + "1010101010101010"+"1010101010341010" + "1010101010101010"+"1020202038383838" + "10101010383838D4"+"3838383838383838" + "3838101010101010"+"1010202020202020" + "202020202020F0F0"+"2020202020101010" + "1010101010303030"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010252424"+"2410103030302020" + "2020202020202020"+"2020202030303030" + "3030303030303030"+"303030302424B2B2" + "B2B2B2B200000000"+"0000000000B2B2B2" + "B2B2B2F0F0F010F0"+"101010F010F010D4" + "10F010F010101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101000001010" + "1010101010101010"+"1030301010301010" + "1010101010101010"+"2020383838383810" + "1010101010103838"+"3838383838383838" + "383838D4D4D43838"+"3838383838383838" + "383838382020F020"+"2020202020101010" + "1010101010C01010"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010102424"+"1010101010232020" + "2020202020202020"+"2020202020203030" + "3030303030303030"+"3030303024240000" + "0000000000000000"+"0000000000000000" + "0000001010F010F0"+"F0F0F0F010F0F0D4" + "10F010F010101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000100000101010" + "1010101010101010"+"3030101010301010" + "1010101010101010"+"2020383838383810" + "1010101010101038"+"3838383838383938" + "1010101010103838"+"3838383838383838" + "383838383838F020"+"2020202010101010" + "1010101010101010"+"1000000000000000" + "0000000000000000"+"0000000010101010" + "1010101010101010"+"1010101010101020" + "2020202020202020"+"2020303030303030" + "3030303030303030"+"3030303024240000" + "0000000000000000"+"0000000000000000" + "0000001010F01010"+"10F0101010101010" + "10F010F010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000101010" + "1010101010101010"+"3030103030301010" + "1010101010101010"+"2038383838383810" + "10101010101010C0"+"1010101010101010" + "1010101010101010"+"38383838D4D43838" + "383838383838D420"+"2020201010101010" + "1010101010101010"+"1000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"1010101010101010" + "1020202020201010"+"1030303030303030" + "3030303030303030"+"3030302424410000" + "0000000000000000"+"0000000000000000" + "0000001010F0F0F0"+"F0F0F0F0F0F0F0F0" + "F0F0F0D410101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0010000000101010" + "1010101010101010"+"1010103030101010" + "3010101010101010"+"2038383838383838" + "10C0101010101010"+"1010101010101010" + "1010101010101010"+"1038383838383838" + "383838383838F020"+"2010101010101010" + "1010101010101010"+"1000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"1010101010101010" + "1010202020101010"+"1010101010103030" + "3030303010101010"+"1010404141000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"1010000010101010" + "1010101010101010"+"1010103010101030" + "3030101010101010"+"2038383838383838" + "3883381010101010"+"1010101010101010" + "1010101010101010"+"3838383838383839" + "383838383838F010"+"1010101010101010" + "1010101010101010"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"1010101010101010" + "10101010D4101010"+"1010101010101010" + "1010101010101010"+"1004040404000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"1010000010101010" + "1010101030301010"+"3030303010103030" + "3030101010101010"+"2038383838383838" + "3938383838101010"+"1010101010101010" + "1010101010101038"+"3838383838383838" + "381010101010D410"+"1010101010101010" + "1010101025101010"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010202010101010"+"1010101010101010" + "10101010F0D41010"+"1010101010101010" + "1010101010101004"+"0404040400000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"1000000010101010" + "1010103030101010"+"3010101010101030" + "3030301010101010"+"2020383838383838" + "3838383838383810"+"C010101010101010" + "1010101010383838"+"3838383838383810" + "101010101010F010"+"1010101010101010" + "1010242424241000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0020202020201010"+"1010101010101010" + "1010101010F01010"+"1010101010101010" + "1010101010100404"+"0400000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"1000101010101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $70-$7F
	ds_list_add(_dl1,"0000000000000000"+"0000001010101010" + "3010101010101010"+"3030101010101010" + "1030301010101010"+"1020203838383838" + "3838383838383820"+"2010101010101010" + "1010101038383838"+"3838383838381010" + "101010101010D410"+"1010101010101010" + "2424242424240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0020202020202020"+"1010101010101010" + "1010101010C01010"+"1010101010101010" + "1010101004040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000001010101030" + "3030101010101030"+"2020303010101010" + "1010101010101010"+"1020202038383838" + "3838383838383820"+"2020202010101010" + "1010103030383838"+"3838383838381010" + "1010101010F0D410"+"1010101010102424" + "2424242424D40000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000202020202020"+"2020201010101010" + "1010101010101010"+"1010101010101010" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010101030" + "3010101030302020"+"2020202020101010" + "1010101010101010"+"1020203838383838" + "3838383838382020"+"2020303030303030" + "3030303030202038"+"3838383838381010" + "1010101010D41010"+"1010102424242424" + "24242424EA000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000202020202020"+"2020202020101010" + "1010101010101010"+"10101010101010C0" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010101010" + "1010103030200000"+"0000303020201010" + "1010101010101010"+"1020383838383838" + "3838202020202020"+"3030303030303030" + "3030303020202020"+"3838383838381010" + "10101010F0F01010"+"1024242424242424" + "24242424D4000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000202020202020"+"2020202020201010" + "1010101010102020"+"2010101010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000010"+"0000001010101010" + "1010303020000800"+"0000000030202020" + "1010101010101010"+"2020383838382020" + "2020202020202030"+"3030303030303030" + "3030302020202020"+"2038383838381010" + "10D4D4F0F0F080D4"+"F0D4F0F0F0F0F0F0" + "F0F0F0F0F0AE0000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00B0D42020202020"+"2020202020201010" + "1010C01010202020"+"2010101010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000001010"+"0000001010101010" + "1030303020000000"+"3500000008000008" + "0800000800000008"+"0000003838202020" + "2020202020202030"+"3030303030303030" + "F0F0F0F0D4F0F0F0"+"F0F0F0F0D4F0D4D4" + "D4F0101010101010"+"242424D424242424" + "24242424D4000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000202020202020"+"2020202020202020" + "1010F02020202020"+"2020101010101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000001010"+"0000001010101010" + "1030303020200000"+"0000000000101010" + "1010101010101010"+"1010000020202020" + "2020202020202020"+"3030F0F0F0F0F0F0" + "F030303020202020"+"2020202020202010" + "1010101010101010"+"2424242424242424" + "2424242424D40000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0020202020202020"+"D420202020202020" + "20D4F02020202020"+"2024242510101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000001000"+"0000000010101010" + "1010303030202000"+"0000003030101010" + "1010101010101010"+"1010100000202020" + "2020202020202020"+"20F0F03030303030" + "3030303030303030"+"3030202020202010" + "1010101010101024"+"2424242424242424" + "2424242424240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "2020202020202020"+"2020202020202020" + "20F0202020202020"+"2424242424244004" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010101010" + "1010101030302020"+"0820303010101030" + "3030101010101010"+"1010101000000020" + "2020202020202020"+"F0F0202020202020" + "3030303030303030"+"3030303030301010" + "1010101010102424"+"2424242424242424" + "2424242424242400"+"0000000000000000" + "0000000000000000"+"0000000000002020" + "2020202020202020"+"2020202020202020" + "20F0202020202020"+"2424242425244041" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0008000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010101010" + "1010101010101020"+"0020101010303030" + "3010101010101010"+"1010101010100000" + "0000000000000000"+"B300202020202020" + "2030303030303030"+"3030303030301010" + "1010101010102424"+"2424D5D424242424" + "2424242424242424"+"0000000000000000" + "0000000000000000"+"0000000010101020" + "2020202020202020"+"2020F0D420202020" + "20F0202020202024"+"2424242424244040" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0010101010101010" + "1030301010101010"+"0010101010101010" + "1010101010101010"+"1010101010102020" + "2020202020202020"+"F000000000202020" + "2020303030303030"+"3030303030101010" + "1010101010D4D42C"+"2C2C2C2C2C2C2C2E" + "2C2C242424242424"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "2020202030202020"+"2020202020202020" + "20F0202020202424"+"2424242424244004" + "0404000000000000"+"0000000000000000" + "0000000000000404"+"0404000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0010101010101010" + "1010301010101010"+"0800101010101010" + "1010101010101010"+"1010101010101020" + "202020F0F0F0F0F0"+"F020202000000000" + "2020303030303030"+"3030303030101010" + "10101010D4D42C2C"+"2C2C2C2C2C2C2C2C" + "2C2C242424242424"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1020202020202020"+"20202020202020F0" + "F0F0F0F020202424"+"2424242424414004" + "0404040000000000"+"0000000000000000" + "000000000004040A"+"040A040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000101010101010" + "1010103030101010"+"1000000000000000" + "0810101010101010"+"1010101010101010" + "2020F0F020202020"+"2020202020202000" + "0000303000000000"+"0000303010101010" + "101010D4F02C2C2E"+"2C2C2C2C2C2C2C2C" + "2C2C242424242424"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010202020202020"+"20202020202020F0" + "F0E8F0F0F0F0F0F0"+"F0D4F0F0F0D40404" + "0404040404000000"+"0000000000000000" + "0000000004040404"+"94040A0000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000001010101010" + "1010101010101010"+"1010101010101010" + "0000001010101010"+"1010101010101010" + "10F0F02020202020"+"2020202030202020" + "2000000000404041"+"4000003010101010" + "10D4D4F02C2C2C2C"+"2C2C2C2C2C2E2C2C" + "2C2C242424242424"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010102020202020"+"20202020202020F0" + "F0F0F0F020202424"+"2424242440400404" + "0400000000000000"+"0000000000000000" + "00000000000A040A"+"040A040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000101010" + "1010101010101010"+"1010101010101010" + "1010081010101010"+"1010101010101010" + "D4F0202020202020"+"2020202020202020" + "2020B24140404141"+"4040001010101010" + "D4F02C2C2C2C2C2C"+"2CD4D4D42C2C2C2C" + "2C2C242424242400"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010102020303030"+"3020202020202020" + "2020202020202424"+"2424242440040400" + "0000000000000000"+"0000000000000000" + "0000000000000004"+"0A04000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000001010" + "1010101010101010"+"1010101010101010" + "1010000000101010"+"1010101010101010" + "F020202020202020"+"2020202020202020" + "2020004041404030"+"4041001010101024" + "D42C2C2C2C2C2C2C"+"2CD42DD42C2C2C2C" + "2C2C242424000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101030303030"+"3030202020202020" + "2020202020202424"+"2424244041040000" + "0000000000000000"+"0000000000242424" + "2424240000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $80-$8F
	ds_list_add(_dl1,"0000000000000000"+"0000000000001010" + "1010101010101010"+"1010101010101010" + "1010101000000000"+"0000001010101010" + "E820202020202020"+"2020202020202020" + "0000000040404040"+"4000001010102424" + "F02C2E2C2C2C2C2C"+"2CD4D4D42C2C2C2C" + "2C2C242400000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101030303030"+"3030302020202020" + "2020202020202424"+"2424404100000000" + "0000000000000000"+"0000002424242424" + "2424242440000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010000008000000" + "0000000000002020"+"2020202020000000" + "0000000000000000"+"0000000010242424" + "F02C2C2C2C2C2C2C"+"2C2C2C2C2C2C2C2C" + "2C2C240000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1010101010303030"+"3030303030202020" + "2020202020202424"+"2441000000000000" + "0000000000000000"+"0024242410101025" + "2424242424410000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "E8F0D4D4D4000000"+"0000000000000000" + "0000000000000000"+"0000000024242424" + "F02C2C2C2C2C2C2C"+"2C2C2C2C2C2C2D2C" + "2C2C000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1010101010303000"+"0030303030302020" + "D420202020242424"+"2400000000000000" + "0000000000000000"+"2424241010101010" + "1024242424400000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "F0F0F0D42C2C2C2C"+"1010101010252424" + "0000000000000000"+"0000000024242424" + "F02C2C2C2C2C2C2C"+"2E2C2C2C2C2C2C2C" + "2C00000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1010101010303000"+"0000003030302020" + "2020202020242424"+"0000000078000000" + "0000000000000024"+"2510101010101010" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "D5F0F0F02C2C2C2C"+"1010101010102424" + "2400000000000000"+"0000000024242424" + "D42C2C2C2C2C2C2C"+"2C2C2C2C2E2C2C2C" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1010101010103030"+"00000030303020D4" + "2020202020242424"+"0000000000000000" + "0000000000002424"+"1010101010101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000001010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "F0F0F0D52C2D2C10"+"1010101010102425" + "2400000000000000"+"0000000024242424" + "F02C2C2C2E2C2C2C"+"2C2C2C2C2C2C2C00" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1010101010103030"+"3000303030202020" + "2020202020242481"+"2400000000000000" + "0000000000252410"+"1010101010101010" + "1010100400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "10F0F0F02C2C2C10"+"1010101010102424" + "2424000000000000"+"00000024242424F0" + "F02C2C2C2C2C2C2C"+"2C2C2C2C2C2C2C00" + "0000242424000000"+"0000000000000000" + "0000000000000000"+"101010101010C010" + "1010101010101010"+"3000303020202020" + "2020202020101010"+"2524000000000000" + "0000000000241010"+"1010101010101010" + "1010040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1010101010101010"+"1010101010101010" + "1010F0F02C2C1010"+"1010101010252424" + "2424000000000000"+"000024242424F0D4" + "242C2C2C2C2C2C2C"+"2C2C2C2C2C2C0000" + "0024242424240000"+"0000000000000000" + "0000000000000010"+"101010101010D410" + "1010101010101010"+"1000202020202020" + "101010C010101010"+"1024240000000000" + "0000000024241010"+"1010101010101010" + "10040A0000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010101010"+"1010101010101010" + "1010F0D410101010"+"1010101010242424" + "2424B2B2B2B2B2B2"+"B2B2F0F0F0F0D424" + "242C2C2C2E2C2C2C"+"2C2C2C2C2F000000" + "2424101010242400"+"0000000000000000" + "0000000000000010"+"101010101010D410" + "1010101010101010"+"1000202020201010" + "1010101010101010"+"1010242400000000" + "0000002424101010"+"1010101010101010" + "10040A0000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"1010101010101010" + "1010D41010101010"+"1010101010C01010" + "2524000010000000"+"0000242424242424" + "242C2C2C2C2C2C2C"+"04042C2C00000000" + "2491101010242424"+"0000000000000000" + "0000000000000010"+"1010101010D5A0D5" + "1010101010101010"+"1000002020D41010" + "1010101000000810"+"1010102424000000" + "0000242410101010"+"1010101010101010" + "1010040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010000000" + "0000000010101010"+"1010101010101010" + "10F0D41010101010"+"1010101010101010" + "1024000010100000"+"0000002424242424" + "242C2C2C2C2C2C04"+"2F2C040000000000" + "2410101010102424"+"0000000000000000" + "0000000000000010"+"101010101010D410" + "1010101010101010"+"1010000000D90000" + "0000000000000010"+"1010101025242400" + "0024241010101010"+"1010101010101010" + "1010040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000010"+"1000001010101010" + "1010100000000000"+"0000101010101010" + "10D4101010101010"+"1010101010101010" + "1004000010100000"+"0000000024242424" + "242C2C2C2C2C2C2C"+"2C04000000000000" + "2410101010102424"+"0000000000000000" + "0000000000000010"+"10101010C010C010" + "1010101010101010"+"1010101010F0D4F0" + "1010100000001010"+"1010101010102424" + "2524101010101010"+"1010101010101010" + "1010100404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000001010"+"1000001010101010" + "1010101010101000"+"0000000000000000" + "00B3101010101010"+"1010101010101004" + "0404001010101000"+"0000000040242424" + "242C2C2C2C2C042C"+"042F000000000000" + "1010101010102424"+"0000000000000000" + "0000000000000010"+"1010101028101010" + "1010101010101010"+"10101010101010D5" + "1010101000101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "1010100404040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0010001010101010" + "1000000000000000"+"0000000000000000" + "00B3080A04040410"+"1010101010040404" + "0410101010100000"+"0000000004402424" + "242E2C042C2C0404"+"0400000000000000" + "00101010C0242400"+"0000000000000000" + "0000000000000010"+"1010101028281010" + "C0101010C0101010"+"101010101010F0D4" + "1010101000101010"+"1010101010101010" + "1010101010101010"+"1010101010101010" + "1010101004040404"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010000000" + "0000000000001010"+"1010101010101000" + "08B3101010100404"+"0404040404040410" + "1010101010100000"+"0000000000044124" + "2404042C2F04042F"+"0000000000000000" + "0000101010101000"+"0000000000000000" + "0000000000000000"+"1010101010281010" + "2810101028101010"+"10101010F0D5D510" + "1010101000001010"+"10C0101010101010" + "1010101010101010"+"101010C010101010" + "101010C041404004"+"0404000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "10D4101010101010"+"1010101010101010" + "1010101010101000"+"0000000000000440" + "402F040404040400"+"0000000000000000" + "0000001010100000"+"0000000000000000" + "0000000000000000"+"1010101010281010" + "2810101028101010"+"101010D4D5101010" + "1010101010003838"+"3838383810101010" + "1010101010101010"+"1010303030301010" + "1010101010242441"+"4004040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $90-$9F
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "10D4101010101010"+"1010101010101010" + "1010101010101000"+"0000000000000404" + "0404042F04040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010281010" + "2810101028281010"+"101010D410101010" + "1010101010103838"+"3838383838381010" + "1010101030303010"+"1030303030303010" + "1010101010252430"+"3040040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"1010101010101010" + "D4F0101010101010"+"1010101010101010" + "1010101010100000"+"0000000000000004" + "0404040404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010281028" + "2810102828101010"+"101010D510101010" + "1010101039383838"+"3838383838383810" + "1030303030303030"+"3030303030303030" + "1010101025243030"+"3030040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"1010101010101010" + "F010101010101010"+"1010101010101010" + "1010101010000000"+"0000000000000000" + "0404040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010281028" + "1010102810101010"+"101010D510101010" + "1010101038383838"+"3838383838383830" + "3030303030303030"+"3000000030303030" + "1010101024303030"+"3030040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"101010101010F0D4" + "F010101010101010"+"1010101010101010" + "10C0101000000000"+"0000000000000000" + "0404040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010281028" + "1010102810101010"+"101010D4D5101010" + "1010103838383838"+"3838383838383030" + "3030303030303030"+"0000000000303030" + "3010101010303030"+"3030040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"101010101010F0F0" + "F010101010101010"+"10F0F0F0101010F0" + "F0F0101000000000"+"0000000000000000" + "0004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010282828" + "1010282810101010"+"10101010D4D5D510" + "1010103838383838"+"3838383838383030" + "3030303030303000"+"0008000000003030" + "3010101010303030"+"3030040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010101010"+"1010101010C0F0F0" + "F0F0101010101010"+"C0F0F0F01010F0F0" + "F0F0D40000000000"+"0000000000000000" + "0004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010102828" + "1010281010101010"+"101010101010D510" + "1010103838383838"+"3838383838383030" + "3030303030303000"+"0000000000000030" + "3030101010103030"+"3030040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1010101010101010"+"10101010101010D4" + "F0F0C01010101010"+"1010F0F0C010F0F0" + "10F0F00000000000"+"0000000000000000" + "0004000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101028" + "1010281010101010"+"101010101010D5F0" + "1010101038383838"+"3838383830303030" + "3030300000000000"+"0000000000000030" + "3030101010101030"+"3030040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010101010"+"1010101010101000" + "0000101010101010"+"101010101010F0F0" + "F0F0F00000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1010281010101010"+"10101010101010D4" + "F0F0101038383838"+"3838303030303030" + "3030000030303000"+"0000000000000030" + "3030101010101010"+"1010040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010101010"+"1010C01010101010" + "1010101010C0F0F0"+"10101010101010F0" + "F0F0F00000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1010281010101010"+"101010101010102C" + "2CD4F03838383838"+"3830303030303030" + "3000003030303030"+"3030000000003030" + "3030101010101010"+"1010100A04000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010101010" + "1010101010101010"+"1010F0F010101010" + "101010101010F0F0"+"F0C0101010101010" + "1010F00000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1010282810101010"+"1010101010102C2C" + "2C2CF0F0F0383838"+"3030303030300000" + "0000303030303030"+"3030300000303030" + "3030301010101010"+"1010100A04000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"1010F0F0F0101010" + "101010101010F0F0"+"F0101010C0101010" + "1010F00000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101028" + "1010282828101010"+"10101010102E2C2C" + "2C2C2C2CD4F03030"+"3030303030300030" + "3030303030303030"+"3030303030303030" + "3030303010101010"+"1010040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"1010D4F0F0C01010" + "10C0101010101010"+"1010101030301010" + "10F0F00000000000"+"0000000000000000" + "0004000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010102828" + "2810102828101010"+"10101010102C2C2E" + "2E2C2C2C2CD4D430"+"3030303030000030" + "3030303030302424"+"2424303030303030" + "3030303030101010"+"1041040400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"1010101010101010" + "F0F0101010101010"+"1010101030301010" + "F0F0000000000000"+"0000000000000004" + "0404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "2828282828101010"+"1010101010102C2C" + "2C2C2C2C2C2CD4D4"+"D430303030003030" + "3030303024242424"+"2424243030303030" + "3030303030242424"+"2440040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000101010" + "1010101010101010"+"10101010101010C0" + "F0F0F0C010101010"+"C01010D4D4F01010" + "F000000000000000"+"0000000000000440" + "4140040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101010" + "1028282810101010"+"1010101010101010" + "2E2C2C2C2C2C2C2C"+"D4D4F0D4D4B23030" + "3030302424242424"+"2424303030303030" + "3030302424242424"+"2440040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"1010101010C01010" + "F0F0F01010C0F0F0"+"F010C0D4F0F0C010" + "D4F0000000000000"+"0000000000044043" + "4040040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00101010C0101010" + "1010282810101010"+"1010101010101010" + "102C2C2C2C2E2C2C"+"1010101010000030" + "3030302424242424"+"2424242424243030" + "3030242424242424"+"4104040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"10101010F0F01010" + "101010101010F0F0"+"F01010F0F0101010" + "10F0F00000000000"+"0000000000044140" + "4104040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101028101010" + "1028281010101010"+"1010101010101010" + "10102C1010101010"+"1010101010100030" + "3030242424242424"+"2424242424242430" + "3024242424242424"+"4004040000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $A0-$AF
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"101010F0F0F01010" + "1010101010F0F0F0"+"10101010101010C0" + "1010D4F000000000"+"0000000000040441" + "4004000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000002828101010" + "2828101010101010"+"1010281010101010" + "1010D51010101010"+"1010101010100000" + "2424242424242424"+"2424242424242424" + "2424242424242424"+"4104000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "1010101010101010"+"1010F0F0F0F0C010" + "10101010C0F0F0F0"+"101010101010F0F0" + "101010D404000000"+"0000000000000404" + "0404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000282810101028" + "2810101010101010"+"1010282828281010" + "1010281010101010"+"1010101010101000" + "2424242424242424"+"2424242424242424" + "2424242424242424"+"4104000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"1010F0F0F0101010" + "1010C01010101010"+"101010101010F0F0" + "101010D4F0400400"+"0000000000004004" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000282810102828" + "2810102828282828"+"2828282828282828" + "2828282828101010"+"10D5F0F0D5F0F000" + "2424242424242424"+"2424242424242424" + "2424242424242424"+"4000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101010101010"+"1010D4F0F0101010" + "F0F0F0F010101010"+"1010F0F0101010C0" + "10101010D4D40404"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000102828101010" + "2828282828282828"+"2828282828282828" + "2828282828281010"+"10F0D5D4EAD4F000" + "2424242424242424"+"2424242424242424" + "2424242424242440"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010100000" + "1010101010101010"+"101010D4F01010C0" + "F0F010F0F0C01010"+"C0D4F0F010101010" + "1010101010F04004"+"0400004000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101028101010" + "1010101010102828"+"2828282828280000" + "0000282828101010"+"F0F0F0D5D4F0D4B2" + "2424242424242424"+"2424242424242424" + "2424242424242440"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010101000" + "0010101010101010"+"1010101010101010" + "F0F0F0F0F0101010"+"101030101010C010" + "1010101010F04104"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101028281010" + "1010101010101028"+"2828282800000000" + "0000000028101010"+"F0D5F0F0F0F0F000" + "2424242424242424"+"2424242424242424" + "2424242424242400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"001010D4D4101010" + "0000101010101010"+"1010101010101010" + "10F0F0F010101010"+"1010101010F0F010" + "101010F0F0F04104"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101028281010" + "1010101010101010"+"2828280000000000" + "0000000000001010"+"D5F0F0F0F0D40000" + "0024242424242424"+"2424242424242424" + "2424242424242400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000010"+"1010D4F0F0D41010" + "1000000010101010"+"1010101010101010" + "10C010101010F0F0"+"10101010C0F0F0D4" + "1010D5F0F0404004"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010282810" + "1010101010101010"+"1028000000000000" + "0000000000000000"+"D4D4F0F0F0000000" + "0000242424242424"+"2424242410242424" + "2424242424240000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000001010"+"10D4F0C8F0F0C010" + "1000000000101010"+"C0D5D5D410101010" + "101010101010F0F0"+"F0C0101010101010" + "1010F0F0F0400400"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010101010102828" + "2810101010101000"+"0000000000000000" + "0000000000000000"+"0000D4D400000000" + "0000242424242424"+"2424242424242424" + "2424242400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000001010"+"10D4F0F0F0D41010" + "1000001010101010"+"1010D5F0D5C01010" + "1010101010D4F0F0"+"F010101010101010" + "1010F0F041040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "2828280000000000"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000002424242424"+"2424102424241024" + "2424240000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000001010"+"1010D4D4D4101010" + "0000101010101010"+"101010D4F0101010" + "10101010101010C0"+"1010101010C01010" + "1010C01004000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"1010101010101010" + "2828101010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000024242424"+"2424242424242424" + "2424240000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000001010"+"1010101010101000" + "0010101010101010"+"1010101010101010" + "1010101010101010"+"101010F0F0F01010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"1010101010101010" + "0428101010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000002424"+"2424242424242424" + "2424000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010100000" + "0010101010101010"+"1010101010101010" + "1010101010101010"+"1010D4F0F0101010" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010101010101010" + "1004040404101010"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000024"+"2424242424242424" + "2400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010000000" + "1010101010101010"+"1010101010101010" + "D4F0F0F0F0F01010"+"10101010C0101010" + "C010100400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "0404040404042828"+"1010100400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0024242424242424" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010101010" + "F0F080D4C0F0F0F0"+"1010101010101024" + "2424040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101004" + "0410102800000404"+"0428284004040000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010101010" + "10D4F0F0F0F010D4"+"1010C01010102424" + "2404040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101004" + "1010000000000000"+"0004281010400400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $B0-$BF
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010101010" + "1010101010101024"+"2424242424242424" + "2404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010100404" + "1010000000000000"+"0000001010100404" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"10102C2C2C2E2C10" + "1010101010101024"+"2424242424242424" + "2424040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000010104128" + "1000000000000000"+"0000000010104004" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"10102E2C2C2C2CD4" + "D4D4101010242424"+"2424242424242424" + "2424240400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000100428" + "1000000000000010"+"1000000000001040" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010102E2C2C2C10" + "1030303024242424"+"2424240000002424" + "2424242404000008"+"0800000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000428" + "0000000000001010"+"1010000000000040" + "0404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010101010" + "3030303024242424"+"2400000000002430" + "3030242404040000"+"0808000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000404" + "2810000000001010"+"1010100000000000" + "0404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101010" + "3030303030302424"+"2400000024242400" + "0030242404000008"+"0800000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000040" + "0410101000000010"+"1010000000000000" + "0404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101010" + "3030303030302424"+"2424240024242424" + "2424242400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0428101000000000"+"0000000000000000" + "0004000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010103030" + "3030303030303024"+"2424240024242424" + "2424242400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0440281010000000"+"0000000000000000" + "1004000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010103030" + "3030303030303030"+"2424240024242424" + "2424000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0041402828101000"+"0000000000001010" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010101010303030" + "3010101010103030"+"3030300000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000040428414028"+"0000101010101010" + "1010101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000040000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"101010101010C010" + "1010101010303030"+"3030000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000404404028"+"2840401010101028" + "2828281010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000040400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101010" + "1010101010303030"+"0404000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000040404"+"0441404128282828" + "2828282810101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "0010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101010" + "1010101010100404"+"0400000000040404" + "0404000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000004"+"0404404028282828" + "2824251010101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000001010101010" + "1010101010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "1010101010100404"+"0000000004040000" + "0004040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000040404282828" + "2424241010101000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "1010101010100400"+"0000000404048404" + "0400040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000042828" + "2424252410100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000101010101010" + "1010101010101010"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "1010101010040400"+"0000040484040404" + "8400000404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001028" + "2524242425B00000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00B2414040401010" + "C010101010001010"+"1010100400000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $C0-$CF
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010001010101010"+"1010101010101010" + "1010101010040400"+"000004040404D404" + "0404000404040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1024241010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000041404041" + "4110101010101010"+"1010C00404000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010100010101010"+"1010101010101010" + "1010101030040400"+"0000048404D410D4" + "0484000004040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000404140" + "401010C010101010"+"1010101004040000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010100000101010"+"1010101010101010" + "1010101030040404"+"000000040404D404" + "0404000004000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000004040" + "4041103310101010"+"1010101004040400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010001010"+"1010101010101010" + "1010101030040404"+"0000000484040404" + "8400000004000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000040" + "4140403333101010"+"1010101010400400" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010100010"+"1010101010101010" + "1010101030300404"+"0400000004048404" + "0400000004040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000041" + "4040403333101010"+"10101010C0414000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101000"+"1010101010101010" + "1010101030300404"+"0400000000000000" + "0000000404040000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000041" + "4041410000000000"+"0000000000000041" + "4041333333331010"+"1010101010104040" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"0010101010101010" + "1010101010303004"+"0404040000000000" + "0004040404000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000404140404040" + "4040404024101000"+"0000000000000040" + "4033333333101010"+"1010101010101010" + "4100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1000000010101010" + "1010101010303030"+"0404040400000004" + "0404040400000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000041"+"4140404040411010" + "1010242425241010"+"1000000000404040" + "40333333331010C0"+"1010101010101010" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010000000001010" + "1010101010103030"+"3004040404040404" + "0404040000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000004140"+"4010101010333310" + "1010102424242510"+"1010414040414033" + "3333333310101038"+"10101010C0101010" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010000010000000" + "0010101010101010"+"1030040404040404" + "0400000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000041404040"+"1010103333333333" + "3333332424241010"+"1010104140403333" + "3333101010101038"+"1010101024252441" + "1010000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010100000000000" + "0000000000101010"+"1010100404000004" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000040401010"+"3333333333333333" + "3333101024251010"+"101010C010333310" + "1010101010101038"+"1010101024242440" + "4110000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010001010" + "1010101000000000"+"0000000000000000" + "0000000000001010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000004140101010"+"3333333333333333" + "10101010C0101010"+"1010101010101010" + "10C0381010383838"+"1010102524242440" + "4000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010100000" + "1010101010101010"+"1000001010000000" + "0000000010101010"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000004040101033"+"3333333333331010" + "1010101010101010"+"1010C01010101010" + "1010383838381010"+"1010102424244041" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101000" + "0010101010101010"+"1000001010100000" + "0000001010101010"+"1010101010101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000404040413333"+"3333331010101010" + "1010101010101010"+"1010333333101010" + "1010101010101010"+"10C0242424244040" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101010" + "1000001010101010"+"1010000010000000" + "0010101010101010"+"1010101010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000404040103333"+"3333D51010101010" + "1010101010333333"+"1010103333331010" + "1010101010101010"+"1010252424404100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1010101010101010" + "1010000000101010"+"1010100000001010" + "1010101010303030"+"3030301010101010" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0041404010103333"+"3310D5D5D5101010" + "1010101033331033"+"3310103333331010" + "1010101010101010"+"1010104041400000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $D0-$DF
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000101010101010"+"1010101010101010" + "1010101000001010"+"1000000010101010" + "1010101030303030"+"3030303010101010" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0441404110103333"+"33101010D5101010" + "101010C033331010"+"3333101033333310" + "101010C010101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000001010101010"+"1010101010101010" + "1010101010000000"+"0000001010101010" + "1010303030303030"+"3030303030101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0440402410333333"+"33101010D5D5D510" + "1010101010331010"+"3333333333333333" + "1010100410101010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000001010101010"+"1010101010101010" + "1010101010000000"+"0000101010101010" + "1030303030300000"+"0030303030301010" + "1000001030300000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0410412410333333"+"331010101010D510" + "1010101010101000"+"0000000000333333" + "1010100410101010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "1010101000000010"+"0000101010101010" + "3030303030000000"+"0000003030303010" + "0000003030303010"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0410242424333333"+"101010101010D5D5" + "2425241010000000"+"0000000000000010" + "1010040404101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101010101010" + "1010100000001010"+"0000001010101010" + "3030303000000000"+"0000000030303010" + "1000103030303010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0410102424103333"+"1010101010101025" + "2425000000000000"+"0000000000000000" + "0004040404040010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1010100000101010"+"1000001010101010" + "3030303030303020"+"2300000030303010" + "1010101030303838"+"10C0101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0410102524103333"+"1010101010101025" + "2571000000000000"+"0000000000000000" + "0000040404000000"+"0010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1010100000001010"+"1000000010101010" + "3030303030000000"+"0000003030301010" + "1010101030383838"+"3838101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0410101024251033"+"1010101010101025" + "0000000000000000"+"0000000000000000" + "0000000A00000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1010100000001010"+"1000000010101010" + "1030303030300000"+"0000103030101010" + "1010101010383838"+"3838383838000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0410101024242433"+"1010101010101000" + "0000000041040441"+"4010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1010100000001010"+"0000000010101010" + "1010303010103000"+"00301010C0101010" + "1010101010103838"+"3838383838380000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "04101010D524D5D5"+"1010101010100000" + "0000004040101040"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1010000000001010"+"0000000010101010" + "1010101010103030"+"3010101010101010" + "1010101010101010"+"3838383838380000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000004" + "0410101010D5D5D5"+"1010101010100000" + "000000401010C041"+"1033383838100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010101010" + "1000000000000010"+"0000000000101010" + "1010101010303030"+"101010101010C010" + "1010101010101038"+"3838383838380000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0410101010D524D5"+"1010101010101000" + "0000004110101010"+"1033101038101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010101010100000" + "0000000000000000"+"0000000000001010" + "1010101010103010"+"1010101010303010" + "1010101010383838"+"3838383838000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "040410101024D5D5"+"1010101010101000" + "0000004033101010"+"3333103838101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "1010101010101010"+"1010103030301010" + "1010103030301010"+"1038383810000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0404101010D5D5D5"+"D510101010101000" + "0000004133331033"+"3310333310101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0010101010101010"+"1030303010101010" + "1010302020101010"+"1010383010100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00041010101024D5"+"D510101010101000" + "0000001010381033"+"1010331033383810" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004401010"+"2020203030101010" + "2020202010101030"+"3030301010101010" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000404C0101010D5"+"D5D5101010101000" + "0000001038381033"+"1033331033103810" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004414020"+"2020202020202020" + "2020201010103030"+"1010101010101010" + "1000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000041010101025"+"D5D5101010101010" + "0000000010383833"+"1033103333103310" + "0800001000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $E0-$EF
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000044141"+"2020202020202020" + "2020101010303010"+"1010101010101010" + "1010100000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000410101010"+"10D5D5D510C01010" + "0000000010101010"+"3333103310333310" + "1008081010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000044040"+"2020202020202020" + "2010101010301010"+"1010101010101010" + "1010101000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000001010"+"101024D5D5D51010" + "0000000000001010"+"3810333310331010" + "1010000010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000044140"+"4020202020202020" + "1010101010303010"+"1010101010101010" + "10C0101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"1010101025D5D510" + "0000000000000010"+"38383810333310D5" + "1010080010100000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000440"+"4040404010101010" + "1010101010103030"+"1010101010303030" + "3020101010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"000010101010D5D5" + "0000000000000000"+"1010101033102525" + "2510080010000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000A04"+"4141404040411010" + "1010101010101030"+"3030303030303030" + "2020201000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"00000000101010D5" + "D500000000000010"+"00081010D5332510" + "D510000000080800"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00000000000A0000"+"0404044140404004" + "0410101010101010"+"1010303030302020" + "2020000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000001010" + "D5D5000000000000"+"1010001010101010" + "B700000810000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004410000"+"0000000000000000" + "0000003030101010"+"1010103030202020" + "2000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000808"+"0808000000000000" + "D5D5000000000000"+"0000000800101010" + "A9B2A80010001000"+"0800000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000044041"+"0000000000404140" + "2040303030301010"+"1010101030202020" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000008080404"+"0404080000000000" + "D504000000000000"+"0010101008000808" + "0010B31000100800"+"0008080000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000044040"+"4040404041404040" + "4040412020303010"+"1010101010202020" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000008040404"+"0404040800000000" + "0404000000000000"+"0000101010000000" + "0800A9B2A8101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000441"+"4041414140404040" + "4140202020202010"+"1010101010202000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000804040A0A"+"0A04040800000008" + "0404000000000000"+"0000000010000810" + "10000010B7D41010"+"1008000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000004"+"0440414040404140" + "4004042020201010"+"1010101020201000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00000008040A4140"+"410A040408080804" + "0400000000000000"+"0000000000000010" + "1000101010D4A0D4"+"1000001000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0004040404040404" + "0404041010101010"+"1010100404101000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "00000808040A4081"+"40400A0404040404" + "0400000000000000"+"0000000000000000" + "101008001010D410"+"1008000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000404" + "0404101010101010"+"1004040410100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000080804040A41"+"400A040404040404" + "0800000000000000"+"0000000000000000" + "0800000000101010"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0004041010100404"+"0404101010100000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "000000080804040A"+"0A04040404040800" + "0000000000000000"+"0000000000000000" + "0000000810080008"+"0010000800000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000040404040404"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000080404"+"0404040408080000" + "0000000000000000"+"0000000000000000" + "0000000008000800"+"1010100000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000004041010"+"1010101010000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000808"+"0808080808000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	// ROWS $F0-$FF
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000010101010"+"1010101000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000101010"+"1010000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000010"+"1000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");
	ds_list_add(_dl1,"0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000");


	for(_j=0; _j<_count2; _j++) // Each row of tiles
	{
	    _str1 = _dl1[|_j];
	    for(_i=0; _i<_count1; _i++) // Each clm of tiles
	    {
	        _str2 = string_copy(_str1,(_i<<1)+1,2);
	        dg_tsrc_def[#_i,_j] = str_hex(_str2);
	    }
	}












	_count1 = $0100;
	_count2 = $0100;
	ds_grid_resize(dg_solid_def, _count1,_count2);
	ds_grid_clear( dg_solid_def,0);
	ds_grid_copy(dg_solid,dg_solid_def);

	ds_list_clear(_dl1);
	// ROWS $00-$0F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000010000010101" + "0101000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $10-$1F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000101010101" + "0100000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000101010101" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000101010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000001010000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $20-$2F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000010101"+"0101010001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000101"+"0101010000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000101"+"0101000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000001"+"0001000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000010101" + "0101000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000101010101" + "0101010000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0001010101010101" + "0101010101000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010100000000"+"0101010101010101" + "0101010101010100"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $30-$3F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000001010101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000001"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0001010101010101"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000001010101"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0000010101010101"+"0100000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000010101010101"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000101010101"+"0000000001010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000010100"+"0000000001010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000001" + "0101000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010001010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000101" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010001010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010100" + "0000010000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010100" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000101010100" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100010101010000" + "0100000101010001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $40-$4F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010001010101" + "0101010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010001" + "0101000000010001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010101" + "0101010100010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0101010101010100"+"0000010100000101" + "0101010000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010100010000" + "0001010101010000"+"0001010000000000" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010101000101"+"0101010101010101" + "0101010101010100"+"0000000000010100" + "0000000000000001"+"0101010000000000" + "0001010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0101010101010101" + "0000000000000000"+"0000000001010101" + "0000000000010101"+"0101000000000000" + "0101010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0101010101010000" + "0000000000000000"+"0000000001010101" + "0000000101010100"+"0000000000000001" + "0101000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0001010100000000" + "0000000001010100"+"0000000001010101" + "0100000000000000"+"0000010100000000" + "0001000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000000000000" + "0000000001000100"+"0000000001010101" + "0101010000000000"+"0001010000000001" + "0100000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000000" + "0000000000000000"+"0000000000010101" + "0101010100000000"+"0101010000010101" + "0101000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000010101" + "0101010101000001"+"0101010000000101" + "0101010001000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0000000000000101" + "0101010101000101"+"0101010100000001" + "0101010101010000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000000000101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0000000000000101" + "0101010101000001"+"0101010101000000" + "0101010101000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0000000000000000"+"0000000000000001" + "0101010101010000"+"0000010101000000" + "0101010100000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000000000000" + "0000010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000001" + "0101010101010001"+"0100000101000000" + "0001010101010000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000000010101" + "0000000000000000"+"0000000000000101" + "0101010000000000"+"0000000000000000" + "0101010101010101"+"0101000001000000" + "0000000101010000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010101000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0101010101010101"+"0101010000000000" + "0000000000010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $50-$5F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010000" + "0000000000000100"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010001010100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000000"+"0000010000000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010100000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000101"+"0100010001000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000010101010101"+"0101010101010101" + "0101010101010000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000000"+"0100000001000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000010101010101" + "0101010101010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010100"+"0100010101000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000001010100" + "0101010101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0100000001000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0101010101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010001000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010000000000"+"0000000000010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000001000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101000000000000"+"0000010101010101" + "0101010000000000"+"0000000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010001000100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101010101" + "0100000000000000"+"0001010101010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000010001000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000101010101" + "0100000000000000"+"0101010101010000" + "0001010101000000"+"0000000000000000" + "0000000000000000"+"0000000000010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0101010001010101" + "0101010001010101"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000001010101" + "0101000000000000"+"0101010001010000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000001010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000100"+"0100000000000100" + "0000010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000001010101" + "0101010000000000"+"0101010101010000" + "0001010101000000"+"0000000000000000" + "0000000000000000"+"0000000101010101" + "0101010100010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000100"+"0101010101000101" + "0100010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000001010101" + "0101010000000000"+"0001010101010101" + "0101010101000000"+"0000000000000000" + "0000000000000000"+"0000010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0101010100000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000100"+"0000000001000000" + "0000010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000001010101" + "0101010100000000"+"0000010101010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0101000101010000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000101"+"0100010101010101" + "0100010001000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000001010101" + "0101010101010000"+"0000000101010101" + "0000000000000000"+"0000000000000000" + "0101010001010000"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010100000001" + "0101010101010100"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010001000000"+"0000000000000000" + "0100010000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $60-$6F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000001010101" + "0101010101010100"+"0000000000000000" + "0001010101000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010000000001" + "0101010101010100"+"0000000000010101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010101000100" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100010101010101" + "0101010101010100"+"0000000000000101" + "0101010101010100"+"0000010101010101" + "0101010101000100"+"0000010101010101" + "0101010101000001"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0101010101010000"+"0000000000000001" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000100" + "0100000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000010101" + "0101010101010001"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0000000101010000"+"0000000000000000" + "0000010101010101"+"0101010000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000101" + "0101010101010000"+"0101010101010101" + "0101010101010101"+"0101000000000001" + "0101000001010100"+"0000000000000000" + "0000000101010101"+"0100000000000000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000001000000" + "0100000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000101" + "0101010101010100"+"0101010101010101" + "0101010101010101"+"0101010000000101" + "0101010001010100"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0101010001000101" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010001010101" + "0101010101010101"+"0100000001010101" + "0101010101010101"+"0101010101010001" + "0100000000000000"+"0000000000010001" + "0101010101010100"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000010100"+"0001000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000010000000100" + "0000010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000101" + "0101010000000000"+"0000000000000101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0000000000000101" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100010000"+"0001000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100010101000100" + "0100010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0101010000000000"+"0000000000000001" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000000101" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0001010000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101000100"+"0000010000000100" + "0100010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0101010101010101"+"0100000000000000" + "0101010100000000"+"0000000000000000" + "0000010101010101"+"0101000000000000" + "0000000000000000"+"0000000000010101" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0001010000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000001010101"+"0101010101000000" + "0000000000000100"+"0101010001000100" + "0100010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000101000101" + "0101010101010101"+"0000000000000001" + "0101010101010000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000010101" + "0101010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0101010101000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101000100"+"0000000001000000" + "0100010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010101000101" + "0101010101010101"+"0000000000000001" + "0101010101010100"+"0000000000000000" + "0101010101010000"+"0000000000000000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0100010101010101" + "0100010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0000010000000101" + "0101010101010101"+"0000000000000001" + "0101010101010100"+"0101010101010101" + "0101010101010101"+"0000000000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000101"+"0100000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010101" + "0001010101010101"+"0000000000000000" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000010101"+"0101010101010000" + "0000000001010101"+"0101000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010001010100" + "0000010101010101"+"0000000000000000" + "0001000101010101"+"0101010101010101" + "0101010101010101"+"0000000000000000" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100010101"+"0101010101010101" + "0101010101010101"+"0100000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010100000101"+"0000000001010000" + "0000010101010101"+"0000000000000000" + "0000000000010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0001010101010001"+"0101010101010101" + "0101010100010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010100"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010000010101"+"0001010101010100" + "0000000101010101"+"0000000000000000" + "0000000000000001"+"0001010101010101" + "0101010101000000"+"0000000000000001" + "0101010101010001"+"0101010101010101" + "0101000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000101"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010101010000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $70-$7F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0001010101010101"+"0000010101010101" + "0100000101010101"+"0100000000000000" + "0000000000000000"+"0001010101010101" + "0101010100000000"+"0000000000000101" + "0101010101010001"+"0101010101010101" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0101010101010101" + "0101010101000101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010100" + "0000010101010100"+"0000000001010101" + "0101010101010101"+"0100000000000000" + "0000000000000000"+"0000000001010101" + "0101010000000000"+"0000000000000101" + "0101010101000001"+"0101010101010000" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010100" + "0001010100000000"+"0000000000010101" + "0101010101010101"+"0100000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101000101"+"0101010000000000" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010000000101"+"0101000000000101" + "0101010101010101"+"0100000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010100000101"+"0100000000000000" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000000000101" + "0101010101010000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101000000010001"+"0101010100000000" + "0101010101010101"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0100000000000100"+"0000000000000000" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000101" + "0101000101000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0100000000010101"+"0001010100010100" + "0001010001010100"+"0101010000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000010101010101"+"0000000000000000" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000000000000" + "0101000000000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0100000000000101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010101"+"0000000000000000" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101000000000001"+"0101010000010101" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010100"+"0000000000000000" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000001010100" + "0000010101010101"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010000"+"0000000000000000" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010100"+"0100010101000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0001000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0001010101000000" + "0000000000000000"+"0000000000010101" + "0101010101000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000010101010101"+"0101010101010101" + "0101010101010000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101000101010101"+"0001010101010101" + "0101010101010101"+"0101010101010100" + "0000000000000000"+"0000000001010101" + "0000000000000000"+"0000000000010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010000010101"+"0101010101010101" + "0001010101010101"+"0101010101010101" + "0000000000000000"+"0000000000000001" + "0101000001010101"+"0101000001010101" + "0101010000000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000010101"+"0101010101010101" + "0101010100000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000000"+"0000000000000000" + "0001010101000000"+"0001010001010101" + "0100000000000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000000" + "0000000000000000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000010000000000"+"0000010101010100" + "0000000000000000"+"0000000000000000" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0000000000000101" + "0101010101010101"+"0101010101000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $80-$8F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0101010100000000"+"0001010101010000" + "0000000000000000"+"0000000000000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0000000001010101" + "0101010101010101"+"0101010000000000" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100010101" + "0101010101010000"+"0000000000010101" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0000000000000000"+"0000010101010101" + "0101010101010101"+"0100000001010100" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0100000000000000" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0000000101010101" + "0100000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0101010101000000" + "0101010101010101"+"0101010100000000" + "0000000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0101010000000000" + "0000000000000000"+"0101010100010101" + "0101010101010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0101010101010000" + "0001010101010101"+"0101010100000000" + "0000000000000000"+"0000000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0101010000000000" + "0000000000000000"+"0101010101010101" + "0101010101010000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000001"+"0101010101010000" + "0001010101010101"+"0101010100000000" + "0000000000000000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0001000000000000" + "0000000000000001"+"0001010101010101" + "0101010101000001"+"0101010101010101" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000001"+"0101010101010000" + "0000010101010101"+"0101010000000000" + "0000000000000000"+"0000000000000001" + "0101000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0001000000000000" + "0000000000010101"+"0000010101010101" + "0101010101000101"+"0101010101010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000101"+"0101010101000000" + "0000010101010101"+"0101000000000000" + "0000000000000000"+"0000000000000101" + "0100000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101000000000000" + "0101010001010101"+"0100000101010101" + "0101010100000101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010101"+"0101010101000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000010101" + "0000010101000001"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101000000000101" + "0101010101010101"+"0101000001010101" + "0101010000010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000101010101"+"0101010101000101" + "0000010101010101"+"0101000000000000" + "0000000000000000"+"0000000001010101" + "0000010101000000"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0101010101010101"+"0101010000000101" + "0101010101010001"+"0101010000010101" + "0101000001010101"+"0101010101010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0100010101010101"+"0101010000000000" + "0000000000000000"+"0000000101010101" + "0001010101010000"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000001" + "0100000101010101"+"0101010101010101" + "0101000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0100010101010101"+"0101010100000000" + "0000000000000000"+"0000010101010101" + "0001010101010000"+"0101010101010101" + "0101010101010101"+"0101010100010001" + "0101010101010101"+"0101010101000000" + "0101010101010101"+"0101010101010000" + "0000010101010101"+"0101010101010101" + "0101010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010101010101"+"0101010101010100" + "0000010101010101"+"0101010100000000" + "0000000000000000"+"0000010101010101" + "0101010101010000"+"0101010101010101" + "0101010101010101"+"0101010100010101" + "0101010101010101"+"0101010101010100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010000000001"+"0101010101000000" + "0001010101010101"+"0101010100000000" + "0000000000000000"+"0001010101010101" + "0101010100000001"+"0101010101010101" + "0101010101010101"+"0101010100000101" + "0001010100010101"+"0101010101010000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010101010000"+"0000000000000001" + "0101010101010101"+"0101010101000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0001010100010101"+"0101010100000001" + "0101010101010101"+"0100010101010101" + "0101010101010101"+"0101010001010101" + "0101010000000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0001010100010101"+"0101010000010101" + "0101010101010000"+"0000000001010101" + "0101010101010101"+"0101000000000101" + "0101010101000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $90-$9F
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0001010100000101"+"0101010001010101" + "0101010101010000"+"0000000000000101" + "0101010100000001"+"0100000000000001" + "0101010101000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000100" + "0001010000010101"+"0101010001010101" + "0101010100000000"+"0000000000000001" + "0100000000000000"+"0000000000000000" + "0101010100000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000100" + "0101010001010101"+"0101010001010101" + "0101010100000000"+"0000000000000000" + "0000000000000000"+"0001010100000000" + "0101010100000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0001010101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000100" + "0101010001010101"+"0101010000010101" + "0101010000000000"+"0000000000000000" + "0000000000000000"+"0101010101000000" + "0001010101000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0001010101010101"+"0100000001010100" + "0000010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0101000001010101"+"0101010100000001" + "0101010000000000"+"0000000000000000" + "0000000000000001"+"0100010101010000" + "0001010101000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0000010101010101"+"0000000001010000" + "0000000101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0101000101010101"+"0101010101010001" + "0101010000000000"+"0000000000000000" + "0000000000000001"+"0101010101010100" + "0000010101010000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000101010101"+"0101000000010000" + "0100000101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0101000101010101"+"0101010101010000" + "0101010100000000"+"0000000000000000" + "0000000101010101"+"0101010101010100" + "0000010101010100"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000101010101"+"0101010101010100" + "0000010100000000"+"0000000000000000" + "0000010100000001"+"0101010101010100" + "0000010101010101"+"0101000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000101010101" + "0101010101000000"+"0101010101010100" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000101010101"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0001010000000000"+"0000010101010000" + "0000010101010101"+"0101010000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010101" + "0101010101010000"+"0000010101010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010101"+"0101010101010000" + "0000000000000000"+"0000000000000101" + "0101000000000000"+"0000000101000000" + "0000000101010101"+"0101010000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000010101" + "0101010101010000"+"0001010100010101" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0101000000010101"+"0101010101000000" + "0000000000000000"+"0000000000000100" + "0000000000000000"+"0000000000000000" + "0000000001010101"+"0101000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000101" + "0100010101010101"+"0101010100000101" + "0100000101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0001010000010101"+"0101010101000000" + "0000000000000000"+"0000000000010100" + "0000000000000000"+"0000000000000000" + "0000000000010101"+"0100000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101010101"+"0101010100000101" + "0000010101010101"+"0101010101010100" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000010101"+"0101010101010000" + "0000000000000000"+"0000000000010000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000001010101"+"0001010000000101" + "0001010101010101"+"0101010101010000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000001010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0000000101000000"+"0001000000000001" + "0000010101010101"+"0101010101000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100010101" + "0101000001010101"+"0101010101010101" + "0100000000000000"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000101" + "0101010101010000"+"0001010000010101" + "0100000101010101"+"0101010101000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100010101" + "0100000101010101"+"0101010101010101" + "0101000101010101"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $A0-$AF
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000101" + "0101010101000000"+"0101010101010100" + "0101000001010101"+"0101010101000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010101" + "0000010101010101"+"0101000101010101" + "0101000101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000001" + "0101010100000000"+"0101010101010000" + "0101010000010101"+"0101010101010000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010100" + "0001010101010101"+"0101000000000101" + "0101000101010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000010101" + "0101000101010101"+"0101010101010000" + "0101010000000001"+"0101010101010000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010000" + "0001010000000000"+"0000000000000000" + "0000000000010101"+"0100000000000001" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000010101" + "0000000001010101"+"0101000001010100" + "0101010100000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010101" + "0000000000000000"+"0000000000000000" + "0000000000000101"+"0100000000000001" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010100" + "0000010000000101"+"0000000001010101" + "0101010101000000"+"0001010001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100010101" + "0101010101010000"+"0000000000000101" + "0101000000010101"+"0000000000000000" + "0000000000000000"+"0000000000000000" + "0000000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000010101"+"0101000101010001" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000101" + "0101010101010100"+"0000000001010101" + "0101010100010101"+"0000000000000001" + "0000000000000000"+"0000000000000000" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010101" + "0101010101010101"+"0101010101010101" + "0100000001010101"+"0101010101000001" + "0101010000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000101" + "0101010101010101"+"0000000101010101" + "0101010101010101"+"0000000000000101" + "0100000000000000"+"0000000000000000" + "0000000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000101" + "0101010101010101"+"0101010101010101" + "0100010101010000"+"0101010100000000" + "0101000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000001" + "0101010101010101"+"0100010101010101" + "0101010101010101"+"0000000000010101" + "0101000000000000"+"0000000001000000" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000001" + "0101010101010101"+"0000000001010101" + "0101010101010000"+"0000010101010101" + "0101000000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101000001010101" + "0101000000000000"+"0000000000000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000101" + "0101010101010101"+"0101000000000101" + "0101010101000000"+"0001010101010101" + "0101000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000010000000100" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000010101" + "0101010101010101"+"0101010000010101" + "0101010101010100"+"0101010101000101" + "0101000100010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000000000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000101"+"0101010100010101" + "0001010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0101010001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010000000000"+"0101010101010100" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010001010000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000100"+"0101000101010000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0101010101010101"+"0100000101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $B0-$BF
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0101010101010101"+"0101010101010000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000001" + "0101010101010100"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0101010101010101"+"0101010101010000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0000010101000000"+"0000000000000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0101010101010101"+"0101010101010100" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000001" + "0100000000000000"+"0000000101010000" + "0000000000010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0101010101010101"+"0101010101010100" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0001010101010000" + "0000000000000101"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0001010101010101"+"0101010101010101" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0001010100000001" + "0100000000010100"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010101010101"+"0101010101010101" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0000000100000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000010101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0000000100000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000101010101"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000000000000000"+"0000000100000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0001010101010000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010001" + "0101010101000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000101010100" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0001010101000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0101010100000101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010001"+"0101010000000100" + "0001000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0101000001000000" + "0101010000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000101" + "0001010101010101"+"0101010001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $C0-$CF
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000001"+"0101000000000000" + "0000010000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000000" + "0001010101010101"+"0101000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000001"+"0101000100000100" + "0001010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101000000" + "0001010001010101"+"0101010100000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0101010000000000" + "0000010100010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000010001010101"+"0101010100000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0101010001000000" + "0101010100010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000010101"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0001010100000100" + "0001010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000000010101"+"0101010100000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0001010101010101" + "0101010000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0000000101010101"+"0101010101010100" + "0000000000000101"+"0101010101010000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000101010101" + "0100000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000000" + "0000000000010101"+"0101010101010100" + "0000000000010101"+"0101010101010101" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000001010100" + "0000000001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000101" + "0101000000000101"+"0101010101000000" + "0000000000010100"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0001010101000001" + "0101010000000001"+"0101000000000000" + "0000000001010100"+"0101010100010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0101010000000000" + "0000000000000101"+"0101010000000000" + "0000010101010100"+"0101010100000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000010100" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0000000000000000" + "0000010100000101"+"0101010001000001" + "0101010101010100"+"0101010100000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000010101"+"0000000000000000" + "0101010100010101"+"0101010101010101" + "0100000101000000"+"0101010000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000010100"+"0000000000000101" + "0101010101010101"+"0101000101010101" + "0101000000000101"+"0101010000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000101010101" + "0101010101010101"+"0101000000010101" + "0101010101010101"+"0100000000000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000010000"+"0000000101010101" + "0101010101000000"+"0101010000000101" + "0101010101010101"+"0101000000000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000001010000"+"0001000000010101" + "0101010100000100"+"0001010000000101" + "0101010101010101"+"0101010000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $D0-$DF
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000001010000"+"0001010100010101" + "0101010000000101"+"0000010100000001" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000001000000"+"0001010100000001" + "0101010101000101"+"0000000000000000" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000101"+"0100000000000101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0001000001000000"+"0001010101010001" + "0101010101010101"+"0101010101000000" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000010101"+"0101010000000001" + "0101010000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001000000000000"+"0101010101010000" + "0000000101010101"+"0101010101010101" + "0101000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000001010101"+"0101010100000001" + "0101010000000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010000010000"+"0101010101010100" + "0000010101010101"+"0101010101010101" + "0100000000000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000000000"+"0001010100000001" + "0101010100000000"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010000010000"+"0101010101010100" + "0000010101010101"+"0101010101010101" + "0101000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000000000010101"+"0101010000000101" + "0101010100000000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010100000100"+"0101010101010100" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000000000101"+"0101010000010101" + "0101010101000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010100000000"+"0101010101010101" + "0101010100000000"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000001010001"+"0100010100010101" + "0101010101010000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010100000000"+"0101010101010101" + "0101010000010100"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0001010101010101" + "0101010101010101"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010101000000"+"0101010101010101" + "0101010001010000"+"0100000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0101010101010001" + "0101010101010100"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0001010101000000"+"0101010101010101" + "0101010001010101"+"0100010100010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010001"+"0101010101000001" + "0101010101000000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101000000"+"0101010101010101" + "0101010000010101"+"0000010000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010000000101" + "0101010000000101"+"0100000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101000000"+"0001010101010101" + "0101010000000100"+"0001000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000001010101" + "0101000000010101"+"0101000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100010101010000"+"0001010101010101" + "0101010101000100"+"0101000100000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0000000000010101" + "0000000001010100"+"0000000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000001010100"+"0000010101010101" + "0101010100000100"+"0100000100010001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000000" + "0000000101010000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000101010100"+"0000010101010101" + "0101010101000000"+"0100010000010001" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $E0-$EF
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0000010101000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010001010101"+"0100000001000101" + "0101010101010101"+"0000010001000001" + "0100000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0001010101000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101000000000101" + "0101010101010101"+"0001000001000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0101010101000001"+"0101010101010101" + "0100010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010100000001" + "0101010101010101"+"0000000100000100" + "0101000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000001010101" + "0101010101010000"+"0101010101000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0101010101010101"+"0101010100010000" + "0001000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000000000101" + "0101010101010100"+"0000000000000000" + "0000000101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010100" + "0001010101010101"+"0100010100000001" + "0001010101000001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000101"+"0000000000000000" + "0001010101010101"+"0101000000000000" + "0000010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0000010101010101"+"0101010101010101" + "0001010001010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010000010101"+"0101010000000000" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000010101010101" + "0000010101010101"+"0101010001010101" + "0000000101010101"+"0001010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0101010101000000" + "0000000000000101"+"0101010100000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000101010101" + "0000010101010101"+"0101010100010000" + "0101000101010001"+"0100000101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000000" + "0000000000000001"+"0101010101000000" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000000"+"0000000001010101" + "0000010101010101"+"0101010101010101" + "0001000000010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000000000000" + "0000000000000001"+"0101010101000001" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000001010100" + "0000010101010101"+"0101010101010001" + "0101010100000101"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010100"+"0000000000000000" + "0000000000000101"+"0101010100000101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101010101000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0100000000000000" + "0000000101010101"+"0101010000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000001"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0101000101010001"+"0100010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010000" + "0000010101010101"+"0100000001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0000000000000000" + "0001010101010101"+"0101010101010101" + "0001010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0100000101010000"+"0000010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010000000000"+"0000000000000001" + "0101010101010101"+"0101010101010101" + "0101010001000100"+"0101010001010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101000000000000"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101000000"+"0000000000000101" + "0101010101010101"+"0101010101010101" + "0101010100010001"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010100000101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010000"+"0000000000010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	// ROWS $F0-$FF
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");
	ds_list_add(_dl1,"0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101" + "0101010101010101"+"0101010101010101");


	for(_j=0; _j<_count2; _j++) // Each row of tiles
	{
	    _str1 = _dl1[|_j];
	    for(_i=0; _i<_count1; _i++) // Each clm of tiles
	    {
	        _str2 = string_copy(_str1,(_i<<1)+1,2);
	        dg_solid_def[#_i,_j] = str_hex(_str2);
	    }
	}












	_count1 = $0100;
	_count2 = $0100;
	ds_grid_resize(dg_AreaNames, _count1,_count2);
	ds_grid_clear( dg_AreaNames,MapAreaName_DEF);

	ds_list_clear(_dl1);
	// ROWS $00-$0F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $10-$1F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1B1B1B1B"+"1B1B1B1B1B1B1B1B" + "1B1BFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $20-$2F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $30-$3F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF06060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "060606FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF05050505" + "050505FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF0505050505" + "050505050505FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF050505050505" + "05050505050505FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF05050505050505" + "05050505050505FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"0505050505050505" + "05050505050505FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF05"+"0505050505050505" + "0505050505050505"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF05"+"0505050505050505" + "0505050505050505"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $40-$4F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0505"+"0505050505050505" + "0505050505050505"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF050505"+"0505050505050505" + "0505050505050505"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF0505" + "0505050505050505"+"0505050505050505" + "0505050505050505"+"05FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF0505" + "0505050505050505"+"0505050505050505" + "0505050505050505"+"05FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "0404040404040404"+"0404FFFFFFFF0505" + "0505050505050505"+"0505050505050505" + "0505050505050505"+"05FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFF0404" + "0404040404040404"+"04040404FFFF0505" + "0505050505050505"+"0505050505050505" + "0505050505050505"+"05FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFF04040404" + "04040404FFFFFF04"+"04040404FFFFFF05" + "0505050505050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFF0404040404" + "04040404FFFFFF04"+"04040404FFFFFFFF" + "0505050505050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFF0404040404" + "0404040404040404"+"0404040404FFFFFF" + "FFFF050505050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFF04040404" + "0404040404040404"+"0404040404FFFFFF" + "FFFFFF0505050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFF0404" + "0404040404040404"+"040404040404FFFF" + "FFFFFF050505FF05"+"0505050505050505" + "05FF050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFF04" + "0404040404040404"+"040404040404FFFF" + "FFFFFFFF05050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "0404040404040404"+"04040404040404FF" + "FFFFFFFF05050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF04040404040404"+"04040404040404FF" + "FFFFFFFFFF050505"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF0404040404"+"0404040400000000" + "FFFFFFFFFFFFFFFF"+"0505050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0601010101010101"+"0101010101FFFFFF" + "FFFFFF0404040404"+"0400000000000000" + "FFFFFFFFFFFFFFFF"+"FF05050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $50-$5F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0601010101010101"+"0101010101010101" + "0101FFFF04040400"+"0000000000000000" + "00FFFFFFFFFFFFFF"+"FFFF050505050505" + "0505050505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0601010101010101"+"0101010101010101" + "010101FFFF040000"+"0000000000000000" + "00FFFFFFFFFFFFFF"+"FFFFFFFFFF050505" + "0505050505050505"+"05FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0601010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000000" + "00FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF05050505050505"+"05FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606010101010101"+"0101010101010101" + "0101010100000000"+"0000000000000000" + "0000FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF0505050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606060101010101"+"0101010101010101" + "0101000000000000"+"0000000000000000" + "0000030303030303"+"0303FFFFFFFFFFFF" + "FFFFFFFFFF050505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606060601010101"+"0101010101010101" + "0000000000000000"+"0000000000000000" + "0000030303030303"+"03030303FFFFFFFF" + "FFFFFFFFFFFF0505"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606060600000000"+"0101010101010100" + "0000000000000000"+"0000000000000000" + "0000030303030303"+"0303030303030303" + "FFFFFFFFFFFFFF05"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606060000000000"+"0000010101020202" + "0200000000000000"+"0000000000000000" + "0000030303030303"+"03030303030303FF" + "FFFFFFFFFFFFFF05"+"0505FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0606000000000000"+"0000020202020202" + "0202020000000000"+"0000000000000000" + "0003030303030303"+"03030303030303FF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF141414" + "1414FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0600000000000000"+"0002020202020202" + "0202020200000000"+"0000000000000000" + "0303030303030303"+"030303030303FFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF14141414" + "141414FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF13FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "0600000000000000"+"020202020202FFFF" + "FF02020202000000"+"0000000000000003" + "0303030303030303"+"0303030303FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1414141414" + "14141414FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF131313FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FF000000000000"+"020202020202FFFF" + "FFFFFFFFFF000000"+"0000000000000303" + "0303030303030303"+"03030303FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1414141414" + "1414141414FFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF131313FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFF0000000000"+"020202020202FFFF" + "FF02020202000000"+"0000000303030303" + "0303030303030303"+"030303FFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1414141414" + "141414141414FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF13131313FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFF0000000000"+"0002020202020202" + "0202020202000000"+"0000030303030303" + "030303030303FF03"+"0303FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1414141414" + "14FF141414141414"+"14FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF1313131313FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFF00000000"+"0000020202020202" + "0202020200000000"+"0000030303030303" + "0303030303030303"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1414141414" + "1414141414141414"+"1414FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF1313131313FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFF0000"+"0000000202020202" + "0000000000000000"+"0003030303030303" + "FFFFFFFFFFFF0303"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF141414141414" + "1414141414141414"+"14141414FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF1313131313FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $60-$6F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFF00"+"0000000000000000" + "00FFFFFFFF000000"+"0303030303FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF14141414141414" + "1414141414141414"+"1414131313FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF13131313131313"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFF00"+"000000000000FFFF" + "FFFFFFFFFFFFFF03"+"0303FFFFFFFFFFFF" + "FFFFFFFFFFFFFF0C"+"0C0CFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF14141414141414" + "1414141414141414"+"13131313131313FF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "1313131313131313"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"00000000FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF0C0C0C"+"0C0C0C0C0CFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF14141414141414" + "1414141414FF1414"+"1313131313131313" + "1313FFFFFFFFFFFF"+"FFFFFF1313131313" + "1313131313131313"+"13FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF060606" + "0606060606060606"+"0606060606060606" + "06FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF0C0C0C0C0C"+"0C0C0C0C0C0CFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF14141414141414" + "1414141414141414"+"1413131313131313" + "131313FFFFFFFFFF"+"FF13131313131313" + "1313131313131313"+"13FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF0C0C0C0C0C0C0C"+"0C0C0C0C0C0CFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"1414141414141414" + "1414141414141414"+"1413131313131313" + "1313131313131313"+"1313131313131313" + "1313131313131313"+"13FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF0D0D0DFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF0C0C0C0C0C0C0C"+"0C0C0C0C0C0CFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"1414141414141414" + "1414141414141414"+"1414131313131313" + "1313131313131313"+"1313131313131313" + "1313131313131313"+"13FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF07070707FFFF" + "FFFF0D0D0D0D0D0D"+"0D0D0D0D0D0DFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF0C0C" + "0C0C0C0C0C0C0C0C"+"0C0C0C0C0C0CFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"1414141414141414" + "1414141414141414"+"1414131313131313" + "1313131212121213"+"1313131313131313" + "1313131313131313"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF070707070707FF" + "FFFF0D0D0D0D0D0D"+"0D0D0D0D0D0D0DFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF0C0C0C0C" + "0C0C0C0C0C0C0C0C"+"0C0C0C0C0C0CFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF14141414141414" + "1414141414141414"+"1414141313131312" + "1212121212121212"+"1313131313131313" + "1313131313131313"+"1313FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"070707070B0B0B0B" + "0BFFFF0D0D0D0D0D"+"0D0D0D0D0D0D0D0D" + "0D0DFFFFFFFFFFFF"+"FFFF0C0C0C0C0C0C" + "0C0C0C0C0C0C0C0C"+"0C0C0C0C0CFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF141414141414" + "1414141414141414"+"1414141313131212" + "1212121212121212"+"1212121213131313" + "1313131313131313"+"13131313FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"07070B0B0B0B0B0B" + "0BFFFFFFFFFF0D0D"+"0D0D0D0D0D0D0D0D" + "0D0D0D0D0D0D0D0D"+"0D0D0D0D0D0D0D0D" + "0D0D0D0D0C0C0C0C"+"0C0C0C0C0CFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF141414141414" + "1414141414141414"+"141414FFFF121212" + "1212121212121212"+"1212121212121313" + "1313131313131313"+"13131313FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"07070B0B0B0B0B0B" + "0BFFFFFFFFFFFF0D"+"0D0D0D0D0D0D0D0D" + "FFFFFFFFFFFF0D0D"+"0D0D0D0D0D0D0D0D" + "0D0D0D0D0D0D0C0C"+"0C0C0C0CFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF14141414" + "1414141414141414"+"141414FFFFFFFF12" + "1212121212121212"+"1212131313131313" + "1313131313131313"+"13131313FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"070B0B0B0B0B0B0B" + "0BFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"0D0D0D0D0D0D0D0D" + "0D0D0D0D0D0D0D0C"+"0C0C0CFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF141414" + "1414141414141414"+"141414FFFFFFFFFF" + "FF1212121212FFFF"+"FF13131313131313" + "1313131313131313"+"131313FFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"070B0B0B0B0B0B0B" + "0BFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF0D0D0D0D0D0D0D" + "0D0D0D0D0D0D0D0C"+"0CFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF121212FFFFFF"+"FFFFFFFFFFFF1313" + "13131313FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"070B0B0B0B0B0B0B" + "0B0B0B0B0BFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"0D0D0D0D0D0D0D0D" + "0D0D0D0D0D0D0DFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF12FFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF11111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"070B0B0B0B0B0B0B" + "0B0B0B0B0B0B0BFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF0D"+"0D0D0D0D0D0D0D0D" + "0DFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF1010FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1212FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF11"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"07070B0B0B0B0B0B" + "0B0B0B0B0B0B0BFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF0D0D0D"+"0D0D0D0D0D0D0DFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF1010101010FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF12FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1111"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $70-$7F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"0707070B0B0B0B0B" + "0B0B0B0B0B0B0B07"+"07FFFFFFFFFFFFFF" + "FFFFFFFF0D0D0D0D"+"0D0D0D0D0D0D0DFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF10101010101010"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF12FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF11111111"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"070707070B0B0B0B" + "0B0B0B0B0B0B0B07"+"07070707FFFFFFFF" + "FFFFFF08080D0D0D"+"0D0D0D0D0D0DFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF101010101010"+"101010FFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF111111111111"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"0707070B0B0B0B0B" + "0B0B0B0B0B0B0707"+"0707080808080808" + "080808080807070D"+"0D0D0D0D0D0DFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF101010101010"+"1010101010FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "1111111111111111"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"07070B0B0B0B0B0B" + "0B0B070707070707"+"0808080808080808" + "0808080807070707"+"0D0D0D0D0D0DFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF101010101010"+"101010101010FFFF" + "FFFFFFFFFFFF1010"+"10FFFFFFFFFFFFFF" + "1111111111111111"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1A1A1A1A" + "1A1A1A1A1A1A1A1A"+"1A1A1A1A1AFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"07070B0B0B0B0707" + "0707070707070708"+"0808080808080808" + "0808080707070707"+"070D0D0D0D0DFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF101010101010"+"101010101010FFFF" + "FFFFFFFFFF101010"+"10FFFFFFFFFFFFFF" + "1111111111111111"+"1111111111FFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1C1C1C" + "1C1C1C1C1C1C1C1C"+"1C1C1C0B0B070707" + "0707070707070708"+"0808080808080808" + "0808080807070707"+"07070D0D0D0DFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF101010101010"+"1010101010101010" + "FFFF101010101010"+"1010FFFFFFFFFF11" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1C1C07070707" + "0707070707070707"+"0808080808080808" + "0808080807070707"+"07070707070707FF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF10101010101010"+"1010101010101010" + "1010101010101010"+"10111111FFFFFF11" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1C1C070707" + "0707070707070707"+"0707070808080808" + "0808080808080808"+"08080707070707FF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF1C1C1C07" + "0707070707070707"+"0707070707070707" + "0808080808080808"+"080808080808FFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF1010" + "1010101010101010"+"1010101010101010" + "1010101010101010"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"1CFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF1C1C" + "1C1C1C1C1C1C1C1C"+"1C1C070707070707" + "0708080808080808"+"080808080808FFFF" + "FFFFFFFFFFFFFFFF"+"FFFF0E0EFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFF10" + "1010101010101010"+"1010101010101010" + "1010101010101011"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"1CFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF0707" + "0707070707070707"+"071C1C1C1C070707" + "0707080808080808"+"0808080808FFFFFF" + "FFFFFFFFFF0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "1010101010101010"+"1010101010101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"1C1CFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFF07" + "0707070707070707"+"070707071C1C1C1C" + "0707080808080808"+"0808080808FFFFFF" + "FFFFFFFF0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF10101010101010"+"1010101010101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF1C1C1C1C1C1C1C" + "1CFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "0707070707070707"+"070707070707071C" + "1C1C08081C1C1C1C"+"1C1C0808FFFFFFFF" + "FFFFFF0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF101010101010"+"1010101010101010" + "10FF101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "1C1C1CFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FF07070707070707"+"07070707FF070707" + "071C1C1C1C080809"+"091C1C08FFFFFFFF" + "FF0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF1010101010"+"1010101010101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF1CFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "0707070707070707"+"0707070707070707" + "07071C0909090909"+"09091CFFFFFFFFFF" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF10101D1D1D"+"1D10101010101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFF1C1C1CFFFFFF"+"FFFFFFFFFFFFFFFF" + "0707070707070707"+"0707070707070707" + "0707090909090909"+"09091C0909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1D1D1D1D"+"1D1D101010101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $80-$8F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1C1C1C1C"+"1C1C1CFFFFFFFFFF" + "FF07070707070707"+"0707070707070707" + "0909090909090909"+"0909090909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1D1D1D1D"+"1D1D1D1010101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1C1C1C1C1C1C" + "1C1C1C1C1C1C0707"+"0707070707090909" + "0909090909090909"+"0909090909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF1D1D1D1D"+"1D1D1D1D1D101010" + "1010101010101111"+"1111111111111111" + "1111111111111111"+"11111111FFFFFFFF" + "1111111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF1C1C1C"+"1C1C1C1C1C090909" + "0909090909090909"+"0909090909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0E0EFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF1D1DFF"+"FF1D1D1D1D1D1010" + "1010101010111111"+"1111111111111111" + "1111111111111111"+"111111FFFFFFFFFF" + "FF11111111111111"+"11111111FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF0A0A0A0A"+"FFFFFF0909090909" + "0909090909090909"+"0909090909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "0EFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFF1D1DFF"+"FFFFFF1D1D1D1010" + "1010101010111111"+"11111111FF111111" + "1111111111111111"+"11FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF0A0A0A0A"+"FFFFFF0909090909" + "0909090909090909"+"0909090909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "191919FFFF1D1D1D"+"FFFFFF1D1D1D1010" + "1010101010111111"+"1111111111111111" + "1111111111111111"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF0A0A0AFF"+"FFFFFF0909090909" + "0909090909090909"+"0909090909090909" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0E0E" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "19191919FFFF1D1D"+"1DFF1D1D1D101010" + "1010101010111111"+"1111111111111111" + "11111111111111FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF0A0A0AFF"+"FFFFFF0909090909" + "0909090909090909"+"090909090909090E" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0E0EFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919FF1D1D"+"1DFF1D1D10101010" + "1010101010FFFFFF"+"1111111111111111" + "111111111111FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF0A0AFFFF"+"FFFFFF0909090909" + "0909090909090909"+"0909090909090E0E" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0EFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919FFFFFF"+"FFFF101010101010" + "FFFFFFFFFFFFFFFF"+"FF11111111111111" + "111111111111FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF0909090909" + "0909090909090909"+"09090E0E0E0E0E0E" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0E0EFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919FFFFFF"+"FFFF10101010FFFF" + "FFFFFFFFFFFFFFFF"+"FFFF111111111111" + "1111111111FFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF0909090909" + "090909FFFFFFFFFF"+"FFFF0E0E0E0E0E0E" + "0E0E0E0E0E0E0E0E"+"0E0E0E0E0EFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"FFFFFF101010FFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFF1111111111" + "11111111FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF09090909" + "090909FFFFFFFFFF"+"FFFFFF0E0E0E0E0E" + "0E0E0E0E0E0E0E0E"+"0E0E0EFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF11111111" + "111111FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF0E0E0E0E" + "0E0E0E0E0E0E0E0E"+"0E0EFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFF1111" + "1111FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF0E0E0E0E" + "0E0E0E0E0E0E0E0E"+"0E0EFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFF0E0E0E0E" + "0E0E0E0E0E0E0E0E"+"0EFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF0E0E0E" + "0E0E0E0E0E0E0E0E"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFF0E0E" + "0E0E0E0E0E0E0EFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFFFFFF1717"+"17171717FFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF16161616FFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $90-$9F
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFF0E0E" + "0E0E0E0E0E0EFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFFFFFF1717"+"171717171717FFFF" + "FFFFFFFF161616FF"+"FF161616161616FF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFF0E" + "0E0E0E0E0E0EFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFF17171717"+"17171717171717FF" + "FF16161616161616"+"1616161616161616" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "0E0E0E0E0EFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFFFF17171717"+"1717171717171716" + "1616161616161616"+"16FFFFFF16161616" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFF1717171717"+"1717171717171616" + "1616161616161616"+"FFFFFFFFFF161616" + "16FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFF1717171717"+"1717171717171616" + "16161616161616FF"+"FFFFFFFFFFFF1616" + "16FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919FFFFFFFFFFFF" + "FFFFFF1717171717"+"1717171717171616" + "16161616161616FF"+"FFFFFFFFFFFFFF16" + "1616FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFFFFFFFF" + "FFFFFFFF17171717"+"1717171716161616" + "161616FFFFFFFFFF"+"FFFFFFFFFFFFFF16" + "1616FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFFFFFFFF" + "FFFFFFFF17171717"+"1717161616161616" + "1616FFFF161616FF"+"FFFFFFFFFFFFFF16" + "1616FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFFFFFF15" + "15FFFF1717171717"+"1716161616161616" + "16FFFF1616161616"+"1616FFFFFFFF1616" + "1616FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFFFF1515" + "1515FFFFFF171717"+"161616161616FFFF" + "FFFF161616161616"+"161616FFFF161616" + "161616FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFF151515" + "15151515FFFF1616"+"161616161616FF16" + "1616161616161616"+"1616161616161616" + "16161616FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFF151515" + "1515151515FFFF16"+"1616161616FFFF16" + "1616161616161818"+"1818161616161616" + "1616161616FFFFFF"+"FF18FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919FFFFFF1515" + "151515151515FFFF"+"FF16161616FF1616" + "1616161618181818"+"1818181616161616" + "1616161616181818"+"1818FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919FFFFFF" + "1515151515151515"+"FFFFFFFFFFFF1616" + "1616161818181818"+"1818161616161616" + "1616161818181818"+"1818FFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919FFFFFF" + "FF15151515151515"+"FFFFFFFFFFFFFF16" + "1616161818181818"+"1818181818181616" + "1616181818181818"+"18FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"191919191919FFFF" + "FFFF15FFFFFFFFFF"+"FFFFFFFFFFFFFF16" + "1616181818181818"+"1818181818181816" + "1618181818181818"+"18FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $A0-$AF
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "1818181818181818"+"1818181818181818" + "1818181818181818"+"18FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "1818181818181818"+"1818181818181818" + "1818181818181818"+"18FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "1818181818181818"+"1818181818181818" + "1818181818181818"+"18FFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "1818181818181818"+"1818181818181818" + "1818181818181818"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "1818181818181818"+"1818181818181818" + "1818181818181818"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "1818181818181818"+"1818181818181818" + "18181818181818FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FF18181818181818"+"1818181818181818" + "18181818181818FF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFF181818181818"+"1818181818181818" + "181818181818FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFF181818181818"+"1818181818181818" + "18181818FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFF1818181818"+"1818181818181818" + "181818FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFF18181818"+"1818181818181818" + "181818FFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1818"+"1818181818181818" + "1818FFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF18"+"1818181818181818" + "18FFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FF18181818181818" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $B0-$BF
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1919"+"1919191919191919" + "1919191919191919"+"1919191919191919" + "191919191919FFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $C0-$CF
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF191919" + "1919191919191919"+"1919191919191919" + "19191919FFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0FFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0FFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0FFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0FFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0FFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0FFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $D0-$DF
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFF0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F0F0F0F0F0F0F" + "0F0F0F0F0F0F0F0F"+"0F0F1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $E0-$EF
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	// ROWS $F0-$FF
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFF1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFF1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1E1E1E1E1E"+"1E1E1E1E1E1E1E1E" + "1E1E1E1EFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFF1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1F1F1F1F"+"1F1F1F1F1F1F1F1F" + "1F1F1F1F1FFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");
	ds_list_add(_dl1,"FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF" + "FFFFFFFFFFFFFFFF"+"FFFFFFFFFFFFFFFF");


	for(_j=0; _j<_count2; _j++) // Each row of tiles
	{
	    _str1 = _dl1[|_j];
	    for(_i=0; _i<_count1; _i++) // Each clm of tiles
	    {
	        _str2 = string_copy(_str1,(_i<<1)+1,2);
	        _idx = str_hex(_str2);
	        if (_idx==$FF) continue;//_i. $FF represents MapAreaName_DEF
	        dg_AreaNames[#_i,_j] = _dl_AreaNames[|_idx];
	    }
	}












	ds_grid_resize(dg_hidden_exits_help, $18,$02);
	ds_grid_clear (dg_hidden_exits_help, 0);

	dg_hidden_exits_help[#$00,$00] = $5E;
	dg_hidden_exits_help[#$00,$01] = $3A;

	dg_hidden_exits_help[#$01,$00] = $A3;
	dg_hidden_exits_help[#$01,$01] = $46;

	dg_hidden_exits_help[#$02,$00] = $3C;
	dg_hidden_exits_help[#$02,$01] = $49;

	dg_hidden_exits_help[#$03,$00] = $3F;
	dg_hidden_exits_help[#$03,$01] = $56;

	dg_hidden_exits_help[#$04,$00] = $C3;
	dg_hidden_exits_help[#$04,$01] = $5F;

	dg_hidden_exits_help[#$05,$00] = $D3;
	dg_hidden_exits_help[#$05,$01] = $61;

	dg_hidden_exits_help[#$06,$00] = $8D;
	dg_hidden_exits_help[#$06,$01] = $69;

	dg_hidden_exits_help[#$07,$00] = $3E;
	dg_hidden_exits_help[#$07,$01] = $6A;

	dg_hidden_exits_help[#$08,$00] = $AA;
	dg_hidden_exits_help[#$08,$01] = $6C;

	dg_hidden_exits_help[#$09,$00] = $4F;
	dg_hidden_exits_help[#$09,$01] = $6D;

	dg_hidden_exits_help[#$0A,$00] = $30;
	dg_hidden_exits_help[#$0A,$01] = $6E;

	dg_hidden_exits_help[#$0B,$00] = $3D;
	dg_hidden_exits_help[#$0B,$01] = $73;

	dg_hidden_exits_help[#$0C,$00] = $AF;
	dg_hidden_exits_help[#$0C,$01] = $81;

	dg_hidden_exits_help[#$0D,$00] = $5E;
	dg_hidden_exits_help[#$0D,$01] = $82;

	dg_hidden_exits_help[#$0E,$00] = $35;
	dg_hidden_exits_help[#$0E,$01] = $85;

	dg_hidden_exits_help[#$0F,$00] = $96;
	dg_hidden_exits_help[#$0F,$01] = $89;




	dg_hidden_exits_help[#$10,$00] = $4E;
	dg_hidden_exits_help[#$10,$01] = $8D;

	dg_hidden_exits_help[#$11,$00] = $94;
	dg_hidden_exits_help[#$11,$01] = $91;

	dg_hidden_exits_help[#$12,$00] = $B8;
	dg_hidden_exits_help[#$12,$01] = $95;

	dg_hidden_exits_help[#$13,$00] = $7E;
	dg_hidden_exits_help[#$13,$01] = $9B;

	dg_hidden_exits_help[#$14,$00] = $B0;
	dg_hidden_exits_help[#$14,$01] = $9B;

	dg_hidden_exits_help[#$15,$00] = $4F;
	dg_hidden_exits_help[#$15,$01] = $9E;

	dg_hidden_exits_help[#$16,$00] = $AA;
	dg_hidden_exits_help[#$16,$01] = $A7;

	dg_hidden_exits_help[#$17,$00] = $48;
	dg_hidden_exits_help[#$17,$01] = $B4;









	ds_grid_resize(dg_boulders, $12,$04);

	dg_boulders[#$00,$00] = $6057;
	dg_boulders[#$00,$01] = $01;
	dg_boulders[#$00,$02] = $D5;

	dg_boulders[#$01,$00] = $655D;
	dg_boulders[#$01,$01] = $01;
	dg_boulders[#$01,$02] = $20;

	dg_boulders[#$02,$00] = $6D31;
	dg_boulders[#$02,$01] = $01;
	dg_boulders[#$02,$02] = $38;

	dg_boulders[#$03,$00] = $7456;
	dg_boulders[#$03,$01] = $01;
	dg_boulders[#$03,$02] = $D5;

	dg_boulders[#$04,$00] = $8597;
	dg_boulders[#$04,$01] = $01;
	dg_boulders[#$04,$02] = $24;

	dg_boulders[#$05,$00] = $AE32;
	dg_boulders[#$05,$01] = $01;
	dg_boulders[#$05,$02] = $C8;

	dg_boulders[#$06,$00] = $BE3E;
	dg_boulders[#$06,$01] = $01;
	dg_boulders[#$06,$02] = $04;

	dg_boulders[#$07,$00] = $BF40;
	dg_boulders[#$07,$01] = $01;
	dg_boulders[#$07,$02] = $04;

	dg_boulders[#$08,$00] = $C141;
	dg_boulders[#$08,$01] = $01;
	dg_boulders[#$08,$02] = $04;

	dg_boulders[#$09,$00] = $C340;
	dg_boulders[#$09,$01] = $01;
	dg_boulders[#$09,$02] = $04;

	dg_boulders[#$0A,$00] = $C43E;
	dg_boulders[#$0A,$01] = $01;
	dg_boulders[#$0A,$02] = $04;

	dg_boulders[#$0B,$00] = $C33C;
	dg_boulders[#$0B,$01] = $01;
	dg_boulders[#$0B,$02] = $04;

	dg_boulders[#$0C,$00] = $C13B;
	dg_boulders[#$0C,$01] = $01;
	dg_boulders[#$0C,$02] = $04;

	dg_boulders[#$0D,$00] = $BF3C;
	dg_boulders[#$0D,$01] = $01;
	dg_boulders[#$0D,$02] = $04;

	dg_boulders[#$0E,$00] = $EBB7;
	dg_boulders[#$0E,$01] = $01;
	dg_boulders[#$0E,$02] = $C8;

	dg_boulders[#$0F,$00] = $0F6A;
	dg_boulders[#$0F,$01] = $01;
	dg_boulders[#$0F,$02] = $24;




	dg_boulders[#$10,$00] = $106B;
	dg_boulders[#$10,$01] = $01;
	dg_boulders[#$10,$02] = $24;

	dg_boulders[#$11,$00] = $0E6A;
	dg_boulders[#$11,$01] = $01;
	dg_boulders[#$11,$02] = $24;









	BoulderCircle_center_OWRC = $C13E;

	dl_BoulderCircle_OWRC[|$00]         = $BE3E;
	dm_data[?"_OWRC_Boulder_Circle_01"] = $BE3E; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$01]         = $BF40;
	dm_data[?"_OWRC_Boulder_Circle_02"] = $BF40; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$02]         = $C141;
	dm_data[?"_OWRC_Boulder_Circle_03"] = $C141; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$03]         = $C340;
	dm_data[?"_OWRC_Boulder_Circle_04"] = $C340; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$04]         = $C43E;
	dm_data[?"_OWRC_Boulder_Circle_05"] = $C43E; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$05]         = $C33C;
	dm_data[?"_OWRC_Boulder_Circle_06"] = $C33C; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$06]         = $C13B;
	dm_data[?"_OWRC_Boulder_Circle_07"] = $C13B; // datakey example: _OWRC_Boulder_Circle_03

	dl_BoulderCircle_OWRC[|$07]         = $BF3C;
	dm_data[?"_OWRC_Boulder_Circle_08"] = $BF3C; // datakey example: _OWRC_Boulder_Circle_03









	dm_data[?"6057"+STR_TSRC+STR_Under+STR_Boulder] = $D5;
	dm_data[?"655D"+STR_TSRC+STR_Under+STR_Boulder] = $20;
	dm_data[?"6D31"+STR_TSRC+STR_Under+STR_Boulder] = $38;
	dm_data[?"7456"+STR_TSRC+STR_Under+STR_Boulder] = $D5;
	dm_data[?"8597"+STR_TSRC+STR_Under+STR_Boulder] = $24;
	dm_data[?"AE32"+STR_TSRC+STR_Under+STR_Boulder] = $C8;
	dm_data[?"BE3E"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"BF40"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"C141"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"C340"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"C43E"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"C33C"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"C13B"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"BF3C"+STR_TSRC+STR_Under+STR_Boulder] = $04;
	dm_data[?"EBB7"+STR_TSRC+STR_Under+STR_Boulder] = $C8;
	dm_data[?"0F6A"+STR_TSRC+STR_Under+STR_Boulder] = $24;

	dm_data[?"106B"+STR_TSRC+STR_Under+STR_Boulder] = $24;
	dm_data[?"0E6A"+STR_TSRC+STR_Under+STR_Boulder] = $24;












	_count1 = $019B;
	_count2 = $08;
	ds_grid_resize(dg_ChangeTiles_Boots, _count1,_count2);

	for(_i=0; _i<_count1; _i++)
	{
	    dg_ChangeTiles_Boots[#_i,1] = $00;
	    dg_ChangeTiles_Boots[#_i,2] = $00;
	    dg_ChangeTiles_Boots[#_i,3] = $26;
	}

	dg_ChangeTiles_Boots[#$00,$00] = $3030;
	dg_ChangeTiles_Boots[#$00,$03] = $25;
	dg_ChangeTiles_Boots[#$01,$00] = $3031;
	dg_ChangeTiles_Boots[#$01,$03] = $25;
	dg_ChangeTiles_Boots[#$02,$00] = $3131;
	dg_ChangeTiles_Boots[#$02,$03] = $25;
	dg_ChangeTiles_Boots[#$03,$00] = $3132;
	dg_ChangeTiles_Boots[#$03,$03] = $25;
	dg_ChangeTiles_Boots[#$04,$00] = $3232;
	dg_ChangeTiles_Boots[#$04,$03] = $25;
	dg_ChangeTiles_Boots[#$05,$00] = $385F;
	dg_ChangeTiles_Boots[#$05,$03] = $25;
	dg_ChangeTiles_Boots[#$06,$00] = $3860;
	dg_ChangeTiles_Boots[#$06,$03] = $25;
	dg_ChangeTiles_Boots[#$07,$00] = $3861;
	dg_ChangeTiles_Boots[#$07,$03] = $25;
	dg_ChangeTiles_Boots[#$08,$00] = $38A5;
	dg_ChangeTiles_Boots[#$08,$03] = $25;
	dg_ChangeTiles_Boots[#$09,$00] = $3961;
	dg_ChangeTiles_Boots[#$09,$03] = $25;
	dg_ChangeTiles_Boots[#$0A,$00] = $3962;
	dg_ChangeTiles_Boots[#$0A,$03] = $25;
	dg_ChangeTiles_Boots[#$0B,$00] = $3963;
	dg_ChangeTiles_Boots[#$0B,$03] = $25;
	dg_ChangeTiles_Boots[#$0C,$00] = $39A5;
	dg_ChangeTiles_Boots[#$0C,$03] = $25;
	dg_ChangeTiles_Boots[#$0D,$00] = $3F58;
	dg_ChangeTiles_Boots[#$0D,$03] = $25;
	dg_ChangeTiles_Boots[#$0E,$00] = $404C;
	dg_ChangeTiles_Boots[#$0E,$03] = $25;
	dg_ChangeTiles_Boots[#$0F,$00] = $404D;
	dg_ChangeTiles_Boots[#$0F,$03] = $25;

	dg_ChangeTiles_Boots[#$10,$00] = $404E;
	dg_ChangeTiles_Boots[#$10,$03] = $25;
	dg_ChangeTiles_Boots[#$11,$00] = $4056;
	dg_ChangeTiles_Boots[#$11,$03] = $25;
	dg_ChangeTiles_Boots[#$12,$00] = $4057;
	dg_ChangeTiles_Boots[#$12,$03] = $25;
	dg_ChangeTiles_Boots[#$13,$00] = $414B;
	dg_ChangeTiles_Boots[#$13,$03] = $25;
	dg_ChangeTiles_Boots[#$14,$00] = $414C;
	dg_ChangeTiles_Boots[#$14,$03] = $25;
	dg_ChangeTiles_Boots[#$15,$00] = $414E;
	dg_ChangeTiles_Boots[#$15,$03] = $25;
	dg_ChangeTiles_Boots[#$16,$00] = $414F;
	dg_ChangeTiles_Boots[#$16,$03] = $25;
	dg_ChangeTiles_Boots[#$17,$00] = $4150;
	dg_ChangeTiles_Boots[#$17,$03] = $25;
	dg_ChangeTiles_Boots[#$18,$00] = $4154;
	dg_ChangeTiles_Boots[#$18,$03] = $25;
	dg_ChangeTiles_Boots[#$19,$00] = $4155;
	dg_ChangeTiles_Boots[#$19,$03] = $25;
	dg_ChangeTiles_Boots[#$1A,$00] = $4156;
	dg_ChangeTiles_Boots[#$1A,$03] = $25;
	dg_ChangeTiles_Boots[#$1B,$00] = $4249;
	dg_ChangeTiles_Boots[#$1B,$03] = $25;
	dg_ChangeTiles_Boots[#$1C,$00] = $424A;
	dg_ChangeTiles_Boots[#$1C,$03] = $25;
	dg_ChangeTiles_Boots[#$1D,$00] = $424B;
	dg_ChangeTiles_Boots[#$1D,$03] = $25;
	dg_ChangeTiles_Boots[#$1E,$00] = $4251;
	dg_ChangeTiles_Boots[#$1E,$03] = $25;
	dg_ChangeTiles_Boots[#$1F,$00] = $4252;
	dg_ChangeTiles_Boots[#$1F,$03] = $25;

	dg_ChangeTiles_Boots[#$20,$00] = $4253;
	dg_ChangeTiles_Boots[#$20,$03] = $25;
	dg_ChangeTiles_Boots[#$21,$00] = $4254;
	dg_ChangeTiles_Boots[#$21,$03] = $25;
	dg_ChangeTiles_Boots[#$22,$00] = $4255;
	dg_ChangeTiles_Boots[#$22,$03] = $25;
	dg_ChangeTiles_Boots[#$23,$00] = $4FA3;
	dg_ChangeTiles_Boots[#$23,$03] = $25;
	dg_ChangeTiles_Boots[#$24,$00] = $50A4;
	dg_ChangeTiles_Boots[#$24,$03] = $25;
	dg_ChangeTiles_Boots[#$25,$00] = $50A5;
	dg_ChangeTiles_Boots[#$25,$03] = $25;
	dg_ChangeTiles_Boots[#$26,$00] = $51A5;
	dg_ChangeTiles_Boots[#$26,$03] = $25;
	dg_ChangeTiles_Boots[#$27,$00] = $52A5;
	dg_ChangeTiles_Boots[#$27,$03] = $25;
	dg_ChangeTiles_Boots[#$28,$00] = $55A5;
	dg_ChangeTiles_Boots[#$28,$03] = $25;
	dg_ChangeTiles_Boots[#$29,$00] = $56A5;
	dg_ChangeTiles_Boots[#$29,$03] = $25;
	dg_ChangeTiles_Boots[#$2A,$00] = $5A7E;
	dg_ChangeTiles_Boots[#$2A,$03] = $25;
	dg_ChangeTiles_Boots[#$2B,$00] = $5A7F;
	dg_ChangeTiles_Boots[#$2B,$03] = $25;
	dg_ChangeTiles_Boots[#$2C,$00] = $5A80;
	dg_ChangeTiles_Boots[#$2C,$03] = $25;
	dg_ChangeTiles_Boots[#$2D,$00] = $5A81;
	dg_ChangeTiles_Boots[#$2D,$03] = $25;
	dg_ChangeTiles_Boots[#$2E,$00] = $5AD5;
	dg_ChangeTiles_Boots[#$2E,$03] = $25;
	dg_ChangeTiles_Boots[#$2F,$00] = $5AD6;
	dg_ChangeTiles_Boots[#$2F,$03] = $25;

	dg_ChangeTiles_Boots[#$30,$00] = $5AD7;
	dg_ChangeTiles_Boots[#$30,$03] = $25;
	dg_ChangeTiles_Boots[#$31,$00] = $5AD8;
	dg_ChangeTiles_Boots[#$31,$03] = $25;
	dg_ChangeTiles_Boots[#$32,$00] = $5B7D;
	dg_ChangeTiles_Boots[#$32,$03] = $25;
	dg_ChangeTiles_Boots[#$33,$00] = $5B7E;
	dg_ChangeTiles_Boots[#$33,$03] = $25;
	dg_ChangeTiles_Boots[#$34,$00] = $5B7F;
	dg_ChangeTiles_Boots[#$34,$03] = $25;
	dg_ChangeTiles_Boots[#$35,$00] = $5B81;
	dg_ChangeTiles_Boots[#$35,$03] = $25;
	dg_ChangeTiles_Boots[#$36,$00] = $5B82;
	dg_ChangeTiles_Boots[#$36,$03] = $25;
	dg_ChangeTiles_Boots[#$37,$00] = $5BD5;
	dg_ChangeTiles_Boots[#$37,$03] = $25;
	dg_ChangeTiles_Boots[#$38,$00] = $5C7D;
	dg_ChangeTiles_Boots[#$38,$03] = $25;
	dg_ChangeTiles_Boots[#$39,$00] = $5C82;
	dg_ChangeTiles_Boots[#$39,$03] = $25;
	dg_ChangeTiles_Boots[#$3A,$00] = $5C83;
	dg_ChangeTiles_Boots[#$3A,$03] = $25;
	dg_ChangeTiles_Boots[#$3B,$00] = $5CD4;
	dg_ChangeTiles_Boots[#$3B,$03] = $25;
	dg_ChangeTiles_Boots[#$3C,$00] = $5CD5;
	dg_ChangeTiles_Boots[#$3C,$03] = $25;
	dg_ChangeTiles_Boots[#$3D,$00] = $5D82;
	dg_ChangeTiles_Boots[#$3D,$03] = $25;
	dg_ChangeTiles_Boots[#$3E,$00] = $5D83;
	dg_ChangeTiles_Boots[#$3E,$03] = $25;
	dg_ChangeTiles_Boots[#$3F,$00] = $5DD4;
	dg_ChangeTiles_Boots[#$3F,$03] = $25;

	dg_ChangeTiles_Boots[#$40,$00] = $5ED4;
	dg_ChangeTiles_Boots[#$40,$03] = $25;
	dg_ChangeTiles_Boots[#$41,$00] = $60CE;
	dg_ChangeTiles_Boots[#$41,$03] = $25;
	dg_ChangeTiles_Boots[#$42,$00] = $60D0;
	dg_ChangeTiles_Boots[#$42,$03] = $25;
	dg_ChangeTiles_Boots[#$43,$00] = $60D1;
	dg_ChangeTiles_Boots[#$43,$03] = $25;
	dg_ChangeTiles_Boots[#$44,$00] = $60D2;
	dg_ChangeTiles_Boots[#$44,$03] = $25;
	dg_ChangeTiles_Boots[#$45,$00] = $60D3;
	dg_ChangeTiles_Boots[#$45,$03] = $25;
	dg_ChangeTiles_Boots[#$46,$00] = $60D4;
	dg_ChangeTiles_Boots[#$46,$03] = $25;
	dg_ChangeTiles_Boots[#$47,$00] = $61CE;
	dg_ChangeTiles_Boots[#$47,$03] = $25;
	dg_ChangeTiles_Boots[#$48,$00] = $62CC;
	dg_ChangeTiles_Boots[#$48,$03] = $25;
	dg_ChangeTiles_Boots[#$49,$00] = $62CD;
	dg_ChangeTiles_Boots[#$49,$03] = $25;
	dg_ChangeTiles_Boots[#$4A,$00] = $62CE;
	dg_ChangeTiles_Boots[#$4A,$03] = $25;
	dg_ChangeTiles_Boots[#$4B,$00] = $63CC;
	dg_ChangeTiles_Boots[#$4B,$03] = $25;
	dg_ChangeTiles_Boots[#$4C,$00] = $64CC;
	dg_ChangeTiles_Boots[#$4C,$03] = $25;
	dg_ChangeTiles_Boots[#$4D,$00] = $66C4;
	dg_ChangeTiles_Boots[#$4D,$03] = $25;
	dg_ChangeTiles_Boots[#$4E,$00] = $66C5;
	dg_ChangeTiles_Boots[#$4E,$03] = $25;
	dg_ChangeTiles_Boots[#$4F,$00] = $66C6;
	dg_ChangeTiles_Boots[#$4F,$03] = $25;

	dg_ChangeTiles_Boots[#$50,$00] = $66C7;
	dg_ChangeTiles_Boots[#$50,$03] = $25;
	dg_ChangeTiles_Boots[#$51,$00] = $66C8;
	dg_ChangeTiles_Boots[#$51,$03] = $25;
	dg_ChangeTiles_Boots[#$52,$00] = $66CA;
	dg_ChangeTiles_Boots[#$52,$03] = $25;
	dg_ChangeTiles_Boots[#$53,$00] = $66CB;
	dg_ChangeTiles_Boots[#$53,$03] = $25;
	dg_ChangeTiles_Boots[#$54,$00] = $66CC;
	dg_ChangeTiles_Boots[#$54,$03] = $25;
	dg_ChangeTiles_Boots[#$55,$00] = $70A6;
	dg_ChangeTiles_Boots[#$55,$03] = $25;
	dg_ChangeTiles_Boots[#$56,$00] = $71A2;
	dg_ChangeTiles_Boots[#$56,$03] = $25;
	dg_ChangeTiles_Boots[#$57,$00] = $71A3;
	dg_ChangeTiles_Boots[#$57,$03] = $25;
	dg_ChangeTiles_Boots[#$58,$00] = $71A4;
	dg_ChangeTiles_Boots[#$58,$03] = $25;
	dg_ChangeTiles_Boots[#$59,$00] = $72A0;
	dg_ChangeTiles_Boots[#$59,$03] = $25;
	dg_ChangeTiles_Boots[#$5A,$00] = $72A1;
	dg_ChangeTiles_Boots[#$5A,$03] = $25;
	dg_ChangeTiles_Boots[#$5B,$00] = $72A2;
	dg_ChangeTiles_Boots[#$5B,$03] = $25;
	dg_ChangeTiles_Boots[#$5C,$00] = $73A0;
	dg_ChangeTiles_Boots[#$5C,$03] = $25;
	dg_ChangeTiles_Boots[#$5D,$00] = $73A1;
	dg_ChangeTiles_Boots[#$5D,$03] = $25;
	dg_ChangeTiles_Boots[#$5E,$00] = $74A0;
	dg_ChangeTiles_Boots[#$5E,$03] = $25;
	dg_ChangeTiles_Boots[#$5F,$00] = $74BA;
	dg_ChangeTiles_Boots[#$5F,$03] = $25;

	dg_ChangeTiles_Boots[#$60,$00] = $74BB;
	dg_ChangeTiles_Boots[#$60,$03] = $25;
	dg_ChangeTiles_Boots[#$61,$00] = $759F;
	dg_ChangeTiles_Boots[#$61,$03] = $25;
	dg_ChangeTiles_Boots[#$62,$00] = $75A0;
	dg_ChangeTiles_Boots[#$62,$03] = $25;
	dg_ChangeTiles_Boots[#$63,$00] = $75B4;
	dg_ChangeTiles_Boots[#$63,$03] = $25;
	dg_ChangeTiles_Boots[#$64,$00] = $75B5;
	dg_ChangeTiles_Boots[#$64,$03] = $25;
	dg_ChangeTiles_Boots[#$65,$00] = $75B6;
	dg_ChangeTiles_Boots[#$65,$03] = $25;
	dg_ChangeTiles_Boots[#$66,$00] = $75B7;
	dg_ChangeTiles_Boots[#$66,$03] = $25;
	dg_ChangeTiles_Boots[#$67,$00] = $75B8;
	dg_ChangeTiles_Boots[#$67,$03] = $25;
	dg_ChangeTiles_Boots[#$68,$00] = $75B9;
	dg_ChangeTiles_Boots[#$68,$03] = $25;
	dg_ChangeTiles_Boots[#$69,$00] = $75BA;
	dg_ChangeTiles_Boots[#$69,$03] = $25;
	dg_ChangeTiles_Boots[#$6A,$00] = $75BB;
	dg_ChangeTiles_Boots[#$6A,$03] = $25;
	dg_ChangeTiles_Boots[#$6B,$00] = $769F;
	dg_ChangeTiles_Boots[#$6B,$03] = $25;
	dg_ChangeTiles_Boots[#$6C,$00] = $76A0;
	dg_ChangeTiles_Boots[#$6C,$03] = $25;
	dg_ChangeTiles_Boots[#$6D,$00] = $76B0;
	dg_ChangeTiles_Boots[#$6D,$03] = $25;
	dg_ChangeTiles_Boots[#$6E,$00] = $76B1;
	dg_ChangeTiles_Boots[#$6E,$03] = $25;
	dg_ChangeTiles_Boots[#$6F,$00] = $76B2;
	dg_ChangeTiles_Boots[#$6F,$03] = $25;

	dg_ChangeTiles_Boots[#$70,$00] = $76B4;
	dg_ChangeTiles_Boots[#$70,$03] = $25;
	dg_ChangeTiles_Boots[#$71,$00] = $76B7;
	dg_ChangeTiles_Boots[#$71,$03] = $25;
	dg_ChangeTiles_Boots[#$72,$00] = $76B9;
	dg_ChangeTiles_Boots[#$72,$03] = $25;
	dg_ChangeTiles_Boots[#$73,$00] = $76BB;
	dg_ChangeTiles_Boots[#$73,$03] = $25;
	dg_ChangeTiles_Boots[#$74,$00] = $77A0;
	dg_ChangeTiles_Boots[#$74,$03] = $25;
	dg_ChangeTiles_Boots[#$75,$00] = $77A1;
	dg_ChangeTiles_Boots[#$75,$03] = $25;
	dg_ChangeTiles_Boots[#$76,$00] = $77AD;
	dg_ChangeTiles_Boots[#$76,$03] = $25;
	dg_ChangeTiles_Boots[#$77,$00] = $77AF;
	dg_ChangeTiles_Boots[#$77,$03] = $25;
	dg_ChangeTiles_Boots[#$78,$00] = $77B0;
	dg_ChangeTiles_Boots[#$78,$03] = $25;
	dg_ChangeTiles_Boots[#$79,$00] = $77B4;
	dg_ChangeTiles_Boots[#$79,$03] = $25;
	dg_ChangeTiles_Boots[#$7A,$00] = $77B6;
	dg_ChangeTiles_Boots[#$7A,$03] = $25;
	dg_ChangeTiles_Boots[#$7B,$00] = $77B9;
	dg_ChangeTiles_Boots[#$7B,$03] = $25;
	dg_ChangeTiles_Boots[#$7C,$00] = $77BB;
	dg_ChangeTiles_Boots[#$7C,$03] = $25;
	dg_ChangeTiles_Boots[#$7D,$00] = $78A1;
	dg_ChangeTiles_Boots[#$7D,$03] = $25;
	dg_ChangeTiles_Boots[#$7E,$00] = $78A2;
	dg_ChangeTiles_Boots[#$7E,$03] = $25;
	dg_ChangeTiles_Boots[#$7F,$00] = $78AC;
	dg_ChangeTiles_Boots[#$7F,$03] = $25;

	dg_ChangeTiles_Boots[#$80,$00] = $78AD;
	dg_ChangeTiles_Boots[#$80,$03] = $25;
	dg_ChangeTiles_Boots[#$81,$00] = $78AE;
	dg_ChangeTiles_Boots[#$81,$03] = $25;
	dg_ChangeTiles_Boots[#$82,$00] = $78AF;
	dg_ChangeTiles_Boots[#$82,$03] = $25;
	dg_ChangeTiles_Boots[#$83,$00] = $78B0;
	dg_ChangeTiles_Boots[#$83,$03] = $25;
	dg_ChangeTiles_Boots[#$84,$00] = $78B1;
	dg_ChangeTiles_Boots[#$84,$03] = $25;
	dg_ChangeTiles_Boots[#$85,$00] = $78B2;
	dg_ChangeTiles_Boots[#$85,$03] = $25;
	dg_ChangeTiles_Boots[#$86,$00] = $78B3;
	dg_ChangeTiles_Boots[#$86,$03] = $25;
	dg_ChangeTiles_Boots[#$87,$00] = $78B4;
	dg_ChangeTiles_Boots[#$87,$03] = $25;
	dg_ChangeTiles_Boots[#$88,$00] = $78B5;
	dg_ChangeTiles_Boots[#$88,$03] = $25;
	dg_ChangeTiles_Boots[#$89,$00] = $78B6;
	dg_ChangeTiles_Boots[#$89,$03] = $25;
	dg_ChangeTiles_Boots[#$8A,$00] = $78B7;
	dg_ChangeTiles_Boots[#$8A,$03] = $25;
	dg_ChangeTiles_Boots[#$8B,$00] = $78BB;
	dg_ChangeTiles_Boots[#$8B,$03] = $25;
	dg_ChangeTiles_Boots[#$8C,$00] = $79A1;
	dg_ChangeTiles_Boots[#$8C,$03] = $25;
	dg_ChangeTiles_Boots[#$8D,$00] = $79A2;
	dg_ChangeTiles_Boots[#$8D,$03] = $25;
	dg_ChangeTiles_Boots[#$8E,$00] = $79A3;
	dg_ChangeTiles_Boots[#$8E,$03] = $25;
	dg_ChangeTiles_Boots[#$8F,$00] = $79AD;
	dg_ChangeTiles_Boots[#$8F,$03] = $25;

	dg_ChangeTiles_Boots[#$90,$00] = $7AA2;
	dg_ChangeTiles_Boots[#$90,$03] = $25;
	dg_ChangeTiles_Boots[#$91,$00] = $7AA3;
	dg_ChangeTiles_Boots[#$91,$03] = $25;
	dg_ChangeTiles_Boots[#$92,$00] = $7AA4;
	dg_ChangeTiles_Boots[#$92,$03] = $25;
	dg_ChangeTiles_Boots[#$93,$00] = $7AA5;
	dg_ChangeTiles_Boots[#$93,$03] = $25;
	dg_ChangeTiles_Boots[#$94,$00] = $7AAD;
	dg_ChangeTiles_Boots[#$94,$03] = $25;
	dg_ChangeTiles_Boots[#$95,$00] = $7BA3;
	dg_ChangeTiles_Boots[#$95,$03] = $25;
	dg_ChangeTiles_Boots[#$96,$00] = $7BA4;
	dg_ChangeTiles_Boots[#$96,$03] = $25;
	dg_ChangeTiles_Boots[#$97,$00] = $7BA5;
	dg_ChangeTiles_Boots[#$97,$03] = $25;
	dg_ChangeTiles_Boots[#$98,$00] = $7BA6;
	dg_ChangeTiles_Boots[#$98,$03] = $25;
	dg_ChangeTiles_Boots[#$99,$00] = $7BA7;
	dg_ChangeTiles_Boots[#$99,$03] = $25;
	dg_ChangeTiles_Boots[#$9A,$00] = $7BA8;
	dg_ChangeTiles_Boots[#$9A,$03] = $25;
	dg_ChangeTiles_Boots[#$9B,$00] = $7BAD;
	dg_ChangeTiles_Boots[#$9B,$03] = $25;
	dg_ChangeTiles_Boots[#$9C,$00] = $7CA5;
	dg_ChangeTiles_Boots[#$9C,$03] = $25;
	dg_ChangeTiles_Boots[#$9D,$00] = $7CA6;
	dg_ChangeTiles_Boots[#$9D,$03] = $25;
	dg_ChangeTiles_Boots[#$9E,$00] = $7CA7;
	dg_ChangeTiles_Boots[#$9E,$03] = $25;
	dg_ChangeTiles_Boots[#$9F,$00] = $7CA8;
	dg_ChangeTiles_Boots[#$9F,$03] = $25;

	dg_ChangeTiles_Boots[#$A0,$00] = $7CA9;
	dg_ChangeTiles_Boots[#$A0,$03] = $25;
	dg_ChangeTiles_Boots[#$A1,$00] = $7CAA;
	dg_ChangeTiles_Boots[#$A1,$03] = $25;
	dg_ChangeTiles_Boots[#$A2,$00] = $7CAB;
	dg_ChangeTiles_Boots[#$A2,$03] = $25;
	dg_ChangeTiles_Boots[#$A3,$00] = $7CAC;
	dg_ChangeTiles_Boots[#$A3,$03] = $25;
	dg_ChangeTiles_Boots[#$A4,$00] = $7CAD;
	dg_ChangeTiles_Boots[#$A4,$03] = $25;
	dg_ChangeTiles_Boots[#$A5,$00] = $7CAE;
	dg_ChangeTiles_Boots[#$A5,$03] = $25;
	dg_ChangeTiles_Boots[#$A6,$00] = $7CAF;
	dg_ChangeTiles_Boots[#$A6,$03] = $25;
	dg_ChangeTiles_Boots[#$A7,$00] = $7CB0;
	dg_ChangeTiles_Boots[#$A7,$03] = $25;
	dg_ChangeTiles_Boots[#$A8,$00] = $7CB1;
	dg_ChangeTiles_Boots[#$A8,$03] = $25;
	dg_ChangeTiles_Boots[#$A9,$00] = $7CB2;
	dg_ChangeTiles_Boots[#$A9,$03] = $25;
	dg_ChangeTiles_Boots[#$AA,$00] = $7CB3;
	dg_ChangeTiles_Boots[#$AA,$03] = $25;
	dg_ChangeTiles_Boots[#$AB,$00] = $7DA1;
	dg_ChangeTiles_Boots[#$AB,$03] = $25;
	dg_ChangeTiles_Boots[#$AC,$00] = $7DA2;
	dg_ChangeTiles_Boots[#$AC,$03] = $25;
	dg_ChangeTiles_Boots[#$AD,$00] = $7DA3;
	dg_ChangeTiles_Boots[#$AD,$03] = $25;
	dg_ChangeTiles_Boots[#$AE,$00] = $7DA4;
	dg_ChangeTiles_Boots[#$AE,$03] = $25;
	dg_ChangeTiles_Boots[#$AF,$00] = $7DA5;
	dg_ChangeTiles_Boots[#$AF,$03] = $25;

	dg_ChangeTiles_Boots[#$B0,$00] = $7DA6;
	dg_ChangeTiles_Boots[#$B0,$03] = $25;
	dg_ChangeTiles_Boots[#$B1,$00] = $7DA7;
	dg_ChangeTiles_Boots[#$B1,$03] = $25;
	dg_ChangeTiles_Boots[#$B2,$00] = $7DA8;
	dg_ChangeTiles_Boots[#$B2,$03] = $25;
	dg_ChangeTiles_Boots[#$B3,$00] = $7DA9;
	dg_ChangeTiles_Boots[#$B3,$03] = $25;
	dg_ChangeTiles_Boots[#$B4,$00] = $7DAA;
	dg_ChangeTiles_Boots[#$B4,$03] = $25;
	dg_ChangeTiles_Boots[#$B5,$00] = $7DAB;
	dg_ChangeTiles_Boots[#$B5,$03] = $25;
	dg_ChangeTiles_Boots[#$B6,$00] = $7DAC;
	dg_ChangeTiles_Boots[#$B6,$03] = $25;
	dg_ChangeTiles_Boots[#$B7,$00] = $7DAD;
	dg_ChangeTiles_Boots[#$B7,$03] = $25;
	dg_ChangeTiles_Boots[#$B8,$00] = $7DAE;
	dg_ChangeTiles_Boots[#$B8,$03] = $25;
	dg_ChangeTiles_Boots[#$B9,$00] = $7E9F;
	dg_ChangeTiles_Boots[#$B9,$03] = $25;
	dg_ChangeTiles_Boots[#$BA,$00] = $7EA0;
	dg_ChangeTiles_Boots[#$BA,$03] = $25;
	dg_ChangeTiles_Boots[#$BB,$00] = $7EA1;
	dg_ChangeTiles_Boots[#$BB,$03] = $25;
	dg_ChangeTiles_Boots[#$BC,$00] = $7EA2;
	dg_ChangeTiles_Boots[#$BC,$03] = $25;
	dg_ChangeTiles_Boots[#$BD,$00] = $7EA3;
	dg_ChangeTiles_Boots[#$BD,$03] = $25;
	dg_ChangeTiles_Boots[#$BE,$00] = $7EA4;
	dg_ChangeTiles_Boots[#$BE,$03] = $25;
	dg_ChangeTiles_Boots[#$BF,$00] = $7EA5;
	dg_ChangeTiles_Boots[#$BF,$03] = $25;

	dg_ChangeTiles_Boots[#$C0,$00] = $7EA6;
	dg_ChangeTiles_Boots[#$C0,$03] = $25;
	dg_ChangeTiles_Boots[#$C1,$00] = $7EA7;
	dg_ChangeTiles_Boots[#$C1,$03] = $25;
	dg_ChangeTiles_Boots[#$C2,$00] = $7EA8;
	dg_ChangeTiles_Boots[#$C2,$03] = $25;
	dg_ChangeTiles_Boots[#$C3,$00] = $7EA9;
	dg_ChangeTiles_Boots[#$C3,$03] = $25;
	dg_ChangeTiles_Boots[#$C4,$00] = $7EAA;
	dg_ChangeTiles_Boots[#$C4,$03] = $25;
	dg_ChangeTiles_Boots[#$C5,$00] = $7EAB;
	dg_ChangeTiles_Boots[#$C5,$03] = $25;
	dg_ChangeTiles_Boots[#$C6,$00] = $7F9E;
	dg_ChangeTiles_Boots[#$C6,$03] = $25;
	dg_ChangeTiles_Boots[#$C7,$00] = $7F9F;
	dg_ChangeTiles_Boots[#$C7,$03] = $25;
	dg_ChangeTiles_Boots[#$C8,$00] = $7FA0;
	dg_ChangeTiles_Boots[#$C8,$03] = $25;
	dg_ChangeTiles_Boots[#$C9,$00] = $7FA1;
	dg_ChangeTiles_Boots[#$C9,$03] = $25;
	dg_ChangeTiles_Boots[#$CA,$00] = $7FA2;
	dg_ChangeTiles_Boots[#$CA,$03] = $25;
	dg_ChangeTiles_Boots[#$CB,$00] = $7FA3;
	dg_ChangeTiles_Boots[#$CB,$03] = $25;
	dg_ChangeTiles_Boots[#$CC,$00] = $7FA4;
	dg_ChangeTiles_Boots[#$CC,$03] = $25;
	dg_ChangeTiles_Boots[#$CD,$00] = $7FA5;
	dg_ChangeTiles_Boots[#$CD,$03] = $25;
	dg_ChangeTiles_Boots[#$CE,$00] = $7FA6;
	dg_ChangeTiles_Boots[#$CE,$03] = $25;
	dg_ChangeTiles_Boots[#$CF,$00] = $7FA7;
	dg_ChangeTiles_Boots[#$CF,$03] = $25;

	dg_ChangeTiles_Boots[#$D0,$00] = $7FA8;
	dg_ChangeTiles_Boots[#$D0,$03] = $25;
	dg_ChangeTiles_Boots[#$D1,$00] = $7FA9;
	dg_ChangeTiles_Boots[#$D1,$03] = $25;
	dg_ChangeTiles_Boots[#$D2,$00] = $809C;
	dg_ChangeTiles_Boots[#$D2,$03] = $25;
	dg_ChangeTiles_Boots[#$D3,$00] = $809D;
	dg_ChangeTiles_Boots[#$D3,$03] = $25;
	dg_ChangeTiles_Boots[#$D4,$00] = $809E;
	dg_ChangeTiles_Boots[#$D4,$03] = $25;
	dg_ChangeTiles_Boots[#$D5,$00] = $809F;
	dg_ChangeTiles_Boots[#$D5,$03] = $25;
	dg_ChangeTiles_Boots[#$D6,$00] = $80A0;
	dg_ChangeTiles_Boots[#$D6,$03] = $25;
	dg_ChangeTiles_Boots[#$D7,$00] = $80A1;
	dg_ChangeTiles_Boots[#$D7,$03] = $25;
	dg_ChangeTiles_Boots[#$D8,$00] = $80A2;
	dg_ChangeTiles_Boots[#$D8,$03] = $25;
	dg_ChangeTiles_Boots[#$D9,$00] = $80A3;
	dg_ChangeTiles_Boots[#$D9,$03] = $25;
	dg_ChangeTiles_Boots[#$DA,$00] = $80A4;
	dg_ChangeTiles_Boots[#$DA,$03] = $25;
	dg_ChangeTiles_Boots[#$DB,$00] = $80A5;
	dg_ChangeTiles_Boots[#$DB,$03] = $25;
	dg_ChangeTiles_Boots[#$DC,$00] = $80A6;
	dg_ChangeTiles_Boots[#$DC,$03] = $25;
	dg_ChangeTiles_Boots[#$DD,$00] = $80A7;
	dg_ChangeTiles_Boots[#$DD,$03] = $25;
	dg_ChangeTiles_Boots[#$DE,$00] = $80A8;
	dg_ChangeTiles_Boots[#$DE,$03] = $25;
	dg_ChangeTiles_Boots[#$DF,$00] = $80B5;
	dg_ChangeTiles_Boots[#$DF,$03] = $25;

	dg_ChangeTiles_Boots[#$E0,$00] = $819A;
	dg_ChangeTiles_Boots[#$E0,$03] = $25;
	dg_ChangeTiles_Boots[#$E1,$00] = $819B;
	dg_ChangeTiles_Boots[#$E1,$03] = $25;
	dg_ChangeTiles_Boots[#$E2,$00] = $819C;
	dg_ChangeTiles_Boots[#$E2,$03] = $25;
	dg_ChangeTiles_Boots[#$E3,$00] = $819D;
	dg_ChangeTiles_Boots[#$E3,$03] = $25;
	dg_ChangeTiles_Boots[#$E4,$00] = $819E;
	dg_ChangeTiles_Boots[#$E4,$03] = $25;
	dg_ChangeTiles_Boots[#$E5,$00] = $819F;
	dg_ChangeTiles_Boots[#$E5,$03] = $25;
	dg_ChangeTiles_Boots[#$E6,$00] = $81A0;
	dg_ChangeTiles_Boots[#$E6,$03] = $25;
	dg_ChangeTiles_Boots[#$E7,$00] = $81A1;
	dg_ChangeTiles_Boots[#$E7,$03] = $25;
	dg_ChangeTiles_Boots[#$E8,$00] = $81A2;
	dg_ChangeTiles_Boots[#$E8,$03] = $25;
	dg_ChangeTiles_Boots[#$E9,$00] = $81A3;
	dg_ChangeTiles_Boots[#$E9,$03] = $25;
	dg_ChangeTiles_Boots[#$EA,$00] = $81A4;
	dg_ChangeTiles_Boots[#$EA,$03] = $25;
	dg_ChangeTiles_Boots[#$EB,$00] = $81A5;
	dg_ChangeTiles_Boots[#$EB,$03] = $25;
	dg_ChangeTiles_Boots[#$EC,$00] = $81A6;
	dg_ChangeTiles_Boots[#$EC,$03] = $25;
	dg_ChangeTiles_Boots[#$ED,$00] = $81A7;
	dg_ChangeTiles_Boots[#$ED,$03] = $25;
	dg_ChangeTiles_Boots[#$EE,$00] = $81A8;
	dg_ChangeTiles_Boots[#$EE,$03] = $25;
	dg_ChangeTiles_Boots[#$EF,$00] = $81B6;
	dg_ChangeTiles_Boots[#$EF,$03] = $25;

	dg_ChangeTiles_Boots[#$F0,$00] = $8299;
	dg_ChangeTiles_Boots[#$F0,$03] = $25;
	dg_ChangeTiles_Boots[#$F1,$00] = $829A;
	dg_ChangeTiles_Boots[#$F1,$03] = $25;
	dg_ChangeTiles_Boots[#$F2,$00] = $829B;
	dg_ChangeTiles_Boots[#$F2,$03] = $25;
	dg_ChangeTiles_Boots[#$F3,$00] = $829C;
	dg_ChangeTiles_Boots[#$F3,$03] = $25;
	dg_ChangeTiles_Boots[#$F4,$00] = $829D;
	dg_ChangeTiles_Boots[#$F4,$03] = $25;
	dg_ChangeTiles_Boots[#$F5,$00] = $829E;
	dg_ChangeTiles_Boots[#$F5,$03] = $25;
	dg_ChangeTiles_Boots[#$F6,$00] = $829F;
	dg_ChangeTiles_Boots[#$F6,$03] = $25;
	dg_ChangeTiles_Boots[#$F7,$00] = $82A0;
	dg_ChangeTiles_Boots[#$F7,$03] = $25;
	dg_ChangeTiles_Boots[#$F8,$00] = $82A1;
	dg_ChangeTiles_Boots[#$F8,$03] = $25;
	dg_ChangeTiles_Boots[#$F9,$00] = $82A2;
	dg_ChangeTiles_Boots[#$F9,$03] = $25;
	dg_ChangeTiles_Boots[#$FA,$00] = $82A3;
	dg_ChangeTiles_Boots[#$FA,$03] = $25;
	dg_ChangeTiles_Boots[#$FB,$00] = $82A4;
	dg_ChangeTiles_Boots[#$FB,$03] = $25;
	dg_ChangeTiles_Boots[#$FC,$00] = $82A5;
	dg_ChangeTiles_Boots[#$FC,$03] = $25;
	dg_ChangeTiles_Boots[#$FD,$00] = $82A6;
	dg_ChangeTiles_Boots[#$FD,$03] = $25;
	dg_ChangeTiles_Boots[#$FE,$00] = $82A7;
	dg_ChangeTiles_Boots[#$FE,$03] = $25;
	dg_ChangeTiles_Boots[#$FF,$00] = $82B6;
	dg_ChangeTiles_Boots[#$FF,$03] = $25;

	dg_ChangeTiles_Boots[#$0100,$00] = $8398;
	dg_ChangeTiles_Boots[#$0100,$03] = $25;
	dg_ChangeTiles_Boots[#$0101,$00] = $8399;
	dg_ChangeTiles_Boots[#$0101,$03] = $25;
	dg_ChangeTiles_Boots[#$0102,$00] = $839A;
	dg_ChangeTiles_Boots[#$0102,$03] = $25;
	dg_ChangeTiles_Boots[#$0103,$00] = $839B;
	dg_ChangeTiles_Boots[#$0103,$03] = $25;
	dg_ChangeTiles_Boots[#$0104,$00] = $839D;
	dg_ChangeTiles_Boots[#$0104,$03] = $25;
	dg_ChangeTiles_Boots[#$0105,$00] = $839E;
	dg_ChangeTiles_Boots[#$0105,$03] = $25;
	dg_ChangeTiles_Boots[#$0106,$00] = $839F;
	dg_ChangeTiles_Boots[#$0106,$03] = $25;
	dg_ChangeTiles_Boots[#$0107,$00] = $83A0;
	dg_ChangeTiles_Boots[#$0107,$03] = $25;
	dg_ChangeTiles_Boots[#$0108,$00] = $83A1;
	dg_ChangeTiles_Boots[#$0108,$03] = $25;
	dg_ChangeTiles_Boots[#$0109,$00] = $83A2;
	dg_ChangeTiles_Boots[#$0109,$03] = $25;
	dg_ChangeTiles_Boots[#$010A,$00] = $83A3;
	dg_ChangeTiles_Boots[#$010A,$03] = $25;
	dg_ChangeTiles_Boots[#$010B,$00] = $83A4;
	dg_ChangeTiles_Boots[#$010B,$03] = $25;
	dg_ChangeTiles_Boots[#$010C,$00] = $83A5;
	dg_ChangeTiles_Boots[#$010C,$03] = $25;
	dg_ChangeTiles_Boots[#$010D,$00] = $83A6;
	dg_ChangeTiles_Boots[#$010D,$03] = $25;
	dg_ChangeTiles_Boots[#$010E,$00] = $83B5;
	dg_ChangeTiles_Boots[#$010E,$03] = $25;
	dg_ChangeTiles_Boots[#$010F,$00] = $83B6;
	dg_ChangeTiles_Boots[#$010F,$03] = $25;

	dg_ChangeTiles_Boots[#$0110,$00] = $8498;
	dg_ChangeTiles_Boots[#$0110,$03] = $25;
	dg_ChangeTiles_Boots[#$0111,$00] = $8499;
	dg_ChangeTiles_Boots[#$0111,$03] = $25;
	dg_ChangeTiles_Boots[#$0112,$00] = $849A;
	dg_ChangeTiles_Boots[#$0112,$03] = $25;
	dg_ChangeTiles_Boots[#$0113,$00] = $849B;
	dg_ChangeTiles_Boots[#$0113,$03] = $25;
	dg_ChangeTiles_Boots[#$0114,$00] = $849C;
	dg_ChangeTiles_Boots[#$0114,$03] = $25;
	dg_ChangeTiles_Boots[#$0115,$00] = $849D;
	dg_ChangeTiles_Boots[#$0115,$03] = $25;
	dg_ChangeTiles_Boots[#$0116,$00] = $849E;
	dg_ChangeTiles_Boots[#$0116,$03] = $25;
	dg_ChangeTiles_Boots[#$0117,$00] = $849F;
	dg_ChangeTiles_Boots[#$0117,$03] = $25;
	dg_ChangeTiles_Boots[#$0118,$00] = $84A0;
	dg_ChangeTiles_Boots[#$0118,$03] = $25;
	dg_ChangeTiles_Boots[#$0119,$00] = $84A1;
	dg_ChangeTiles_Boots[#$0119,$03] = $25;
	dg_ChangeTiles_Boots[#$011A,$00] = $84A2;
	dg_ChangeTiles_Boots[#$011A,$03] = $25;
	dg_ChangeTiles_Boots[#$011B,$00] = $84A3;
	dg_ChangeTiles_Boots[#$011B,$03] = $25;
	dg_ChangeTiles_Boots[#$011C,$00] = $84A4;
	dg_ChangeTiles_Boots[#$011C,$03] = $25;
	dg_ChangeTiles_Boots[#$011D,$00] = $84A5;
	dg_ChangeTiles_Boots[#$011D,$03] = $25;
	dg_ChangeTiles_Boots[#$011E,$00] = $84B4;
	dg_ChangeTiles_Boots[#$011E,$03] = $25;
	dg_ChangeTiles_Boots[#$011F,$00] = $84B5;
	dg_ChangeTiles_Boots[#$011F,$03] = $25;

	dg_ChangeTiles_Boots[#$0120,$00] = $84B6;
	dg_ChangeTiles_Boots[#$0120,$03] = $25;
	dg_ChangeTiles_Boots[#$0121,$00] = $8599;
	dg_ChangeTiles_Boots[#$0121,$03] = $25;
	dg_ChangeTiles_Boots[#$0122,$00] = $859A;
	dg_ChangeTiles_Boots[#$0122,$03] = $25;
	dg_ChangeTiles_Boots[#$0123,$00] = $859B;
	dg_ChangeTiles_Boots[#$0123,$03] = $25;
	dg_ChangeTiles_Boots[#$0124,$00] = $859C;
	dg_ChangeTiles_Boots[#$0124,$03] = $25;
	dg_ChangeTiles_Boots[#$0125,$00] = $859D;
	dg_ChangeTiles_Boots[#$0125,$03] = $25;
	dg_ChangeTiles_Boots[#$0126,$00] = $859E;
	dg_ChangeTiles_Boots[#$0126,$03] = $25;
	dg_ChangeTiles_Boots[#$0127,$00] = $859F;
	dg_ChangeTiles_Boots[#$0127,$03] = $25;
	dg_ChangeTiles_Boots[#$0128,$00] = $85A0;
	dg_ChangeTiles_Boots[#$0128,$03] = $25;
	dg_ChangeTiles_Boots[#$0129,$00] = $85A1;
	dg_ChangeTiles_Boots[#$0129,$03] = $25;
	dg_ChangeTiles_Boots[#$012A,$00] = $85A2;
	dg_ChangeTiles_Boots[#$012A,$03] = $25;
	dg_ChangeTiles_Boots[#$012B,$00] = $85A3;
	dg_ChangeTiles_Boots[#$012B,$03] = $25;
	dg_ChangeTiles_Boots[#$012C,$00] = $85A4;
	dg_ChangeTiles_Boots[#$012C,$03] = $25;
	dg_ChangeTiles_Boots[#$012D,$00] = $85B4;
	dg_ChangeTiles_Boots[#$012D,$03] = $25;
	dg_ChangeTiles_Boots[#$012E,$00] = $869A;
	dg_ChangeTiles_Boots[#$012E,$03] = $25;
	dg_ChangeTiles_Boots[#$012F,$00] = $869B;
	dg_ChangeTiles_Boots[#$012F,$03] = $25;

	dg_ChangeTiles_Boots[#$0130,$00] = $869C;
	dg_ChangeTiles_Boots[#$0130,$03] = $25;
	dg_ChangeTiles_Boots[#$0131,$00] = $869D;
	dg_ChangeTiles_Boots[#$0131,$03] = $25;
	dg_ChangeTiles_Boots[#$0132,$00] = $869E;
	dg_ChangeTiles_Boots[#$0132,$03] = $25;
	dg_ChangeTiles_Boots[#$0133,$00] = $869F;
	dg_ChangeTiles_Boots[#$0133,$03] = $25;
	dg_ChangeTiles_Boots[#$0134,$00] = $86A0;
	dg_ChangeTiles_Boots[#$0134,$03] = $25;
	dg_ChangeTiles_Boots[#$0135,$00] = $86A1;
	dg_ChangeTiles_Boots[#$0135,$03] = $25;
	dg_ChangeTiles_Boots[#$0136,$00] = $86A2;
	dg_ChangeTiles_Boots[#$0136,$03] = $25;
	dg_ChangeTiles_Boots[#$0137,$00] = $86A3;
	dg_ChangeTiles_Boots[#$0137,$03] = $25;
	dg_ChangeTiles_Boots[#$0138,$00] = $86A4;
	dg_ChangeTiles_Boots[#$0138,$03] = $25;
	dg_ChangeTiles_Boots[#$0139,$00] = $86B3;
	dg_ChangeTiles_Boots[#$0139,$03] = $25;
	dg_ChangeTiles_Boots[#$013A,$00] = $879B;
	dg_ChangeTiles_Boots[#$013A,$03] = $25;
	dg_ChangeTiles_Boots[#$013B,$00] = $879C;
	dg_ChangeTiles_Boots[#$013B,$03] = $25;
	dg_ChangeTiles_Boots[#$013C,$00] = $879D;
	dg_ChangeTiles_Boots[#$013C,$03] = $25;
	dg_ChangeTiles_Boots[#$013D,$00] = $879E;
	dg_ChangeTiles_Boots[#$013D,$03] = $25;
	dg_ChangeTiles_Boots[#$013E,$00] = $879F;
	dg_ChangeTiles_Boots[#$013E,$03] = $25;
	dg_ChangeTiles_Boots[#$013F,$00] = $87A0;
	dg_ChangeTiles_Boots[#$013F,$03] = $25;

	dg_ChangeTiles_Boots[#$0140,$00] = $87A1;
	dg_ChangeTiles_Boots[#$0140,$03] = $25;
	dg_ChangeTiles_Boots[#$0141,$00] = $87A2;
	dg_ChangeTiles_Boots[#$0141,$03] = $25;
	dg_ChangeTiles_Boots[#$0142,$00] = $87A3;
	dg_ChangeTiles_Boots[#$0142,$03] = $25;
	dg_ChangeTiles_Boots[#$0143,$00] = $889C;
	dg_ChangeTiles_Boots[#$0143,$03] = $25;
	dg_ChangeTiles_Boots[#$0144,$00] = $889D;
	dg_ChangeTiles_Boots[#$0144,$03] = $25;
	dg_ChangeTiles_Boots[#$0145,$00] = $889E;
	dg_ChangeTiles_Boots[#$0145,$03] = $25;
	dg_ChangeTiles_Boots[#$0146,$00] = $889F;
	dg_ChangeTiles_Boots[#$0146,$03] = $25;
	dg_ChangeTiles_Boots[#$0147,$00] = $88A0;
	dg_ChangeTiles_Boots[#$0147,$03] = $25;
	dg_ChangeTiles_Boots[#$0148,$00] = $88A1;
	dg_ChangeTiles_Boots[#$0148,$03] = $25;
	dg_ChangeTiles_Boots[#$0149,$00] = $88A2;
	dg_ChangeTiles_Boots[#$0149,$03] = $25;
	dg_ChangeTiles_Boots[#$014A,$00] = $8994;
	dg_ChangeTiles_Boots[#$014A,$03] = $25;
	dg_ChangeTiles_Boots[#$014B,$00] = $8995;
	dg_ChangeTiles_Boots[#$014B,$03] = $25;
	dg_ChangeTiles_Boots[#$014C,$00] = $8996;
	dg_ChangeTiles_Boots[#$014C,$03] = $25;
	dg_ChangeTiles_Boots[#$014D,$00] = $899D;
	dg_ChangeTiles_Boots[#$014D,$03] = $25;
	dg_ChangeTiles_Boots[#$014E,$00] = $899E;
	dg_ChangeTiles_Boots[#$014E,$03] = $25;
	dg_ChangeTiles_Boots[#$014F,$00] = $899F;
	dg_ChangeTiles_Boots[#$014F,$03] = $25;

	dg_ChangeTiles_Boots[#$0150,$00] = $89A0;
	dg_ChangeTiles_Boots[#$0150,$03] = $25;
	dg_ChangeTiles_Boots[#$0151,$00] = $89A1;
	dg_ChangeTiles_Boots[#$0151,$03] = $25;
	dg_ChangeTiles_Boots[#$0152,$00] = $8A92;
	dg_ChangeTiles_Boots[#$0152,$03] = $25;
	dg_ChangeTiles_Boots[#$0153,$00] = $8A93;
	dg_ChangeTiles_Boots[#$0153,$03] = $25;
	dg_ChangeTiles_Boots[#$0154,$00] = $8A94;
	dg_ChangeTiles_Boots[#$0154,$03] = $25;
	dg_ChangeTiles_Boots[#$0155,$00] = $8A9F;
	dg_ChangeTiles_Boots[#$0155,$03] = $25;
	dg_ChangeTiles_Boots[#$0156,$00] = $8AA0;
	dg_ChangeTiles_Boots[#$0156,$03] = $25;
	dg_ChangeTiles_Boots[#$0157,$00] = $8B93;
	dg_ChangeTiles_Boots[#$0157,$03] = $25;
	dg_ChangeTiles_Boots[#$0158,$00] = $8B94;
	dg_ChangeTiles_Boots[#$0158,$03] = $25;
	dg_ChangeTiles_Boots[#$0159,$00] = $8B95;
	dg_ChangeTiles_Boots[#$0159,$03] = $25;
	dg_ChangeTiles_Boots[#$015A,$00] = $8C94;
	dg_ChangeTiles_Boots[#$015A,$03] = $25;
	dg_ChangeTiles_Boots[#$015B,$00] = $8D94;
	dg_ChangeTiles_Boots[#$015B,$03] = $25;
	dg_ChangeTiles_Boots[#$015C,$00] = $8E94;
	dg_ChangeTiles_Boots[#$015C,$03] = $25;
	dg_ChangeTiles_Boots[#$015D,$00] = $8E95;
	dg_ChangeTiles_Boots[#$015D,$03] = $25;
	dg_ChangeTiles_Boots[#$015E,$00] = $8F95;
	dg_ChangeTiles_Boots[#$015E,$03] = $25;
	dg_ChangeTiles_Boots[#$015F,$00] = $93A9;
	dg_ChangeTiles_Boots[#$015F,$03] = $25;

	dg_ChangeTiles_Boots[#$0160,$00] = $93AA;
	dg_ChangeTiles_Boots[#$0160,$03] = $25;
	dg_ChangeTiles_Boots[#$0161,$00] = $93AB;
	dg_ChangeTiles_Boots[#$0161,$03] = $25;
	dg_ChangeTiles_Boots[#$0162,$00] = $94AB;
	dg_ChangeTiles_Boots[#$0162,$03] = $25;
	dg_ChangeTiles_Boots[#$0163,$00] = $95A8;
	dg_ChangeTiles_Boots[#$0163,$03] = $25;
	dg_ChangeTiles_Boots[#$0164,$00] = $95AB;
	dg_ChangeTiles_Boots[#$0164,$03] = $25;
	dg_ChangeTiles_Boots[#$0165,$00] = $95AC;
	dg_ChangeTiles_Boots[#$0165,$03] = $25;
	dg_ChangeTiles_Boots[#$0166,$00] = $95AD;
	dg_ChangeTiles_Boots[#$0166,$03] = $25;
	dg_ChangeTiles_Boots[#$0167,$00] = $9652;
	dg_ChangeTiles_Boots[#$0167,$03] = $25;
	dg_ChangeTiles_Boots[#$0168,$00] = $96A7;
	dg_ChangeTiles_Boots[#$0168,$03] = $25;
	dg_ChangeTiles_Boots[#$0169,$00] = $96A8;
	dg_ChangeTiles_Boots[#$0169,$03] = $25;
	dg_ChangeTiles_Boots[#$016A,$00] = $96A9;
	dg_ChangeTiles_Boots[#$016A,$03] = $25;
	dg_ChangeTiles_Boots[#$016B,$00] = $96AA;
	dg_ChangeTiles_Boots[#$016B,$03] = $25;
	dg_ChangeTiles_Boots[#$016C,$00] = $96AC;
	dg_ChangeTiles_Boots[#$016C,$03] = $25;
	dg_ChangeTiles_Boots[#$016D,$00] = $9751;
	dg_ChangeTiles_Boots[#$016D,$03] = $25;
	dg_ChangeTiles_Boots[#$016E,$00] = $97A8;
	dg_ChangeTiles_Boots[#$016E,$03] = $25;
	dg_ChangeTiles_Boots[#$016F,$00] = $97AA;
	dg_ChangeTiles_Boots[#$016F,$03] = $25;

	dg_ChangeTiles_Boots[#$0170,$00] = $97AB;
	dg_ChangeTiles_Boots[#$0170,$03] = $25;
	dg_ChangeTiles_Boots[#$0171,$00] = $97AC;
	dg_ChangeTiles_Boots[#$0171,$03] = $25;
	dg_ChangeTiles_Boots[#$0172,$00] = $97AD;
	dg_ChangeTiles_Boots[#$0172,$03] = $25;
	dg_ChangeTiles_Boots[#$0173,$00] = $9851;
	dg_ChangeTiles_Boots[#$0173,$03] = $25;
	dg_ChangeTiles_Boots[#$0174,$00] = $98AB;
	dg_ChangeTiles_Boots[#$0174,$03] = $25;
	dg_ChangeTiles_Boots[#$0175,$00] = $9951;
	dg_ChangeTiles_Boots[#$0175,$03] = $25;
	dg_ChangeTiles_Boots[#$0176,$00] = $9A50;
	dg_ChangeTiles_Boots[#$0176,$03] = $25;
	dg_ChangeTiles_Boots[#$0177,$00] = $9A51;
	dg_ChangeTiles_Boots[#$0177,$03] = $25;
	dg_ChangeTiles_Boots[#$0178,$00] = $9B50;
	dg_ChangeTiles_Boots[#$0178,$03] = $25;
	dg_ChangeTiles_Boots[#$0179,$00] = $A34D;
	dg_ChangeTiles_Boots[#$0179,$03] = $25;
	dg_ChangeTiles_Boots[#$017A,$00] = $A34E;
	dg_ChangeTiles_Boots[#$017A,$03] = $25;
	dg_ChangeTiles_Boots[#$017B,$00] = $A34F;
	dg_ChangeTiles_Boots[#$017B,$03] = $25;
	dg_ChangeTiles_Boots[#$017C,$00] = $A449;
	dg_ChangeTiles_Boots[#$017C,$03] = $25;
	dg_ChangeTiles_Boots[#$017D,$00] = $A44A;
	dg_ChangeTiles_Boots[#$017D,$03] = $25;
	dg_ChangeTiles_Boots[#$017E,$00] = $A44C;
	dg_ChangeTiles_Boots[#$017E,$03] = $25;
	dg_ChangeTiles_Boots[#$017F,$00] = $A44D;
	dg_ChangeTiles_Boots[#$017F,$03] = $25;

	dg_ChangeTiles_Boots[#$0180,$00] = $A44E;
	dg_ChangeTiles_Boots[#$0180,$03] = $25;
	dg_ChangeTiles_Boots[#$0181,$00] = $A548;
	dg_ChangeTiles_Boots[#$0181,$03] = $25;
	dg_ChangeTiles_Boots[#$0182,$00] = $A549;
	dg_ChangeTiles_Boots[#$0182,$03] = $25;
	dg_ChangeTiles_Boots[#$0183,$00] = $A648;
	dg_ChangeTiles_Boots[#$0183,$03] = $25;
	dg_ChangeTiles_Boots[#$0184,$00] = $A748;
	dg_ChangeTiles_Boots[#$0184,$03] = $25;
	dg_ChangeTiles_Boots[#$0185,$00] = $A847;
	dg_ChangeTiles_Boots[#$0185,$03] = $25;
	dg_ChangeTiles_Boots[#$0186,$00] = $A887;
	dg_ChangeTiles_Boots[#$0186,$03] = $25;
	dg_ChangeTiles_Boots[#$0187,$00] = $A888;
	dg_ChangeTiles_Boots[#$0187,$03] = $25;
	dg_ChangeTiles_Boots[#$0188,$00] = $A889;
	dg_ChangeTiles_Boots[#$0188,$03] = $25;
	dg_ChangeTiles_Boots[#$0189,$00] = $A946;
	dg_ChangeTiles_Boots[#$0189,$03] = $25;
	dg_ChangeTiles_Boots[#$018A,$00] = $A983;
	dg_ChangeTiles_Boots[#$018A,$03] = $25;
	dg_ChangeTiles_Boots[#$018B,$00] = $A984;
	dg_ChangeTiles_Boots[#$018B,$03] = $25;
	dg_ChangeTiles_Boots[#$018C,$00] = $A985;
	dg_ChangeTiles_Boots[#$018C,$03] = $25;
	dg_ChangeTiles_Boots[#$018D,$00] = $A986;
	dg_ChangeTiles_Boots[#$018D,$03] = $25;
	dg_ChangeTiles_Boots[#$018E,$00] = $A987;
	dg_ChangeTiles_Boots[#$018E,$03] = $25;
	dg_ChangeTiles_Boots[#$018F,$00] = $AA45;
	dg_ChangeTiles_Boots[#$018F,$03] = $25;

	dg_ChangeTiles_Boots[#$0190,$00] = $AB44;
	dg_ChangeTiles_Boots[#$0190,$03] = $25;
	dg_ChangeTiles_Boots[#$0191,$00] = $AC43;
	dg_ChangeTiles_Boots[#$0191,$03] = $25;
	dg_ChangeTiles_Boots[#$0192,$00] = $AC44;
	dg_ChangeTiles_Boots[#$0192,$03] = $25;
	dg_ChangeTiles_Boots[#$0193,$00] = $AF43;
	dg_ChangeTiles_Boots[#$0193,$03] = $25;
	dg_ChangeTiles_Boots[#$0194,$00] = $B042;
	dg_ChangeTiles_Boots[#$0194,$03] = $25;
	dg_ChangeTiles_Boots[#$0195,$00] = $B043;
	dg_ChangeTiles_Boots[#$0195,$03] = $25;
	dg_ChangeTiles_Boots[#$0196,$00] = $B143;
	dg_ChangeTiles_Boots[#$0196,$03] = $25;
	dg_ChangeTiles_Boots[#$0197,$00] = $B244;
	dg_ChangeTiles_Boots[#$0197,$03] = $25;
	dg_ChangeTiles_Boots[#$0198,$00] = $B345;
	dg_ChangeTiles_Boots[#$0198,$03] = $25;
	dg_ChangeTiles_Boots[#$0199,$00] = $B446;
	dg_ChangeTiles_Boots[#$0199,$03] = $25;
	dg_ChangeTiles_Boots[#$019A,$00] = $B447;
	dg_ChangeTiles_Boots[#$019A,$03] = $25;








	dm_data[?"8A8D"+STR_River_Devil+STR_State] = 1;
	dm_data[?STR_OWRC+STR_River_Devil+"01"] = $8A8D;
	dm_data[?"8A8D"+STR_River_Devil] = $01;
	dm_data[?"8A8D"+STR_TSRC+STR_Under+STR_River_Devil] = $B3;

	dm_data[?STR_Rando+STR_River_Devil+STR_OWRC] = $6057;
	dm_data[?STR_Rando+STR_River_Devil+STR_TSRC] = $D8;
	dm_data[?"6057"+STR_TSRC+STR_Under+STR_River_Devil] = TSRC_PATH02;








	dm_data[?STR_Rando+STR_Exit+STR_Count] = $03;

	dm_data[?STR_Rando+STR_Exit+"01"+STR_OWRC] = $6155;
	dm_data[?"6155"+STR_Rando+STR_Exit+STR_Num] = $01;

	dm_data[?STR_Rando+STR_Exit+"02"+STR_OWRC] = $5F53;
	dm_data[?"5F53"+STR_Rando+STR_Exit+STR_Num] = $02;

	dm_data[?STR_Rando+STR_Exit+"03"+STR_OWRC] = $6965;
	dm_data[?"6965"+STR_Rando+STR_Exit+STR_Num] = $03;








	ds_grid_copy(dg_solid,dg_solid_def);
	ds_grid_copy(dg_tsrc,dg_tsrc_def);
	ds_list_destroy(_dl1); _dl1=undefined;
	ds_list_destroy(_dl_AreaNames); _dl_AreaNames=undefined;







}
