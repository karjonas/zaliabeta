/// @description  FileSelect_Draw_RandoState_OTHER()
function FileSelect_Draw_RandoState_OTHER() {


	var _i,_j, _x,_y, _xr, _dist1;
	var _dk;

	var _text, _pi;
	var _char_w=8;
	var _PI_DARK1=get_pi(PI_DARKLONK,3);
	var _PI_DARK2=PI_DARKLONK;

	var _RANDO_ACTIVE = FileSelect_Rando_is_on(-1);


	var _ITEMS_EDITED=false;
	for(_i=0; _i<RandoOTHER_ITEMS_item_cursor_COUNT; _i++)
	{
	    //if (_i==RandoOTHER_ITEMS_cursor_BACK) continue;
	    switch(_i){
	    default:{                                if (dg_RandoOTHER_ITEMS[#_i,2]){               _ITEMS_EDITED=true;} break;}
	    case RandoOTHER_ITEMS_item_cursor_HEART:{if (dg_RandoOTHER_ITEMS[#_i,2]!=f.CONT_MIN_HP){_ITEMS_EDITED=true;} break;}
	    case RandoOTHER_ITEMS_item_cursor_MAGIC:{if (dg_RandoOTHER_ITEMS[#_i,2]!=f.CONT_MIN_MP){_ITEMS_EDITED=true;} break;}
	    }
	    if (_ITEMS_EDITED) break;//_i
	}

	var _SPELLS_EDITED=false;
	for(_i=0; _i<RandoOTHER_SPELLS_cursor_COUNT; _i++)
	{
	    if (_i==RandoOTHER_SPELLS_cursor_BACK) continue;
	    if (dg_RandoOTHER_SPELLS[#_i,2]) _SPELLS_EDITED=true;
	    if (_SPELLS_EDITED) break;//_i
	}

	var _REQUIRE_EDITED=false;
	for(_i=0; _i<RandoOTHER_REQUIRE_cursor_COUNT; _i++)
	{
	    if (_i==RandoOTHER_REQUIRE_cursor_BACK) continue;
	    switch(_i){
	    case RandoOTHER_REQUIRE_cursor_CRYSTALS:{if (dg_RandoOTHER_REQUIRE[#_i,2]!=f.CRYSTAL_MAX){                            _REQUIRE_EDITED=true;} break;}
	    case RandoOTHER_REQUIRE_cursor_KAKUSU:  {if (dg_RandoOTHER_REQUIRE[#_i,2]!=val(g.dm_spawn[?STR_Kakusu+STR_Count],12)){_REQUIRE_EDITED=true;} break;}
	    }
	    if (_REQUIRE_EDITED) break;//_i
	}






	switch(RandoOTHER_state)
	{
	    // --------------------------------------------
	    case RandoOTHER_state_MAIN:{
	    var _FONT_SPRITE=RandoOTHER_MAIN_FONT_SPRITE;
	    _char_w=sprite_get_width(_FONT_SPRITE);
	    _dist1 = viewXC()-dg_RandoMAIN_Options[#_i,0];
	    _xr = viewXC()+_dist1;
    
	    for(_i=0; _i<RandoOTHER_MAIN_cursor_COUNT; _i++)
	    {
	        _x = dg_RandoOTHER_Options[#_i,0];
	        _y = dg_RandoOTHER_Options[#_i,1];
        
	        _text  = dg_RandoOTHER_Options[#_i,3];
	        //_text += string_repeat(" ", $10-string_length(_text));
        
	        switch(_i)
	        {
	            // -------------------------------------------------
	            case RandoOTHER_MAIN_WARP_PENALTY:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
            
	            if (dg_RandoOTHER_Options[#_i,2])
	            {
	                _text=Text_ON;
	                _pi=_PI_DARK2;
	            }
	            else
	            {
	                _text=Text_OFF;
	                _pi= PI_MENU;
	            }
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
            
	            // -------------------------------------------------
	            case RandoOTHER_MAIN_PALETTE:{
	            if (_RANDO_ACTIVE) _pi= PI_MENU;
	            else               _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
            
	            if (dg_RandoOTHER_Options[#_i,2])
	            {
	                _text=Text_ON;
	                _pi= PI_MENU;
	            }
	            else
	            {
	                _text=Text_OFF;
	                _pi=_PI_DARK2;
	            }
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
	            /*
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_DUNGEON_TS:{
	            if (_RANDO_ACTIVE) _pi= PI_MENU;
	            else               _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
            
	            if (dg_RandoOTHER_Options[#_i,2])
	            {
	                _text = string(dg_RandoOTHER_Options[#_i,2]);
	                _pi= PI_MENU;
	            }
	            else
	            {
	                _text = Text_OFF;
	                _pi=_PI_DARK2;
	            }
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
	            */
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_QUEST:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            _text=string(dg_RandoOTHER_Options[#_i,2]);
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_ATTACK:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            _text=string(dg_RandoOTHER_Options[#_i,2]);
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_MAGIC:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            _text=string(dg_RandoOTHER_Options[#_i,2]);
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_LIFE:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            _text=string(dg_RandoOTHER_Options[#_i,2]);
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_ITEMS:{
	            if (_ITEMS_EDITED) _pi= PI_MENU;
	            else               _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_SPELLS:{
	            if (_SPELLS_EDITED) _pi= PI_MENU;
	            else                _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_REQUIRE:{
	            if (_REQUIRE_EDITED) _pi= PI_MENU;
	            else                 _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
            
	            // ----------------------------------------------------
	            case RandoOTHER_MAIN_cursor_BACK:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            break;}
	        }
	    }//_i
	    break;}//case RandoOTHER_state_MAIN:
    
    
    
    
    
	    // --------------------------------------------
	    case RandoOTHER_state_ITEMS:{
	    var _FONT_SPRITE=RandoOTHER_SPELLS_FONT_SPRITE;
	    _char_w=sprite_get_width(_FONT_SPRITE);
	    _dist1 = viewXC()-dg_RandoMAIN_Options[#_i,0];
	    _xr = viewXC()+_dist1;
    
	    var _sprite;
	    for(_i=0; _i<RandoOTHER_ITEMS_cursor_COUNT; _i++)
	    {
	        switch(_i)
	        {
	            case RandoOTHER_ITEMS_cursor_ITEM:{
	            for(_j=0; _j<RandoOTHER_ITEMS_item_cursor_COUNT; _j++)
	            {
	                switch(_j){
	                default:{continue;}
	                case RandoOTHER_ITEMS_item_cursor_CANDLE: {_dk=STR_CANDLE;  _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_BAIT:   {_dk=STR_MEAT;    _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_SHIELD: {_dk=STR_SHIELD;  _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_RING:   {_dk=STR_RING;    _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_PENDANT:{_dk=STR_PENDANT; _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_SWORD:  {_dk=STR_SWORD;   _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_FEATHER:{_dk=STR_FEATHER; _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_NOTE:   {_dk=STR_NOTE;    _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_MAP1:   {_dk=STR_MAP1;    _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_MAP2:   {_dk=STR_MAP2;    _pi=PI_MOB_ORG; break;}
	                case RandoOTHER_ITEMS_item_cursor_DOLLS:  {_dk=STR_1UP;     _pi=PI_PC_1; break;}
	                case RandoOTHER_ITEMS_item_cursor_HEART:  {_dk=STR_HEART;   _pi=PI_MOB_RED; break;}
	                case RandoOTHER_ITEMS_item_cursor_MAGIC:  {_dk=STR_MAGIC;   _pi=PI_MOB_ORG; break;}
	                }
                
	                switch(_j){
	                default:                                {if(!dg_RandoOTHER_ITEMS[#_j,2]){               _pi=_PI_DARK2;} break;}
	                case RandoOTHER_ITEMS_item_cursor_HEART:{if (dg_RandoOTHER_ITEMS[#_j,2]==f.CONT_MIN_HP){_pi=_PI_DARK2;} break;}
	                case RandoOTHER_ITEMS_item_cursor_MAGIC:{if (dg_RandoOTHER_ITEMS[#_j,2]==f.CONT_MIN_MP){_pi=_PI_DARK2;} break;}
	                }
                
	                switch(_j){
	                default:{                                _sprite=val(g.dm_ITEM[?_dk+STR_Sprite],spr_Torch_1a); break;}
	                case RandoOTHER_ITEMS_item_cursor_HEART:{_sprite=spr_Item_Heart_container_1d; break;}
	                case RandoOTHER_ITEMS_item_cursor_MAGIC:{_sprite=spr_Item_Magic_container_1d; break;}
	                }
                
	                _x = dg_RandoOTHER_ITEMS[#_j,0];
	                _y = dg_RandoOTHER_ITEMS[#_j,1];
	                draw_sprite_(_sprite,0, _x,_y, _pi);
                
	                if (RandoOTHER_ITEMS_cursor==RandoOTHER_ITEMS_cursor_ITEM 
	                &&  RandoOTHER_ITEMS_item_cursor==_j )
	                {
	                    _y += sprite_get_height(_sprite)>>1;
	                    _y += 3; // padding
	                    _y += sprite_get_height(spr_arrow_6_up)>>1;
	                    draw_sprite_(spr_arrow_6_up,0, _x,_y, PI_MENU);
	                }
                
                
	                if (_j==RandoOTHER_ITEMS_item_cursor_DOLLS 
	                ||  _j==RandoOTHER_ITEMS_item_cursor_HEART 
	                ||  _j==RandoOTHER_ITEMS_item_cursor_MAGIC )
	                {
	                    _text=string(dg_RandoOTHER_ITEMS[#_j,2]);
	                    _x =         dg_RandoOTHER_ITEMS[#_j,0] - (_char_w>>1);
	                    _y =         dg_RandoOTHER_ITEMS[#_j,1] - $10;
	                    _pi=PI_MENU;
	                    switch(_j){
	                    case RandoOTHER_ITEMS_item_cursor_DOLLS:{if(!dg_RandoOTHER_ITEMS[#_j,2]){               _pi=_PI_DARK2;} break;}
	                    case RandoOTHER_ITEMS_item_cursor_HEART:{if (dg_RandoOTHER_ITEMS[#_j,2]==f.CONT_MIN_HP){_pi=_PI_DARK2;} break;}
	                    case RandoOTHER_ITEMS_item_cursor_MAGIC:{if (dg_RandoOTHER_ITEMS[#_j,2]==f.CONT_MIN_MP){_pi=_PI_DARK2;} break;}
	                    }
	                    draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	                }
	            }
	            break;}//case RandoOTHER_ITEMS_cursor_ITEM:
            
            
            
	            case RandoOTHER_ITEMS_cursor_BACK:{
	            _x  = RandoOptions_X;
	            _y  = dg_RandoOTHER_ITEMS[#RandoOTHER_ITEMS_item_cursor_CANDLE,1];
	            _y += RandoOTHER_ITEMS_cursor_BACK_YOFF;
	            draw_text_(_x,_y, "BACK", -1,PI_MENU);
	            break;}//case RandoOTHER_ITEMS_cursor_BACK:
	        }//switch(_i)
	    }//_i
	    break;}//case RandoOTHER_state_ITEMS:
    
    
    
    
	    // --------------------------------------------
	    case RandoOTHER_state_SPELLS:{
	    var _FONT_SPRITE=spr_Font2;
	    _char_w=sprite_get_width(_FONT_SPRITE);
	    _dist1 = viewXC()-dg_RandoMAIN_Options[#_i,0];
	    _xr = viewXC()+_dist1;
    
	    for(_i=0; _i<RandoOTHER_SPELLS_cursor_COUNT; _i++)
	    {
	        _x = dg_RandoOTHER_SPELLS[#_i,0];
	        _y = dg_RandoOTHER_SPELLS[#_i,1];
        
	        _text  = string_letters(dg_RandoOTHER_SPELLS[#_i,3]);
	        switch(_i)
	        {
	            default:{
	            //_text += string_repeat(" ", $10-string_length(_text));
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
            
	            //_x += _char_w*string_length(_text);
	            if (dg_RandoOTHER_SPELLS[#_i,2]) _text=Text_ON;
	            else                             _text=Text_OFF;
	            if (dg_RandoOTHER_SPELLS[#_i,2]) _pi= PI_MENU;
	            else                             _pi=_PI_DARK1;
	            _x  = _xr-(string_length(_text)*_char_w);
	            _x -= _x mod _char_w;
	            draw_text_(_x,_y, _text, _FONT_SPRITE,_pi);
	            break;}
            
            
	            case RandoOTHER_SPELLS_cursor_BACK:{
	            draw_text_(_x,_y, _text, _FONT_SPRITE,PI_MENU);
	            break;}
	        }
	    }
	    break;}
    
    
    
    
	    // --------------------------------------------
	    case RandoOTHER_state_REQUIRE:{
	    for(_i=0; _i<RandoOTHER_REQUIRE_cursor_COUNT; _i++)
	    {
	        switch(_i)
	        {
	            case RandoOTHER_REQUIRE_cursor_CRYSTALS:{
	            _x = dg_RandoOTHER_REQUIRE[#_i,0];
	            _y = dg_RandoOTHER_REQUIRE[#_i,1];
	            _pi = p.dg_PI_SEQ[#$00, (g.counter1>>1)&$3];
	            draw_sprite_(spr_Crystal_1a,0, _x,_y, _pi);
            
	            _x += $10;
	            draw_text_(_x,_y, "*", -1,PI_MENU);
	            //draw_sprite_(spr_Times_symbol,0, _x,_y, PI_MENU);
            
	            _x += $C;
	            _text = string(dg_RandoOTHER_REQUIRE[#_i,2]);
	            if (dg_RandoOTHER_REQUIRE[#_i,2]!=f.CRYSTAL_MAX) _pi=PI_MENU;
	            else                                             _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, -1,_pi);
	            break;}
            
            
	            case RandoOTHER_REQUIRE_cursor_KAKUSU:{
	            _x = dg_RandoOTHER_REQUIRE[#_i,0];
	            _y = dg_RandoOTHER_REQUIRE[#_i,1];
	            _pi = PI_MOB_ORG;
	            draw_sprite_(spr_Bot2_Norm,    0, _x,_y, _pi);
	            draw_sprite_(spr_Bot_Eyes_1a_1,0, _x,_y, _pi);
	            draw_sprite_(spr_1x1_WHT,0, _x-1,_y+3, -1, 2,1, get_pal_color(_pi,3));
            
            
	            _x += $C;
	            draw_text_(_x,_y, "*", -1,PI_MENU);
	            //draw_sprite_(spr_Times_symbol,0, _x,_y, PI_MENU);
            
	            _x += $C;
	            _text = string(dg_RandoOTHER_REQUIRE[#_i,2]);
	            if (dg_RandoOTHER_REQUIRE[#_i,2]!=val(g.dm_spawn[?STR_Kakusu+STR_Count],12)) _pi=PI_MENU;
	            else                                                                         _pi=_PI_DARK2;
	            draw_text_(_x,_y, _text, -1,_pi);
	            break;}
            
            
	            case RandoOTHER_REQUIRE_cursor_BACK:{
	            _x  = dg_RandoOTHER_REQUIRE[#RandoOTHER_REQUIRE_cursor_BACK,0];
	            _y  = dg_RandoOTHER_REQUIRE[#RandoOTHER_REQUIRE_cursor_BACK,1];
	            draw_text_(_x,_y, "BACK", -1,PI_MENU);
	            break;}
	        }
	    }
	    break;}
	}







}
