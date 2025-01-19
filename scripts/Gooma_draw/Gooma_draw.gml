/// @description  Gooma_draw()
function Gooma_draw() {


	if(!can_draw_self) exit; // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!



	draw_sprite_(Weapon_Chain_sprite,0, Weapon_Chain_x,    drawY,    Weapon_PALIDX, xScale);
	draw_sprite_(Weapon_Chain_sprite,0, Weapon_Chain_x+$10,drawY,    Weapon_PALIDX, xScale);

	GO_draw_sprite(sprite, palidx);

	draw_sprite_(Weapon_Ball_sprite,0,  Weapon_Ball_x,Weapon_Ball_y, Weapon_PALIDX, xScale);


	if (g.mod_Gooma_Projectile_1 
	&&  ver==2 
	&&  projectile_tokens 
	&&  Weapon_Ball_sprite )
	{
	    var _can_draw=false;
    
	    switch(g.mod_Gooma_Projectile_1)
	    {
	        // ---------------------------------------------------
	        case 1:{
	        if (attack_state==attack_state_DRAWBACK 
	        || (attack_state==attack_state_SWING && (g.counter1>>1)&$7 < 6) )
	        {
	            _can_draw=true;
	        }
	        break;}
        
	        // ---------------------------------------------------
	        case 2:{
	        if (attack_state==attack_state_DRAWBACK)
	        {
	            _can_draw=true;
	        }
	        break;}
	    }
    
    
	    if (_can_draw)
	    {
	        draw_sprite_(spr_Flame1,0, Weapon_Ball_x,Weapon_Ball_y-4, PI_MOB_ORG, sign_(g.counter1&$4));
	    }
	}







}
