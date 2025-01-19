/// @description  quest_is_complete(quest num)
function quest_is_complete(argument0) {


	switch(argument0)
	{
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_PROTECT:
	    {
	        return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_JUMP:
	    {
	        if (f.items&ITM_TRPH) return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_LIFE:
	    {
	        if (f.items&ITM_MIRR) return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_FAIRY:
	    {
	        if (f.items&ITM_MEDI) return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_FIRE:
	    {
	        var _TOWN_NAME = val(g.dm_town[?STR_Town+STR_Name+hex_str(argument0)], STR_Nabooru);
	        return val(f.dm_quests[?_TOWN_NAME+STR_Quest+STR_Complete]);
	        //if (f.items & ITM_WATR) return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_REFLECT:
	    {
	        if (f.items&ITM_CHLD) return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_SPELL:
	    {
	        return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_THUNDER:
	    {
	        return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SARIA_BRIDGE:
	    {
	        if (f.items&ITM_NOTE) return true;
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_CONT_MP:
	    {
	        switch(g.mod_QuestNewKasuto){
	        case 0:{return cont_cnt_mp() >= f.CONT_MAX_MP-1; break;} // OG
	        case 1:{return true; break;}
	        }
        
	        break;
	    }
    
    
	    // -------------------------------------------------------------
	    // -------------------------------------------------------------
	    case QUEST_SPELL_SUMMON:
	    {
	        return true;
	        break;
	    }
	}



	return false;







}
