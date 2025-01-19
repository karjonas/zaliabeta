/// @description  Barrier_update()
function Barrier_update() {

	/*
	sdm('rows $'+hex_str(rows)+', _003F $'+hex_str(_003F)+', _0051 $'+hex_str(_0051));

	rows $0D, _003F $26, _0051 $82
	rows $0C, _003F $26, _0051 $62
	rows $0B, _003F $26, _0051 $42
	rows $0A, _003F $26, _0051 $22
	rows $09, _003F $26, _0051 $02

	rows $08, _003F $25, _0051 $E2
	rows $07, _003F $25, _0051 $C2
	rows $06, _003F $25, _0051 $A2
	rows $05, _003F $25, _0051 $82
	rows $04, _003F $25, _0051 $62
	rows $03, _003F $25, _0051 $42
	rows $02, _003F $25, _0051 $22
	rows $01, _003F $25, _0051 $02

	rows $00, _003F $24, _0051 $E2
	*/


	switch(g.mod_BARRIER_LOOK){
	case 0:{Barrier_update_1(); break;}
	case 1:{Barrier_update_2(); break;}
	}







}
