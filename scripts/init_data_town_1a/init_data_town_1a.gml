/// @description  init_data_town_1a()
function init_data_town_1a() {


	var _town_name;
	var _town_num=0;

	_town_num++; _town_name=STR_Rauru;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_RAURU;

	_town_num++; _town_name=STR_Ruto;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_RUTO;

	_town_num++; _town_name=STR_Saria;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_SARIA;

	_town_num++; _town_name=STR_Mido;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_MIDO;

	_town_num++; _town_name=STR_Nabooru;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_NABOORU;

	_town_num++; _town_name=STR_Darunia;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_DARUNIA;

	_town_num++; _town_name=STR_New_Kasuto;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_NEW_KASUTO;

	_town_num++; _town_name=STR_Old_Kasuto;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_KASUTO;

	_town_num++; _town_name=STR_Bulblin;
	g.dm_town[?STR_Town+STR_Name+hex_str(_town_num)] = _town_name;
	g.dm_town[?STR_Town+STR_Num+_town_name]          = _town_num;
	g.dm_town[?_town_name+MapAreaName_DATAKEY]       = MapAreaName_BULBLIN;


	g.dm_town[?STR_Town+STR_Count] = _town_num;







}
