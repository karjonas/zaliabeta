function Surface_Game_End() {



	if (surface_exists(srf_frame_prev))
	{   surface_free(  srf_frame_prev);  }

	if (surface_exists(srf_frame_curr))
	{   surface_free(  srf_frame_curr);  }



	if (RoomPreview_VER)
	{
	    if (surface_exists(RoomPreview_surf))
	    {   surface_free(  RoomPreview_surf);  }
	}







}
