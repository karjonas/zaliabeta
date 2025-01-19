/// @description  Elevator_udp()
function Elevator_udp() {


	can_draw_self = true;


	yScale = sign_(yt & ($4<<CHAIN_TIMING));


	if(0)
	{
	    // Testing different timings
	    var _VAL = ($4<<CHAIN_TIMING)-1;
	    var _y   = yt;
	    chain_yoff_1 =  (_y & _VAL);
	    // chain_yoff_1 =  (_y & _VAL)         >>CHAIN_TIMING;
	    //  _y   = yt+2;
	    chain_yoff_2  = chain_yoff_1 ^ _VAL;
	    // chain_yoff_2 = ((_y & _VAL) ^ _VAL) >>CHAIN_TIMING;
    
	    /*
	    0000 1111   0 3
	    0001 1110   0 3
	    0010 1101   0 3
	    0011 1100   0 3
	    0100 1011   1 2
	    0101 1010   1 2
	    0110 1001   1 2
	    0111 1000   1 2
    
	    1000 0111   2 1
	    1001 0110   2 1
	    1010 0101   2 1
	    1011 0100   2 1
	    1100 0011   3 0
	    1101 0010   3 0
	    1110 0001   3 0
	    1111 0000   3 0
	    */
    
	    // chain_yoff_1 = (chain_yoff_1<<1) & 3;
	    // chain_yoff_2 = (chain_yoff_2<<1) & 3;
	}







}
