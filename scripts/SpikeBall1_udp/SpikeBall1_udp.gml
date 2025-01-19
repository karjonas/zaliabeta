/// @description  SpikeBall1_udp()
function SpikeBall1_udp() {


	can_draw_self=true;


	switch(ver)
	{
	    case 1:{
	    GO_set_sprite(id, dl_sprites[|0]);
	    break;}//case 1
    
	    case 2:{
	    GO_set_sprite(id, dl_sprites[|!(g.counter1&$2)]);
	    switch((g.counter1>>1)&$3){
	    case 0:{palidx_permut=0; break;}
	    case 1:{palidx_permut=3; break;}
	    case 2:{palidx_permut=4; break;}
	    case 3:{palidx_permut=3; break;}
	    }
	    break;}//case 2
	}//switch(ver)







}
