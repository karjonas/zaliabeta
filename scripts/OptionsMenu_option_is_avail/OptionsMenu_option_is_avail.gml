/// @description  OptionsMenu_option_is_avail(menu, option index)
function OptionsMenu_option_is_avail(argument0, argument1) {


	switch(argument0)
	{
	    // ============================================================
	    case Menu_MAIN:{
	    switch(argument1)
	    {
	        default:                       {return false; break;}
	        case MainOption_SND_VOL:       {return true; break;}
	        case MainOption_MUS_VOL:       {return true; break;}
	        case MainOption_MUSIC_SET:     {return true; break;}
	        case MainOption_INPUT_CONFIG:  {return true; break;}
	        case MainOption_DEV_TOOLS:     {return true; break;}
	        case MainOption_PC_SPRITES:    {return true; break;}
	        case MainOption_FULLSCREEN:    {return true; break;}
	        case MainOption_APP_SCALE:     {return true; break;}
	        case MainOption_FLASHING:      {return true; break;}
	        case MainOption_SCREEN_SHAKE:  {return true; break;}
	        case MainOption_DIALOGUE_SPEED:{return true; break;}
	        //case MainOption_SHOW_ACTIVE_SPELLS:{return true; break;}
	        //case MainOption_HUD_STATE:{return true; break;}
	        case MainOption_TORCH_LIGHTING:{return true; break;}
	        //case MainOption_RENDER_DELAY:{return true; break;}
	        case MainOption_STAB_FRENZY:   {return f.items&ITM_SWRD; break;}
	        //case MainOption_CUCCO_PERMANANT:{return g.CuccoSpell2_Acquired>0; break;}
	        case MainOption_RANDO_OPTIONS: {return true; break;}
	        case MainOption_ANARKHYA_OW:   {return g.anarkhyaOverworld_MAIN; break;}
	        case MainOption_HALLOWEEN1:    {return true; break;}
	        case MainOption_FORCE_GAMEOVER:{return true; break;}
	        case MainOption_CLOSE:         {return true; break;}
	    }//switch(argument1)
	    break;}//case Menu_MAIN
    
    
    
    
    
    
    
	    // ============================================================
	    case Menu_DEV_TOOLS:{
	    switch(argument1)
	    {
	        default:                      {return false; break;}
	        case DevTools_DEV_TOOLS_STATE:{return true; break;}
	        case DevTools_SET_DEFAULT:    {return true; break;}
	        case DevTools_APP_PERFORMANCE:{return true; break;}
	        case DevTools_HITBOXES:       {return true; break;}
	        case DevTools_SCP:            {return true; break;}
	        case DevTools_XY:             {return true; break;}
	        case DevTools_OCS:            {return true; break;}
	        case DevTools_OG_CAM:         {return true; break;}
	        case DevTools_HP:             {return true; break;}
	        case DevTools_SPRITE_OUTLINE: {return true; break;}
	        case DevTools_FRAME_COUNT:    {return true; break;}
	        case DevTools_BGR_BLACK:      {return true; break;}
	        case DevTools_EXITS:          {return DEV; break;}
	        case DevTools_SOLID_TILES:    {return DEV; break;}
	        case DevTools_UNIQUE_TILES:   {return DEV; break;}
	        case DevTools_DUNGEON_MAP:    {return DEV; break;}
	        case DevTools_ADD_ITEMS:      {return DEV; break;}
	        case DevTools_DOUBLE_JUMP:    {return f.items&ITM_FTHR; break;}
	        //case DevTools_DOUBLE_JUMP:    {return DEV && f.items&ITM_FTHR; break;}
	        case DevTools_INVULNERABILITY:{return DEV; break;}
	        case DevTools_PC_DASH:        {return DEV; break;}
	        case DevTools_BACK:           {return true; break;}
	    }//switch(argument1)
	    break;}//case Menu_DEV_TOOLS
    
    
    
    
    
    
    
	    // ============================================================
	    case Menu_RANDO_OPTIONS:{
	    switch(argument1)
	    {
	        default:{
	        return false;
	        break;}
        
	        case RandoOptions_MARK_ACQUIRED:{
	        return val(f.dm_rando[?STR_Randomize+STR_Item+STR_Locations]) 
	            || val(f.dm_rando[?STR_Randomize+STR_PBAG+STR_Locations]) 
	            || val(f.dm_rando[?STR_Randomize+STR_Key +STR_Locations]);
	        break;}
        
	        case RandoOptions_MAPS_SHOW_KEYS:{
	        return val(f.dm_rando[?STR_Randomize+STR_Key+STR_Locations]);
	        break;}
        
	        case RandoOptions_RANDO_ENEMY:{
	        return val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Method]);
	        //return val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Method]) || val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_Spawner]) || val(f.dm_rando[?STR_Randomize+STR_Enemy+STR_ENIGMA]);
	        break;}
        
	        case RandoOptions_RANDO_OW_TILES:{
	        return ds_map_size(g.overworld.dm_Rando_TSRC)>0;
	        //return val(f.dm_rando[?STR_Rando+STR_Active]) && ds_map_size(g.overworld.dm_Rando_TSRC);
	        break;}
        
	        case RandoOptions_SCENES:{
	        return true;
	        //return val(f.dm_rando[?STR_Rando+STR_Active]);
	        break;}
        
	        case RandoOptions_RANDO_PALETTE:{
	        return val(f.dm_rando[?STR_Randomize+STR_Palette]);
	        break;}
        
	        case RandoOptions_MARK_HIDDEN_EXIT:{
	        return val(f.dm_rando[?STR_Randomize+STR_Item+STR_Locations]) 
	            || val(f.dm_rando[?STR_Randomize+STR_PBAG+STR_Locations]) 
	            || val(f.dm_rando[?STR_Randomize+STR_Key +STR_Locations]);
	        break;}
        
	        case RandoOptions_BACK:{
	        return true;
	        break;}
	    }//switch(argument1)
	    break;}//case Menu_RANDO_OPTIONS
	}//switch(argument0)



	return false;







}
