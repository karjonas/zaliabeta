/// @description  RandoData_enemy(obj, ver, difficulty, *ENIGMA difficulty, *Dripper difficulty)
function RandoData_enemy() {

	// *** g_Create() calls Rando_init_enemy_data() which calls this


	var _i, _a, _count;
	var _datakey1,_datakey2,_datakey3;

	                           _a=0;
	var _OBJ        = argument[_a++];
	var _VER        = argument[_a++];
	var _DIFFICULTY = argument[_a++];
	//
	var                    _DIFFICULTY_ENIGMA = 0;
	if (argument_count>_a) _DIFFICULTY_ENIGMA = argument[_a++];

	var                    _DIFFICULTY_DRIPPER = 0;
	if (argument_count>_a) _DIFFICULTY_DRIPPER = argument[_a++];



	var _OBJVER = object_get_name(_OBJ)+hex_str(_VER);
	var _difficulty=0;


	// 0: Normal enemy rando, 1: Enigma enemy ranod, 2: Dripper enemy rando
	for(_i=0; _i<3; _i++)
	{
	    switch(_i)
	    {
	        default:{
	        _difficulty=_DIFFICULTY;
	        _datakey1 = STR_Difficulty+hex_str(_difficulty);
	        _datakey2 = _OBJVER+STR_Difficulty;
	        break;}
        
	        case 1:{
	        if (_DIFFICULTY_ENIGMA) // if ENIGMA can spawn this objver
	        {
	            _difficulty=_DIFFICULTY_ENIGMA;
	            _datakey1 = STR_ENIGMA+STR_Difficulty+hex_str(_difficulty);
	            _datakey2 = STR_ENIGMA+_OBJVER+STR_Difficulty;
	        }
	        break;}
        
	        case 2:{
	        if (_DIFFICULTY_DRIPPER) // if Drippers can spawn this objver
	        {
	            _difficulty=_DIFFICULTY_DRIPPER;
	            _datakey1 = STR_Dripper+STR_Difficulty+hex_str(_difficulty);
	            _datakey2 = STR_Dripper+_OBJVER+STR_Difficulty;
	        }
	        break;}
	    }
    
    
	    if (is_undefined(dm_RandoEnemy[?_datakey2])) // if no data for this objver yet
	    {
	                     dm_RandoEnemy[?_datakey2] = _difficulty;
	        //
	        _count = val(dm_RandoEnemy[?_datakey1+STR_Count]) + 1;
	                     dm_RandoEnemy[?_datakey1+STR_Count] = _count;
	        //
	        // _datakey3 example: STR_Difficulty + "02" + "06"
	                       _datakey3 =  _datakey1+hex_str(_count-1);
	        dm_RandoEnemy[?_datakey3+STR_Object]  = _OBJ;
	        dm_RandoEnemy[?_datakey3+STR_Version] = _VER;
	        dm_RandoEnemy[?_datakey3+STR_OBJVER]  = _OBJVER;
        
	        RandoEnemy_difficulty_MAX = max(RandoEnemy_difficulty_MAX, _difficulty);
	    }
	}



	//var _AREA=Area_WestA;
	//g.dm_go_prop[?_OBJVER+STR_React_Sword+_AREA]
	//g.dm_go_prop[?_OBJVER+STR_React_Proj +_AREA]
	//g.dm_go_prop[?_OBJVER+STR_React_Thun +_AREA]
	//g.dm_go_prop[?_OBJVER+STR_React_Spell+_AREA]







}
