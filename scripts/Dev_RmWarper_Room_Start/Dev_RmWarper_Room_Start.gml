/// @description  Dev_RmWarper_Room_Start()
function Dev_RmWarper_Room_Start() {


	//                                      // 
	//g.dev_rm_warper_active = false;
	state       = STATE_IDLE;
	//                                      // 
	timer       = 0;
	//                                      // 
	area_idx    =  0;
	rm_id       =  0;
	ExitID      =  0;
	exit_idx    =  0;
	//                                      // 
	if (g.room_type=="A")
	{
	    var _SCENE_NAME = val(f.dm_rando[?g.rm_name+STR_Scene+STR_Name], g.rm_name);
	    var _AREA_NAME = string_copy(_SCENE_NAME,1,AreaID_LEN);
	    var _RM_NUM = str_hex(string_copy(_SCENE_NAME,AreaID_LEN+1,2));
    
	    area_idx    =  ds_list_find_index(g.dl_AREA_NAME, _AREA_NAME);
	    rm_id       =  _RM_NUM;                     // $00-FF
	    //area_idx    =  ds_list_find_index(g.dl_AREA_NAME, g.area_name);
	    //rm_id       =  g.rm_num;                     // $00-FF
	    //                                           // 
    
	    if(!is_undefined(   g.exit_enter) 
	    &&  instance_exists(g.exit_enter) )
	    {   ExitID =        g.exit_enter.exitNum;  }      // $00-0F, $10-1F, $20-2F, $40-4F, $80-8F
	    else with(Exit){
	        ExitID = exitNum;
	        break;
	    }
	    //                                           // 
	    exit_idx    =  bitNum((ExitID&$FF)>>4);     // 0,1,2,3,4
	    exit_idx    = (exit_idx<<4) | (ExitID&$F); // $00-4F
	}
	//                                           // 







}
