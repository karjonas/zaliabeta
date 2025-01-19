/// @description  dev_randomize_palette_midtone()
function dev_randomize_palette_midtone() {


	var _return  = 0;
	if(!irandom($17))
	{
	    _return = p.CI_GRY4;
	}
	else
	{
	    _return  = !irandom($03) + !irandom($3F);
	    _return  = _return<<4;
	    _return |= irandom($C)+1;
	    if (_return&$F==$D)
	    {   _return = p.CI_BLK1;  }
	}

	return _return;
	//_return  = !irandom($07) + !irandom($0F) + !irandom($17);
	//return !irandom($07) + !irandom($0F) + !irandom($0F);
	//return !irandom($03) + !irandom($05) + !irandom($07);
	//return !irandom($03) + !irandom($08) + !irandom($0A);















	/*
	Luminosity: 0-255. The higher the value, the brighter.

	dl_COLOR[| $00] = $747474, Luminosity: $74;      // 
	dl_COLOR[| $01] = $8C1824, Luminosity: $8C;      // 
	dl_COLOR[| $02] = $A80000, Luminosity: $A8;      // 
	dl_COLOR[| $03] = $9C0044, Luminosity: $9C;      // 
	dl_COLOR[| $04] = $74008C, Luminosity: $8C;      // 
	dl_COLOR[| $05] = $1000A8, Luminosity: $A8;      // 
	dl_COLOR[| $06] = $0000A4, Luminosity: $A4;      // 
	dl_COLOR[| $07] = $00087C, Luminosity: $7C;      // 
	dl_COLOR[| $08] = $002C40, Luminosity: $40;      // 
	dl_COLOR[| $09] = $004400, Luminosity: $44;      // 
	dl_COLOR[| $0A] = $005000, Luminosity: $50;      // 
	dl_COLOR[| $0B] = $003E00, Luminosity: $3E;      // 
	dl_COLOR[| $0C] = $5C3C18, Luminosity: $5C;      // 
	dl_COLOR[| $0D] = $000000, Luminosity: $00;      // 

	dl_COLOR[| $10] = $BCBCBC, Luminosity: $BC;      // 
	dl_COLOR[| $11] = $EC7000, Luminosity: $EC;      // 
	dl_COLOR[| $12] = $EC3820, Luminosity: $EC;      // 
	dl_COLOR[| $13] = $F00080, Luminosity: $F0;      // 
	dl_COLOR[| $14] = $AD15B8, Luminosity: $B8;      // 
	dl_COLOR[| $15] = $5800E4, Luminosity: $E4;      // 
	dl_COLOR[| $16] = $0028D8, Luminosity: $D8;      // 
	dl_COLOR[| $17] = $0C4CC8, Luminosity: $C8;      // 
	dl_COLOR[| $18] = $007088, Luminosity: $88;      // 
	dl_COLOR[| $19] = $009400, Luminosity: $94;      // 
	dl_COLOR[| $1A] = $00A800, Luminosity: $A8;      // 
	dl_COLOR[| $1B] = $2A7B00, Luminosity: $7B;      // 
	dl_COLOR[| $1C] = $888000, Luminosity: $88;      // 
	dl_COLOR[| $1D] = $000000, Luminosity: $00;      // 

	dl_COLOR[| $20] = $F1F2F1, Luminosity: $F2;      // 
	dl_COLOR[| $21] = $FCBC3C, Luminosity: $FC;      // 
	dl_COLOR[| $22] = $FC945C, Luminosity: $FC;      // 
	dl_COLOR[| $23] = $FC88CC, Luminosity: $FC;      // 
	dl_COLOR[| $24] = $FC78F4, Luminosity: $FC;      // 
	dl_COLOR[| $25] = $B474FC, Luminosity: $FC;      // 
	dl_COLOR[| $26] = $6074FC, Luminosity: $FC;      // 
	dl_COLOR[| $27] = $3898FC, Luminosity: $FC;      // 
	dl_COLOR[| $28] = $3CBCF0, Luminosity: $F0;      // 
	dl_COLOR[| $29] = $10D080, Luminosity: $D0;      // 
	dl_COLOR[| $2A] = $48DC4C, Luminosity: $DC;      // 
	dl_COLOR[| $2B] = $70D43A, Luminosity: $D4;      // 
	dl_COLOR[| $2C] = $D8E800, Luminosity: $E8;      // 
	dl_COLOR[| $2D] = $3E3E3E, Luminosity: $3E;      // 

	dl_COLOR[| $30] = $FCFCFC, Luminosity: $FC;      // 
	dl_COLOR[| $31] = $FCE4A8, Luminosity: $FC;      // 
	dl_COLOR[| $32] = $FCD4C4, Luminosity: $FC;      // 
	dl_COLOR[| $33] = $F1BADC, Luminosity: $F1;      // 
	dl_COLOR[| $34] = $FCC4FC, Luminosity: $FC;      // 
	dl_COLOR[| $35] = $DCB6F1, Luminosity: $F1;      // 
	dl_COLOR[| $36] = $B0BCFC, Luminosity: $FC;      // 
	dl_COLOR[| $37] = $A8D8FC, Luminosity: $FC;      // 
	dl_COLOR[| $38] = $7DDAD4, Luminosity: $DA;      // 
	dl_COLOR[| $39] = $A0FCE0, Luminosity: $FC;      // 
	dl_COLOR[| $3A] = $96E8AF, Luminosity: $E8;      // 
	dl_COLOR[| $3B] = $BCE89E, Luminosity: $E8;      // 
	dl_COLOR[| $3C] = $F0FC9C, Luminosity: $FC;      // 
	dl_COLOR[| $3D] = $A7A9A7, Luminosity: $A9;      // 
	*/



}
