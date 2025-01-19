/// @description  Ganon3_skull_update_2a()
function Ganon3_skull_update_2a() {


	// clamp skull within arena
	var _HSPD = (abs8b(Skull_hspd)>>4) &$F;
	var _VSPD = (abs8b(Skull_vspd)>>4) &$F;
	Skull_x = clamp(Skull_x, (arena_xl+SkullCS_OFFSET1)-(_HSPD-1), (arena_xr-SkullCS_OFFSET1)+(_HSPD-1));
	Skull_y = clamp(Skull_y, (viewYT()+SkullCS_OFFSET1)-(_VSPD-1), (arena_yb-SkullCS_OFFSET1)+(_VSPD-1));







}
