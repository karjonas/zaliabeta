function macros() {
#macro DEV true
#macro USE_FRAME_DELAY 1
#macro RUN_RANDOMIZATION_SEED $00000000
#macro PAGE_W ($01<<8)
#macro PAGE_W_ (PAGE_W>>1)
#macro PAGE_H ($01<<8)
#macro PAGE_H_ (PAGE_H>>1)
#macro PAGE_CLMS (PAGE_W>>3)
#macro PAGE_CLMS_ (PAGE_CLMS>>1)
#macro PAGE_ROWS (PAGE_H>>3)
#macro PAGE_ROWS_ (PAGE_ROWS>>1)
#macro BASE_GAME_RESOLUTION_W 480
#macro BASE_GAME_RESOLUTION_H 270
#macro application_surface_W BASE_GAME_RESOLUTION_W
#macro application_surface_H BASE_GAME_RESOLUTION_H
#macro VIEW_W_OG 256
#macro VIEW_H_OG 224
#macro VIEW_W_OG_ (VIEW_W_OG >>1)
#macro VIEW_H_OG_ (VIEW_H_OG >>1)
#macro VIEW_W_WD application_surface_W
#macro VIEW_H_WD application_surface_H
#macro VIEW_W_WD_ (VIEW_W_WD >>1)
#macro VIEW_H_WD_ (VIEW_H_WD >>1)
#macro T 3
#macro FONT_LAYOUT " _/\\()*+-.,:'%&!?0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
#macro Area_Title "_Title_"
#macro Area_FileS "_FileSelect_"
#macro Area_ContS "_ContinueSave_"
#macro Area_DthMt "_DthMt_"
#macro Area_EastA "_EastA_"
#macro Area_MazIs "_MazIs_"
#macro Area_OvrwA "_OvrwA_"
#macro Area_PalcA "_PalcA_"
#macro Area_PalcB "_PalcB_"
#macro Area_PalcC "_PalcC_"
#macro Area_PalcD "_PalcD_"
#macro Area_PalcE "_PalcE_"
#macro Area_PalcF "_PalcF_"
#macro Area_PalcG "_PalcG_"
#macro Area_PalcH "_PalcH_"
#macro Area_PalcZ "_PalcZ_"
#macro Area_WestA "_WestA_"
#macro Area_TownA "_TownA_"
#macro Area_TownB "_TownB_"
#macro RM_NAME_NPALACE (Area_WestA + "00")
#macro RM_NPALACE_FILE_NAME (Area_WestA + "000")
#macro EXIT_NAME_GAME_START (RM_NAME_NPALACE + "00")
#macro RM_NAME_TITLSCR (Area_Title + "00")
#macro FastTravel_RMNAME (Area_MazIs + "60")
#macro AreaID_LEN string_length(Area_WestA)
#macro RmName_LEN (AreaID_LEN + 2)
#macro ExitName_LEN (RmName_LEN + 2)
#macro AREA_RM_MAX $100
#macro BIT_RGT $01
#macro BIT_LFT (BIT_RGT<<1)
#macro BIT_DWN (BIT_LFT<<1)
#macro BIT_UP (BIT_DWN<<1)
#macro BIT_ATK1 BIT_RGT
#macro BIT_ATK2 BIT_LFT
#macro BIT_ATK3 BIT_DWN
#macro BIT_ATK4 BIT_UP
#macro BIT_ATK5 (BIT_RGT <<4)
#macro BIT_ATK6 (BIT_LFT <<4)
#macro BIT_ATK7 (BIT_DWN <<4)
#macro BIT_ATK8 (BIT_UP <<4)
#macro CS_PR1 $40
#macro CS_SW1 $20
#macro CS_BD1 $10
#macro CS_TOP BIT_UP
#macro CS_BTM BIT_DWN
#macro CS_LFT BIT_LFT
#macro CS_RGT BIT_RGT
#macro DEPTH_PAD 8
#macro DEPTH_BASE 0
#macro TILE_DEPTHS_PAD $10
#macro TILE_LAYERS_GROUP_PAD (TILE_DEPTHS_PAD * 3)
#macro TILE_DEPTHS_BASE $80
#macro DEPTH_BG1 TILE_DEPTHS_BASE
#macro DEPTH_BG2 (DEPTH_BG1+TILE_DEPTHS_PAD)
#macro DEPTH_BG3 (DEPTH_BG2+TILE_DEPTHS_PAD)
#macro DEPTH_BG4 (DEPTH_BG3+TILE_DEPTHS_PAD)
#macro DEPTH_BG5 (DEPTH_BG4+TILE_LAYERS_GROUP_PAD)
#macro DEPTH_BG6 (DEPTH_BG5+TILE_DEPTHS_PAD)
#macro DEPTH_BG7 (DEPTH_BG6+TILE_DEPTHS_PAD)
#macro DEPTH_BG8 (DEPTH_BG7+TILE_DEPTHS_PAD)
#macro DEPTH_FG1 (-TILE_DEPTHS_BASE)
#macro DEPTH_FG2 (DEPTH_FG1-TILE_DEPTHS_PAD)
#macro DEPTH_FG3 (DEPTH_FG2-TILE_DEPTHS_PAD)
#macro DEPTH_FG4 (DEPTH_FG3-TILE_DEPTHS_PAD)
#macro DEPTH_FG5 (DEPTH_FG4-TILE_LAYERS_GROUP_PAD)
#macro DEPTH_FG6 (DEPTH_FG5-TILE_DEPTHS_PAD)
#macro DEPTH_FG7 (DEPTH_FG6-TILE_DEPTHS_PAD)
#macro DEPTH_FG8 (DEPTH_FG7-TILE_DEPTHS_PAD)
#macro DEPTH_BG1_P1 TILE_DEPTHS_BASE
#macro DEPTH_BG1_P2 (DEPTH_BG1_P1 + TILE_DEPTHS_PAD)
#macro DEPTH_BG1_P3 (DEPTH_BG1_P2 + TILE_DEPTHS_PAD)
#macro DEPTH_BG1_P4 (DEPTH_BG1_P3 + TILE_DEPTHS_PAD)
#macro DEPTH_BG2_P1 (DEPTH_BG1_P4 + TILE_LAYERS_GROUP_PAD)
#macro DEPTH_BG2_P2 (DEPTH_BG2_P1 + TILE_DEPTHS_PAD)
#macro DEPTH_BG2_P3 (DEPTH_BG2_P2 + TILE_DEPTHS_PAD)
#macro DEPTH_BG2_P4 (DEPTH_BG2_P3 + TILE_DEPTHS_PAD)
#macro DEPTH_FG1_P1 (-TILE_DEPTHS_BASE)
#macro DEPTH_FG1_P2 (DEPTH_FG1_P1 - TILE_DEPTHS_PAD)
#macro DEPTH_FG1_P3 (DEPTH_FG1_P2 - TILE_DEPTHS_PAD)
#macro DEPTH_FG1_P4 (DEPTH_FG1_P3 - TILE_DEPTHS_PAD)
#macro DEPTH_FG2_P1 (DEPTH_FG1_P4 - TILE_LAYERS_GROUP_PAD)
#macro DEPTH_FG2_P2 (DEPTH_FG2_P1 - TILE_DEPTHS_PAD)
#macro DEPTH_FG2_P3 (DEPTH_FG2_P2 - TILE_DEPTHS_PAD)
#macro DEPTH_FG2_P4 (DEPTH_FG2_P3 - TILE_DEPTHS_PAD)
#macro DEPTH_HIDDEN -3000
#macro DEPTH_SOLIDS -1000
#macro DEPTH_UNIQUE -2000
#macro DEPTH_BASE_NIAO (DEPTH_BASE - DEPTH_PAD)
#macro DEPTH_BASE_NPC (DEPTH_BASE_NIAO - DEPTH_PAD)
#macro DEPTH_BASE_ENEMY (DEPTH_BASE_NPC - DEPTH_PAD)
#macro DEPTH_BASE_PC (DEPTH_BASE_ENEMY - DEPTH_PAD)
#macro DEPTH_BASE_OW (DEPTH_BASE - DEPTH_PAD)
#macro DEPTH_BASE_HUD (DEPTH_FG7 - DEPTH_PAD)
#macro DEPTH_BASE_MENU (DEPTH_BASE_HUD - DEPTH_PAD)
#macro DEPTH_BASE_SURFACE (DEPTH_BASE_MENU - DEPTH_PAD)
#macro DEPTH_FILE_SELECT (DEPTH_BASE - DEPTH_PAD)
#macro DEPTH_HUD DEPTH_BASE_HUD
#macro DEPTH_NIAO DEPTH_BASE_NIAO
#macro DEPTH_NPC DEPTH_BASE_NPC
#macro DEPTH_ENEMY_PROJECTILE DEPTH_BASE_ENEMY
#macro DEPTH_ENEMY_BG (DEPTH_ENEMY_PROJECTILE - 1)
#macro DEPTH_ENEMY (DEPTH_ENEMY_BG - 1)
#macro DEPTH_ENEMY_EXPLOSION (DEPTH_ENEMY - 1)
#macro DEPTH_FLYER (DEPTH_FG6-(TILE_DEPTHS_PAD>>1))
#macro DEPTH_PROJECTILE (DEPTH_FG6-(TILE_DEPTHS_PAD<<1))
#macro DEPTH_RISING_XP (DEPTH_ENEMY_EXPLOSION - 1)
#macro DEPTH_ITEM (DEPTH_NPC + 1)
#macro DEPTH_PC_SWORD_BEAM DEPTH_BASE_PC
#macro DEPTH_PC_MAIN (DEPTH_PC_SWORD_BEAM - 1)
#macro DEPTH_NPC2 (DEPTH_PC_MAIN - 3)
#macro DEPTH_MENU_WINDOW DEPTH_BASE_MENU
#macro DEPTH_OW DEPTH_BASE_OW
#macro DEPTH_OW_ENEMY (DEPTH_OW - 1)
#macro DEPTH_OW_PC (DEPTH_OW_ENEMY - 1)
#macro DEPTH_SURFACE DEPTH_BASE_SURFACE
#macro SPL_NONE $000
#macro SPL_PRTC $001
#macro SPL_JUMP (SPL_PRTC <<1)
#macro SPL_LIFE (SPL_JUMP <<1)
#macro SPL_FARY (SPL_LIFE <<1)
#macro SPL_FIRE (SPL_FARY <<1)
#macro SPL_RFLC (SPL_FIRE <<1)
#macro SPL_SPEL (SPL_RFLC <<1)
#macro SPL_THUN (SPL_SPEL <<1)
#macro SPL_SUMM (SPL_THUN <<1)
#macro SPL_CUCO (SPL_SUMM <<1)
#macro SPELL_COST_MAX $F0
#macro ABL_IDLE $01
#macro ABL_WALK $02
#macro ABL_RUN_ $04
#macro ABL_JUMP $08
#macro ABL_MELE $10
#macro ABL_SHOT $20
#macro STR_BREAK_ "BREAK_"
#macro STR_REGEN_ "REGEN_"
#macro STR_LIQUID "LIQUID"
#macro STR_HIDDEN "HIDDEN"
#macro STR_CURRENT "CURRENT"
#macro STR_BURNABLE "BURNABLE"
#macro STR_SPIKE_ "SPIKE_"
#macro STR_VISIBLE "VISIBLE"
#macro STR_OneWay "_OneWay_"
#macro STR_Solid "_Solid"
#macro STR_BG "_BG"
#macro OST_BOOTS1 $11
#macro OST_BOOTS2 (OST_BOOTS1 + 1)
#macro OST_SOLID1 $01
#macro OST_SOLID2 (OST_SOLID1 + 1)
#macro HEX_CHARS "0123456789ABCDEF"
#macro ROOM_SPEED_BASE 60
#macro SKILL_THD $01
#macro SKILL_THU $02
#macro SKILL_BNC $04
#macro SKILL_CST $08
#macro SKILL_AFR $10
#macro ITM_CAND $0001
#macro ITM_GLOV (ITM_CAND <<1)
#macro ITM_RAFT (ITM_GLOV <<1)
#macro ITM_BOOT (ITM_RAFT <<1)
#macro ITM_FLUT (ITM_BOOT <<1)
#macro ITM_CROS (ITM_FLUT <<1)
#macro ITM_HAMM (ITM_CROS <<1)
#macro ITM_BRAC (ITM_HAMM <<1)
#macro ITM_FRY1 (ITM_BRAC <<1)
#macro ITM_MASK (ITM_FRY1 <<1)
#macro ITM_BOOK (ITM_MASK <<1)
#macro ITM_MEAT (ITM_BOOK <<1)
#macro ITM_SHLD (ITM_MEAT<<1)
#macro ITM_RING (ITM_SHLD <<1)
#macro ITM_NKLC (ITM_RING <<1)
#macro ITM_SWRD (ITM_NKLC <<1)
#macro ITM_NOTE (ITM_SWRD <<1)
#macro ITM_MIRR (ITM_NOTE <<1)
#macro ITM_TRPH (ITM_MIRR <<1)
#macro ITM_MEDI (ITM_TRPH <<1)
#macro ITM_CHLD (ITM_MEDI <<1)
#macro ITM_BTL1 (ITM_CHLD <<1)
#macro ITM_SKEY (ITM_BTL1 <<1)
#macro ITM_MAP1 (ITM_SKEY <<1)
#macro ITM_MAP2 (ITM_MAP1 <<1)
#macro ITM_TBLT (ITM_MAP2 <<1)
#macro ITM_MEL1 (ITM_TBLT <<1)
#macro ITM_FTHR (ITM_MEL1 <<1)
#macro ITM_AXE (ITM_FTHR <<1)
#macro ITM_FRY2 (ITM_AXE <<1)
#macro ITM_BTL2 (ITM_FRY2 <<1)
#macro ITM_WATR (ITM_BTL2 <<1)
#macro ITEM_SPELL (ITM_WATR <<1)
#macro STAT_ATK 0
#macro STAT_MAG (STAT_ATK + 1)
#macro STAT_LIF (STAT_MAG + 1)
#macro STAT_LEVEL_MAX 9
#macro XP_MAX 9999
#macro Container_AMT $20
#macro BOTTLE_STATE_HP 1
#macro BOTTLE_STATE_MP 2
#macro BOTTLE_STATE_MED 8
#macro BOTTLE_STATE_WTR 9
#macro PC_LOCK_HSPD $01
#macro PC_LOCK_JUMP (PC_LOCK_HSPD <<1)
#macro PC_LOCK_VSPD (PC_LOCK_JUMP <<1)
#macro PC_LOCK_FLOT (PC_LOCK_VSPD <<1)
#macro PC_LOCK_ATK1 (PC_LOCK_FLOT <<1)
#macro PC_LOCK_ATK2 (PC_LOCK_ATK1 <<1)
#macro PC_LOCK_ATK3 (PC_LOCK_ATK2 <<1)
#macro PC_LOCK_ATK4 (PC_LOCK_ATK3 <<1)
#macro PC_LOCK_SPEL (PC_LOCK_ATK4 <<1)
#macro PC_LOCK_MENU (PC_LOCK_SPEL <<1)
#macro PC_LOCK_PRJ1 (PC_LOCK_MENU <<1)
#macro PC_LOCK_PRJ2 (PC_LOCK_PRJ1 <<1)
#macro PC_LOCK_CSTB (PC_LOCK_PRJ2 <<1)
#macro PC_LOCK_A1 (PC_LOCK_JUMP | PC_LOCK_ATK1 | PC_LOCK_ATK2 | PC_LOCK_ATK3 | PC_LOCK_ATK4 | PC_LOCK_SPEL | PC_LOCK_MENU)
#macro PC_LOCK_ALL $FFFFFF
#macro STR_Argument "_Argument"
#macro STR_Debug "_Debug"
#macro STR_Settings "_Settings"
#macro STR_Menu "_Menu"
#macro STR_Option "_Option"
#macro STR_Font "_Font"
#macro STR_Audio "_Audio"
#macro STR_AudioGroup "_AudioGroup"
#macro STR_Volume "_Volume"
#macro STR_Axe "_Axe"
#macro STR_Hammer "_Hammer"
#macro STR_Anim_End_Data "_Anim_End_Data"
#macro STR_Loop "_Loop"
#macro STR_Anim "_Anim"
#macro STR_frame "_frame"
#macro STR_Shake "_Shake"
#macro STR_Screen "_Screen"
#macro STR_Flashing "_Flashing"
#macro STR_Background_color "_Background_color"
#macro STR_Background "_Background"
#macro STR_Cam_x_max "_Cam_x_max"
#macro STR_Cam_x_min "_Cam_x_min"
#macro STR_Cam_y_max "_Cam_y_max"
#macro STR_Cam_y_min "_Cam_y_min"
#macro STR_Camera "_Camera"
#macro STR_View "_View"
#macro STR_Color "_Color"
#macro STR_Counter "_Counter"
#macro STR_CS_Mid "_CS_Mid_"
#macro STR_Standby "_Standby"
#macro STR_Skip "_Skip"
#macro STR_Reset "_Reset"
#macro STR_Start "_Start"
#macro STR_Started "_Started"
#macro STR_Select "_Select"
#macro STR_Timer "_Timer"
#macro STR_Delay "_Delay"
#macro STR_Cues "_Cues"
#macro STR_Cue "_Cue"
#macro STR_Phase "_Phase"
#macro STR_Cooldown "_Cooldown"
#macro STR_Dark_Room "_Dark_Room"
#macro STR_File "_File"
#macro STR_Save "_Save"
#macro STR_Data "_Data"
#macro STR_Info "_Info"
#macro STR_Tertiary "_Tertiary"
#macro STR_Secondary "_Secondary"
#macro STR_Primary "_Primary"
#macro STR_Alternate "_Alternate"
#macro STR_Standard "_Standard"
#macro STR_Default "_Default"
#macro STR_Main "_Main"
#macro STR_Qualified "_Qualified"
#macro STR_Special "_Special"
#macro STR_Layer "_Layer"
#macro STR_State "_State"
#macro STR_Depth "_Depth"
#macro STR_Other "_Other"
#macro STR_Destination "_Destination"
#macro STR_Order "_Order"
#macro STR_Path "_Path"
#macro STR_Base "_Base"
#macro STR_Value "_Value"
#macro STR_Length "_Length"
#macro STR_Duration "_Duration"
#macro STR_Degrees "_Degrees"
#macro STR_Angle "_Angle"
#macro STR_Position "_Position"
#macro STR_Offset "_Offset"
#macro STR_Direction "_Direction"
#macro STR_ScaleY "_ScaleY"
#macro STR_ScaleX "_ScaleX"
#macro STR_Scale "_Scale"
#macro STR_Window "_Window"
#macro STR_Placed "_Placed"
#macro STR_Copy "_Copy"
#macro STR_Complete "_Complete"
#macro STR_Translated "_Translated"
#macro STR_Last "_Last"
#macro STR_Switch "_Switch"
#macro STR_Dock "_Dock"
#macro STR_Platform "_Platform"
#macro STR_Challenge "_Challenge"
#macro STR_Challenge_Num "_Challenge_Num"
#macro STR_Show "_Show"
#macro STR_Hide "_Hide"
#macro STR_Hidden "_Hidden"
#macro STR_Kakusu "_Kakusu"
#macro STR_descrip "_description"
#macro STR_Cucco "_Cucco"
#macro STR_Skill "_Skill"
#macro STR_Change "_Change"
#macro STR_Fast "_Fast"
#macro STR_DIR "_DIR"
#macro STR_HSPD "_HSPD"
#macro STR_VSPD "_VSPD"
#macro STR_SPEED "_SPEED"
#macro STR_Speed "_Speed"
#macro STR_MoveDir "_MoveDir"
#macro STR_Move "_Move"
#macro STR_Distance "_Distance"
#macro STR_Dist "_Dist"
#macro STR_Arrow "_Arrow"
#macro STR_dlg "_dlg"
#macro STR_Dialogue "_Dialogue"
#macro STR_Piece "_Piece"
#macro STR_Container "_Container"
#macro STR_Magic "_Magic"
#macro STR_Heart "_Heart"
#macro STR_Ver_Count "_Ver_Count"
#macro STR_Obj_Count "_Obj_Count"
#macro STR_Item_Type_Count "_Item_Type_Count"
#macro STR_Item_Count "_Item_Count"
#macro STR_GOE_Count "_GOE_Count"
#macro STR_eCount "_eCount"
#macro STR_Datakey "_Datakey"
#macro STR_Locks "_Locks"
#macro STR_Lock "_Lock"
#macro STR_Key "_Key"
#macro STR_Secret "_Secret"
#macro STR_Treasure "_Treasure"
#macro STR_Map "_Map"
#macro STR_Page "_Page"
#macro STR_Room "_Room"
#macro STR_Varied "_Varied"
#macro STR_Multiple "_Multiple"
#macro STR_Count "_Count"
#macro STR_Total "_Total"
#macro STR_All "_All"
#macro STR_Product "_Product"
#macro STR_Merchant "_Merchant"
#macro STR_Paid "_Paid"
#macro STR_Hint "_Hint"
#macro STR_Used "_Used"
#macro STR_Taken "_Taken"
#macro STR_Acquired "_Acquired"
#macro STR_Found "_Found"
#macro STR_Description "_Description"
#macro STR_Rating "_Rating"
#macro STR_Mark "_Mark"
#macro STR_Name "_Name"
#macro STR_Circle "_Circle"
#macro STR_Size "_Size"
#macro STR_Min "_Min"
#macro STR_Max "_Max"
#macro STR_Num "_Num"
#macro STR_Nums "_Nums"
#macro STR_List "_List"
#macro STR_Index "_Index"
#macro STR_Idx "_Idx"
#macro STR_ID "_ID"
#macro STR_Text "_Text"
#macro STR_gob_id "_gob_id"
#macro STR_Instance "_Instance"
#macro STR_Body_HB "_Body_HB"
#macro STR_CS_Off "_CS_Off"
#macro STR_HP "_HP"
#macro STR_MP "_MP"
#macro STR_Atk_Lvl "_Atk_Lvl"
#macro STR_XP "_XP"
#macro STR_Play "_Play"
#macro STR_Frame "_Frame"
#macro STR_Behavior "_Behavior"
#macro STR_Respawn "_Respawn"
#macro STR_Lit "_Lit"
#macro STR_Lighting "_Lighting"
#macro STR_Torch "_Torch"
#macro STR_Beam "_Beam"
#macro STR_Stab "_Stab"
#macro STR_Frenzy "_Frenzy"
#macro STR_Disguise "_Disguise"
#macro STR_Tunic "_Tunic"
#macro STR_Hold "_Hold"
#macro STR_Drop "_Drop"
#macro STR_React_Shield "_React_Shield"
#macro STR_React_Body "_React_Body"
#macro STR_React_Sword "_React_Sword"
#macro STR_React_Proj "_React_Proj"
#macro STR_React_Thun "_React_Thun"
#macro STR_React_Spell "_React_Spell"
#macro STR_XP_Drain "_XP_Drain"
#macro STR_Shield "_Shield"
#macro STR_Sword "_Sword"
#macro STR_Vulnerability "_Vulnerability"
#macro STR_Vulnerable "_Vulnerable"
#macro STR_Forest "_Forest"
#macro STR_Church "_Church"
#macro STR_Halloween "_Halloween"
#macro STR_Ground "_Ground"
#macro STR_Door "_Door"
#macro STR_Elevator "_Elevator"
#macro STR_Warp "_Warp"
#macro STR_River "_River"
#macro STR_Biome "_Biome"
#macro STR_PATH_ "_PATH_"
#macro STR_FORES "_FORES"
#macro STR_SWAMP "_SWAMP"
#macro STR_CEMET "_CEMET"
#macro STR_VOLCA "_VOLCA"
#macro STR_DESER "_DESER"
#macro STR_FIELD "_FIELD"
#macro STR_BEACH "_BEACH"
#macro STR_Enc_Strong "_Enc_Strong"
#macro STR_Enc_Type "_Enc_Type"
#macro STR_Encounter "_Encounter"
#macro STR_Items "_Items"
#macro STR_Item "_Item"
#macro STR_GOE "_GOE"
#macro STR_entity "_entity"
#macro STR_AccessOw "_AccessOw"
#macro STR_AccessRm "_AccessRm"
#macro STR_AccessData "_AccessData"
#macro STR_Pit "_Pit"
#macro STR_Exit "_Exit"
#macro STR_ExitData "_ExitData"
#macro STR_Exit_name "_Exit_name"
#macro STR_Exit_x "_Exit_x"
#macro STR_Exit_y "_Exit_y"
#macro STR_Dungeon "_Dungeon"
#macro STR_Leave "_Leave"
#macro STR_Enter "_Enter"
#macro STR_Entrance "_Entrance"
#macro STR_Visited "_Visited"
#macro STR_Explored "_Explored"
#macro STR_Under "_Under"
#macro STR_Fall "_Fall"
#macro STR_Travel "_Travel"
#macro STR_CutScene "_CutScene"
#macro STR_FallingScene "_FallingScene"
#macro STR_file_name "_file_name"
#macro STR_full_name "_full_name"
#macro STR_GoTo "_GoTo"
#macro STR_goto_reen "_goto_reen"
#macro STR_ToGridXY "_ToGridXY"
#macro STR_GridXY "_GridXY"
#macro STR_Height "_Height"
#macro STR_Width "_Width"
#macro STR_Side "_Side"
#macro STR_vars "_vars"
#macro STR_ini1 "_ini1"
#macro STR_ini2 "_ini2"
#macro STR_init "_init_"
#macro STR_updt "_updt"
#macro STR_step "_step_"
#macro STR_udp "_udp"
#macro STR_udd "_udd_"
#macro STR_draw "_draw_"
#macro STR_iend "_iend"
#macro STR_dstr "_dstr"
#macro STR_rmen "_rmen_"
#macro STR_Barrier "_Barrier"
#macro STR_Friend "_Friend"
#macro STR_Carock "_Carock"
#macro STR_Zora "_Zora"
#macro STR_Stalfos "_Stalfos"
#macro STR_Megmat "_Megmat"
#macro STR_Aneru "_Aneru"
#macro STR_Moa "_Moa"
#macro STR_Girubokku "_Girubokku"
#macro STR_Bot "_Bot"
#macro STR_Octorok "_Octorok"
#macro STR_Acheman "_Acheman"
#macro STR_Ache "_Ache"
#macro STR_Zant "_Zant"
#macro STR_Daira "_Daira"
#macro STR_Geru "_Geru"
#macro STR_Goriya "_Goriya"
#macro STR_Moblin "_Moblin"
#macro STR_Cole "_Cole"
#macro STR_Adam "_Adam"
#macro STR_Tony "_Tony"
#macro STR_Finn "_Finn"
#macro STR_Mary "_Mary"
#macro STR_Joey "_Joey"
#macro STR_Barb "_Barb"
#macro STR_Zoey "_Zoey"
#macro STR_Bill "_Bill"
#macro STR_Jill "_Jill"
#macro STR_Jack "_Jack"
#macro STR_Anju "_Anju"
#macro STR_Malo "_Malo"
#macro STR_Talo "_Talo"
#macro STR_Bagu "_Bagu"
#macro STR_Error_Friend "_Error_Friend"
#macro STR_Scroblin "_Scroblin"
#macro STR_Zelda "_Zelda"
#macro STR_Ganon "_Ganon"
#macro STR_NPC "_NPC"
#macro STR_PC "_PC"
#macro STR_RaftDest "_RaftDest"
#macro STR_Flute "_Flute"
#macro STR_Raft "_Raft"
#macro STR_Boots "_Boots"
#macro STR_Book "_Book"
#macro STR_LockedDoor "_LockedDoor"
#macro STR_Item_Bottle "_Item_Bottle"
#macro STR_Item_Cont "_Item_Cont_"
#macro STR_Item_Doll "_Item_Doll"
#macro STR_Item_Key "_Item_Key"
#macro STR_Item_Major "_Item_Major"
#macro STR_Item_pBag "_Item_pBag"
#macro STR_Quest "_Quest"
#macro STR_Quests "_Quests"
#macro STR_Town_index "_Town_index_"
#macro STR_Rauru "_Rauru"
#macro STR_Ruto "_Ruto"
#macro STR_Saria "_Saria"
#macro STR_Mido "_Mido"
#macro STR_Darunia "_Darunia"
#macro STR_Nabooru "_Nabooru"
#macro STR_New_Kasuto "_New_Kasuto"
#macro STR_Old_Kasuto "_Old_Kasuto"
#macro STR_Bulblin "_Bulblin"
#macro STR_Dragmire "_Dragmire"
#macro STR_Makarrha "_Makarrha"
#macro STR_Basement "_Basement"
#macro STR_Outside "_Outside"
#macro STR_House "_House"
#macro STR_Town "_Town"
#macro STR_Hallway "_Hallway"
#macro STR_Dragmire_Tower "_Dragmire_Tower"
#macro STR_Great_Palace "_Great_Palace"
#macro STR_Three_Eye_Rock_Palace "_Three_Eye_Rock_Palace"
#macro STR_Palace_On_The_Sea "_Palace_On_The_Sea"
#macro STR_Maze_Island_Palace "_Maze_Island_Palace"
#macro STR_Island_Palace "_Island_Palace"
#macro STR_Midoro_Palace "_Midoro_Palace"
#macro STR_Parapa_Palace "_Parapa_Palace"
#macro STR_Palace "_Palace"
#macro STR_North_Palace "_North_Palace"
#macro STR_Cave "_Cave"
#macro STR_Hylian "_Hylian"
#macro STR_Age "_Age"
#macro STR_Kid "_Kid"
#macro STR_Strong "_Strong"
#macro STR_Wide "_Wide"
#macro STR_Thin "_Thin"
#macro STR_Sex "_Sex"
#macro STR_Theme "_Theme"
#macro STR_Track "_Track"
#macro STR_Song "_Song"
#macro STR_Music "_Music"
#macro STR_Sound "_Sound"
#macro STR_Intro "_Intro"
#macro STR_Head "_Head"
#macro STR_Body "_Body"
#macro STR_Title "_Title"
#macro STR_FDS "_FDS"
#macro STR_NIAO "_NIAO"
#macro STR_Obj_Name "_Obj_Name"
#macro STR_obj_idx "_obj_idx"
#macro STR_Bottle "_Bottle"
#macro STR_Sign "_Sign"
#macro STR_Bridge "_Bridge"
#macro STR_Cloud "_Cloud"
#macro STR_River_Devil "_River_Devil"
#macro STR_Boss "_Boss"
#macro STR_Monster "_Monster"
#macro STR_Boulder "_Boulder"
#macro STR_HUD "_HUD"
#macro STR_Open "_Open"
#macro STR_ow_axis "_ow_axis"
#macro STR_ow_dir "_ow_dir"
#macro STR_OWRC "_OWRC"
#macro STR_ow_grid_xy "_ow_grid_xy"
#macro STR_ow_tile_data "_ow_tile_data"
#macro STR_Permutation "_Permutation"
#macro STR_pal_idx "_pal_idx"
#macro STR_Palette "_Palette"
#macro STR_rc_offset "_rc_offset"
#macro STR_reen "_reen"
#macro STR_RmName "_RmName"
#macro STR_rm_num "_rm_num"
#macro STR_Scene "_Scene"
#macro STR_Rm "_Rm"
#macro STR_Room_idx "_Room_idx"
#macro STR_Area_ID "_Area_ID"
#macro STR_Area "_Area"
#macro STR_Overworld "_Overworld"
#macro STR_Script "_Script_"
#macro STR_Section_index "_Section_index"
#macro STR_Sequence "_Sequence"
#macro STR_Scenario "_Scenario"
#macro STR_Trigger "_Trigger"
#macro STR_Exception "_Exception"
#macro STR_Target "_Target"
#macro STR_Relocated "_Relocated"
#macro STR_show_ow_pos "_show_ow_pos"
#macro STR_Puzzles "_Puzzles"
#macro STR_Puzzle "_Puzzle"
#macro STR_Reward "_Reward"
#macro STR_Greeting "_Greeting"
#macro STR_Include "_Include"
#macro STR_Location "_Location"
#macro STR_Locations "_Locations"
#macro STR_Difficulty "_Difficulty"
#macro STR_Set "_Set"
#macro STR_Spawn_x "_Spawn_x"
#macro STR_Spawn_y "_Spawn_y"
#macro STR_Spawn_Idx "_Spawn_Idx"
#macro STR_Spawn_Permission "_Spawn_Permission"
#macro STR_can_spawn "_can_spawn"
#macro STR_spawned "_spawned"
#macro STR_SPNR "_SPNR"
#macro STR_Spawner "_Spawner"
#macro STR_Spawn "_Spawn"
#macro STR_Arena "_Arena"
#macro STR_Dripper "_Dripper"
#macro STR_Fairy "_Fairy"
#macro STR_Spells "_Spells"
#macro STR_Spell "_Spell"
#macro STR_Cast "_Cast"
#macro STR_PROTECT "_PROTECT"
#macro STR_JUMP "_JUMP"
#macro STR_HEAL "_HEAL"
#macro STR_FAIRY "_FAIRY"
#macro STR_FIRE "_FIRE"
#macro STR_REFLECT "_REFLECT"
#macro STR_ENIGMA "_ENIGMA"
#macro STR_THUNDER "_THUNDER"
#macro STR_RETURN "_RETURN"
#macro STR_SUMMON "_SUMMON"
#macro STR_CUCCO "_CUCCO"
#macro STR_CANDLE "_CANDLE"
#macro STR_GLOVE "_GLOVE"
#macro STR_RAFT "_RAFT"
#macro STR_BOOTS "_BOOTS"
#macro STR_FLUTE "_FLUTE"
#macro STR_CROSS "_CROSS"
#macro STR_HAMMER "_HAMMER"
#macro STR_BRACELET "_BRACELET"
#macro STR_RFAIRY "_RFAIRY"
#macro STR_BOOK "_BOOK"
#macro STR_MEAT "_MEAT"
#macro STR_SHIELD "_SHIELD"
#macro STR_RING "_RING"
#macro STR_PENDANT "_PENDANT"
#macro STR_SWORD "_SWORD"
#macro STR_ALLKEY "_ALLKEY"
#macro STR_MASK "_MASK"
#macro STR_NOTE "_NOTE"
#macro STR_MIRROR "_MIRROR"
#macro STR_TROPHY "_TROPHY"
#macro STR_FLOWER "_FLOWER"
#macro STR_CHILD "_CHILD"
#macro STR_BOTTLE "_BOTTLE"
#macro STR_MAP1 "_MAP1"
#macro STR_MAP2 "_MAP2"
#macro STR_FEATHER "_FEATHER"
#macro STR_MELODY "_MELODY"
#macro STR_STABDOWN "_STABDOWN"
#macro STR_STABUP "_STABUP"
#macro STR_1UP "_1UP"
#macro STR_HEART "_HEART"
#macro STR_MAGIC "_MAGIC"
#macro STR_SPELL "_SPELL"
#macro STR_KEY "_KEY"
#macro STR_JAR "_JAR"
#macro STR_PBAG "_PBAG"
#macro STR_TRIFORCE "_TRIFORCE"
#macro STR_Doll "_Doll"
#macro STR_Dolls "_Dolls"
#macro STR_Sprite "_Sprite"
#macro STR_Placement_spr "_Placement_spr"
#macro STR_Image "_Image"
#macro STR_Tile_data "_Tile_data_"
#macro STR_Tile_Hidden "_Tile_Hidden_"
#macro STR_TileObj "_TileObj"
#macro STR_unique "_unique"
#macro STR_TileName "_TileName"
#macro STR_Tileset "_Tileset_"
#macro STR_TSRC "_TSRC"
#macro STR_Tile "_Tile"
#macro STR_PRXM "_PRXM"
#macro STR_Proximity "_Proximity"
#macro STR_PRIO "_PRIO"
#macro STR_Priority "_Priority"
#macro STR_Simulation "_Simulation"
#macro STR_Current "_Current"
#macro STR_Presets "_Presets"
#macro STR_Preset "_Preset"
#macro STR_Type_num "_Type_num"
#macro STR_Type "_Type"
#macro STR_undefined "undefined"
#macro STR_version "_version"
#macro STR_Clm "_Clm"
#macro STR_Row "_Row"
#macro STR_Clms "_Clms"
#macro STR_Rows "_Rows"
#macro STR_RC "_RC"
#macro STR_Bit "_Bit"
#macro STR_Character "_Character"
#macro STR_Version "_Version"
#macro STR_Method "_Method"
#macro STR_Input "_Input"
#macro STR_OBJVER "_OBJVER"
#macro STR_Object "_Object"
#macro STR_Game "_Game"
#macro STR_Gameover "_Gameover"
#macro STR_Continue "_Continue"
#macro STR_Seed "_Seed"
#macro STR_Rando "_Rando"
#macro STR_Random "_Random"
#macro STR_Randomize "_Randomize"
#macro STR_Randomized "_Randomized"
#macro STR_Luck "_Luck"
#macro STR_Normal "_Normal"
#macro STR_Custom "_Custom"
#macro STR_Preference "_Preference"
#macro STR_Preferences "_Preferences"
#macro STR_Unique "_Unique"
#macro STR_Fullscreen "_Fullscreen"
#macro STR_Asset "_Asset"
#macro STR_Permanant "_Permanant"
#macro STR_Enemies "_Enemies"
#macro STR_Enemy "_Enemy"
#macro STR_Armor "_Armor"
#macro STR_Death "_Death"
#macro STR_Damage "_Damage"
#macro STR_Explode "_Explode"
#macro STR_Attack "_Attack"
#macro STR_Life "_Life"
#macro STR_Level "_Level"
#macro STR_Cost "_Cost"
#macro STR_Crystal "_Crystal"
#macro STR_Required "_Required"
#macro STR_Active "_Active"
#macro STR_Indicate "_Indicate"
#macro STR_Category "_Category"
#macro STR_Obscure "_Obscure"
#macro STR_Fix "_Fix"
#macro STR_Creator "_Creator"
#macro STR_Vinesauce "_Vinesauce"
#macro STR_Brightness "_Brightness"
#macro STR_Dark "_Dark"
#macro STR_Lonk "_Lonk"
#macro STR_Wiseman "_Wiseman"
#macro STR_CLOUDS "CLOUDS"
#macro STR_None "_None"
#macro STR_Castlevania "_Castlevania"
#macro TID_BREAK1 $A0
#macro TID_BREAK2 $A3
#macro TID_BREAK3 $A8
#macro TID_BREAK4 $AB
#macro TID_HIDE_1 $11
#macro TID_HIDE_2 $12
#macro TID_LQUID1 $AC
#macro TID_LQUID2 (TID_LQUID1 + 1)
#macro TID_LQUID3 (TID_LQUID2 + 1)
#macro TID_CLOUDS1 $C0
#macro TID_SPIKE1 $D0
#macro TID_SPIKE2 (TID_SPIKE1 + 1)
#macro TID_CURRENT1 $F0
#macro TID_CURRENT2 (TID_CURRENT1 + 1)
#macro TID_BURNABLE1 $F8
#macro TID_BURNABLE2 (TID_BURNABLE1 + 1)
#macro TID_ONEWY1 $02
#macro TID_SOLID1 $01
#macro BURNABLE_A $01
#macro BURNABLE_B (BURNABLE_A + 1)
#macro BURNABLE_C (BURNABLE_B + 1)
#macro TSRC_WATE01 $00
#macro TSRC_WATE02 $04
#macro TSRC_MOUN01 $10
#macro TSRC_GRAS01 $20
#macro TSRC_GRAS02 (TSRC_GRAS01 + 1)
#macro TSRC_GRAS03 (TSRC_GRAS02 + 1)
#macro TSRC_GRAS04 (TSRC_GRAS03 + 1)
#macro TSRC_SAND01 $24
#macro TSRC_SAND02 (TSRC_SAND01 + 1)
#macro TSRC_SAND03 (TSRC_SAND02 + 1)
#macro TSRC_VOLC01 $28
#macro TSRC_GRAV01 $2C
#macro TSRC_GRAV02 (TSRC_GRAV01 + 1)
#macro TSRC_GRAV03 (TSRC_GRAV02 + 1)
#macro TSRC_GRAV04 (TSRC_GRAV03 + 1)
#macro TSRC_TREE01 $30
#macro TSRC_TREE02 (TSRC_TREE01 + 1)
#macro TSRC_TREE03 (TSRC_TREE02 + 1)
#macro TSRC_TREE04 (TSRC_TREE03 + 1)
#macro TSRC_SWAM01 $38
#macro TSRC_SWAM02 (TSRC_SWAM01 + 1)
#macro TSRC_SWAM03 (TSRC_SWAM02 + 1)
#macro TSRC_SWAM04 (TSRC_SWAM03 + 1)
#macro TSRC_SNOW01 $40
#macro TSRC_SNOW02 (TSRC_SNOW01 + 1)
#macro TSRC_SNOW03 (TSRC_SNOW02 + 1)
#macro TSRC_SNOW04 (TSRC_SNOW03 + 1)
#macro TSRC_BOUL01 $D0
#macro TSRC_BOUL02 $80
#macro TSRC_PALA01 $E0
#macro TSRC_PALA02 $90
#macro TSRC_TOWN01 $E8
#macro TSRC_TOWN02 (TSRC_TOWN01 + 1)
#macro TSRC_TOWN08 $72
#macro TSRC_HOUSE01 $EC
#macro TSRC_HOUSE02 (TSRC_HOUSE01 + 1)
#macro TSRC_HOUSE03 (TSRC_HOUSE02 + 1)
#macro TSRC_HOUSE04 (TSRC_HOUSE03 + 1)
#macro TSRC_PATH01 $F0
#macro TSRC_PATH02 $D4
#macro TSRC_PATH03 $D5
#macro TSRC_MONS01 $D8
#macro TSRC_BRDG1A $B2
#macro TSRC_BRDG1B (TSRC_BRDG1A + 1)
#macro TSRC_HOLE01 $C8
#macro TSRC_OTHE01 $FF
#macro TSRC_ELEVATOR_SHAFT $60
#macro OWRC_DFL $8080
#macro MK_OWRC_NPAL1 (STR_OWRC + STR_North_Palace + "01")
#macro MK_OWRC_PAL_PRPA1 (STR_OWRC + STR_Parapa_Palace + "01")
#macro MK_OWRC_PAL_MDRO1 (STR_OWRC + STR_Midoro_Palace + "01")
#macro MK_OWRC_PAL_ISLD1 (STR_OWRC + STR_Island_Palace + "01")
#macro MK_OWRC_PAL_MAZE1 (STR_OWRC + STR_Maze_Island_Palace + "01")
#macro MK_OWRC_PAL_POTS1 (STR_OWRC + STR_Palace_On_The_Sea + "01")
#macro MK_OWRC_PAL_THRE1 (STR_OWRC + STR_Three_Eye_Rock_Palace + "01")
#macro MK_OWRC_PAL_GRET1 (STR_OWRC + STR_Great_Palace + "01")
#macro MK_OWRC_PAL_DRAG1 (STR_OWRC + STR_Dragmire_Tower + "01")
#macro MK_OWRC_TWN_RAUR1 (STR_OWRC + STR_Rauru + "01")
#macro MK_OWRC_TWN_RUTO1 (STR_OWRC + STR_Ruto + "01")
#macro MK_OWRC_TWN_SARI1 (STR_OWRC + STR_Saria + "01")
#macro MK_OWRC_TWN_SARI2 (STR_OWRC + STR_Saria + "02")
#macro MK_OWRC_TWN_MIDO1 (STR_OWRC + STR_Mido + "01")
#macro MK_OWRC_TWN_NABO1 (STR_OWRC + STR_Nabooru + "01")
#macro MK_OWRC_TWN_DARU1 (STR_OWRC + STR_Darunia + "01")
#macro MK_OWRC_TWN_NEWK1 (STR_OWRC + STR_New_Kasuto + "01")
#macro MK_OWRC_TWN_OLDK1 (STR_OWRC + STR_Old_Kasuto + "01")
#macro MK_OWRC_TWN_BULB1 (STR_OWRC + STR_Bulblin + "01")
#macro MK_OWRC_RDVL1 (STR_OWRC + STR_River_Devil + "01")
#macro CUCCO_PLACEMENT_SPR spr_Placement_16x16
#macro PC_PLACEMENT_SPR spr_Placement_16x32
#macro PC_W sprite_get_width(PC_PLACEMENT_SPR)
#macro PC_W_ (PC_W>>1)
#macro PC_H sprite_get_height(PC_PLACEMENT_SPR)
#macro PC_H_ (PC_H>>1)
#macro ELEV_H (PC_H + $10)
#macro MAX_GOB1 $20
#macro MAX_GOC1 $20
#macro MAX_GOC2 $06
#macro STR_Battle "_Battle"
#macro STR_Defeated "_Defeated"
#macro STR_Won "_Won"
#macro STR_Lost "_Lost"
#macro STR_Boss_map_page "_Boss_map_page"
#macro TOWN_IDX_RAU $00
#macro TOWN_IDX_RUT $01
#macro TOWN_IDX_SAR $02
#macro TOWN_IDX_MID $03
#macro TOWN_IDX_NAB $04
#macro TOWN_IDX_DAR $05
#macro TOWN_IDX_NKA $06
#macro TOWN_IDX_OKA $07
#macro TOWN_IDX_BUL $08
#macro MapAreaName_DEF "???"
#macro MapAreaName_DATAKEY (STR_Map+STR_Area+STR_Name)
#macro MapAreaName_NORTH_CASTLE "NORTH CASTLE"
#macro MapAreaName_NORTH_CASTLE_LAKE (MapAreaName_NORTH_CASTLE + " LAKE")
#macro MapAreaName_NORTH_CASTLE_FOREST (MapAreaName_NORTH_CASTLE + " FOREST")
#macro MapAreaName_NORTH_CASTLE_FIELD (MapAreaName_NORTH_CASTLE + " FIELD")
#macro MapAreaName_PARAPA_DESERT "PARAPA DESERT"
#macro MapAreaName_TANTARI_DESERT "TANTARI DESERT"
#macro MapAreaName_BULBLIN "BULBLIN"
#macro MapAreaName_KASUTO "KASUTO"
#macro MapAreaName_NEW_KASUTO "NEW KASUTO"
#macro MapAreaName_DARUNIA "DARUNIA"
#macro MapAreaName_NABOORU "NABOORU"
#macro MapAreaName_MIDO "MIDO"
#macro MapAreaName_SARIA "SARIA"
#macro MapAreaName_RUTO "RUTO"
#macro MapAreaName_RAURU "RAURU"
#macro UIDX_NULL -1
#macro CONT_PIECE_OBJ_HP ItmB0
#macro CONT_PIECE_OBJ_MP ItmB1
#macro CONT_PIECE_OBJ_VER_HP 1
#macro CONT_PIECE_OBJ_VER_MP 1
#macro CONT_PIECE_OBJVER_NAME_HP (object_get_name(CONT_PIECE_OBJ_HP) + "0" + string(CONT_PIECE_OBJ_VER_HP))
#macro CONT_PIECE_OBJVER_NAME_MP (object_get_name(CONT_PIECE_OBJ_MP) + "0" + string(CONT_PIECE_OBJ_VER_MP))
#macro CONT_OBJ_NAME_PREFIX (string_copy(object_get_name(CONT_PIECE_OBJ_HP), 1, string_length(object_get_name(CONT_PIECE_OBJ_HP))-1))
#macro OGR_JUMP 1
#macro OGR_OTHR 2
#macro TSRC_BREAK1_A ("90" + "91" + "92" + "93")
#macro TSRC_BREAK1_B ("94" + "95" + "96" + "97")
#macro TSRC_BREAK1_C ("9C" + "9C" + "9D" + "9D")
#macro TSRC_BREAK2_A ("98" + "98" + "99" + "99")
#macro TSRC_BREAK2_B ("9A" + "9A" + "9B" + "9B")
#macro TSRC_BREAK3_A ("82" + "83" + "92" + "93")
#macro TSRC_BREAK3_B ("86" + "87" + "96" + "97")
#macro TSRC_BREAK4_A ("A8" + "A8" + "A9" + "A9")
#macro COL_PER_PAL 4
#macro PI_PERMUTATIONS 6
#macro PC_PAL_COUNT1 3
#macro PC_PAL_COUNT2 3
#macro PC_PAL_COUNT (PC_PAL_COUNT1 + PC_PAL_COUNT2 + 1)
#macro PI_BASE 0
#macro PI_GUI_1 (PI_BASE + 1)
#macro PI_GUI_2 (PI_GUI_1 + 1)
#macro PI_GUI_3 (PI_GUI_2 + 1)
#macro PI_GUI_4 (PI_GUI_3 + 1)
#macro PI_PC_1 (PI_GUI_1 + 1)
#macro PI_PC_3 (PI_PC_1 + PC_PAL_COUNT1)
#macro PI_PC_2 (PI_PC_3 + 1)
#macro PI_CUC1 (PI_PC_2 + PC_PAL_COUNT2)
#macro PI_CUC3 (PI_CUC1 + PC_PAL_COUNT1)
#macro PI_CUC2 (PI_CUC3 + 1)
#macro PI_DARKLONK (PI_CUC2 + PC_PAL_COUNT2)
#macro PI_BGR_1 (PI_DARKLONK + 1)
#macro PI_BGR_2 (PI_BGR_1 + 1)
#macro PI_BGR_3 (PI_BGR_2 + 1)
#macro PI_BGR_4 (PI_BGR_3 + 1)
#macro PI_MOB_ORG (PI_BGR_4 + 1)
#macro PI_MOB_RED (PI_MOB_ORG + 1)
#macro PI_MOB_BLU (PI_MOB_RED + 1)
#macro PI_MOB_PUR (PI_MOB_BLU + 1)
#macro PI_CLOUD_1 PI_BGR_4
#macro PI_PC_SWORD (PI_MOB_PUR + 2 + (PC_PAL_COUNT<<1) + 1)
#macro SAVE_NAME_CHAR_LIMIT 8
#macro SAVE_FILE_MAX 3
#macro SAVE_NAME_EMPTY (string_repeat(" ", SAVE_NAME_CHAR_LIMIT))
#macro SAVE_NAME_NULL SAVE_NAME_EMPTY
#macro QUEST_SPELL_PROTECT 1
#macro QUEST_SPELL_JUMP (QUEST_SPELL_PROTECT + 1)
#macro QUEST_SPELL_LIFE (QUEST_SPELL_JUMP + 1)
#macro QUEST_SPELL_FAIRY (QUEST_SPELL_LIFE + 1)
#macro QUEST_SPELL_FIRE (QUEST_SPELL_FAIRY + 1)
#macro QUEST_SPELL_REFLECT (QUEST_SPELL_FIRE + 1)
#macro QUEST_SPELL_SPELL (QUEST_SPELL_REFLECT + 1)
#macro QUEST_SPELL_THUNDER (QUEST_SPELL_SPELL + 1)
#macro QUEST_SARIA_BRIDGE (QUEST_SPELL_THUNDER + 1)
#macro QUEST_CONT_MP (QUEST_SARIA_BRIDGE + 1)
#macro QUEST_SPELL_SUMMON (QUEST_CONT_MP + 1)
#macro BODY_HB_IDX_DYNAMIC -2
#macro SPR_Zelda_Asleep spr_Zelda_Asleep_1a
#macro Zelda_DATAKEY1 (STR_Zelda+STR_Dialogue+STR_State+STR_Quest+"02")
#macro Wiseman_DATAKEY1 (STR_Wiseman+STR_Dialogue+STR_State+STR_Quest+"02")
#macro Scroblin_DATAKEY1 (STR_Scroblin+STR_Open+STR_Path)
#macro SteelCrescents_NAME "Steel Crescent"
#macro dk_NO_ENCOUNTER "NO_ENCOUNTER"
#macro dk_SpawnDatakey "_SpawnDatakey"
#macro dk_SceneMusicThemeException "_SceneMusicThemeException"
#macro dk_SoundObject "_SoundObject"
#macro dk_RandomCustom "_RandomCustom"
#macro dk_LimitObscure "_LimitObscure"
#macro dk_AlternateEntrance "_AlternateEntrance"
#macro dk_Castlevania2 "_Castlevania2"
#macro dk_Wyng "_Wyng"
#macro dk_IsabelleChiming "_IsabelleChiming"
#macro dk_IsabelleChiming2 (dk_IsabelleChiming + "2")
#macro dk_Nikos8BitStereo "_Nikos8BitStereo"
#macro dk_NikoTengoku "_NikoTengoku"
#macro dk_SteelCrescent "_SteelCrescent"
#macro dk_SteelCrescent2 "_SteelCrescent2"
#macro dk_SteelCrescent3 "_SteelCrescent3"
#macro dk_SteelCrescent4 "_SteelCrescent4"
#macro dk_SteelCrescent5 "_SteelCrescent5"
#macro dk_Minigame "_Minigame"
#macro dk_GannonLaugh "_GannonLaugh"
#macro dk_PlaceCrystal "_PlaceCrystal"
#macro dk_GameClear "_GameClear"
#macro dk_WakeZelda "_WakeZelda"
#macro dk_Credits "_Credits"
#macro dk_GetSpell "_GetSpell"
#macro dk_SaveGame "_SaveGame"
#macro dk_LevelUp "_LevelUp"
#macro dk_Fanfare "_Fanfare"
#macro dk_GetItem "_GetItem"
#macro dk_EliminateFile "_EliminateFile"
#macro dk_TypeChar "_TypeChar"
#macro dk_ChooseChar "_ChooseChar"
#macro dk_CursorRegisterName "_CursorRegisterName"
#macro dk_CursorFileSelect "_CursorFileSelect"
#macro dk_StabItem "_StabItem"
#macro dk_ZeldaTalk "_ZeldaTalk"
#macro dk_FairyFly "_FairyFly"
#macro dk_XPTick "_XPTick"
#macro dk_MagicalKeyHouse "_MagicalKeyHouse"
#macro dk_CursorSpellMenu "_CursorSpellMenu"
#macro dk_OpenGUI "_OpenGUI"
#macro dk_LowHPBeep "_LowHPBeep"
#macro dk_RaiseBarrier "_RaiseBarrier"
#macro dk_ElevatorMove "_ElevatorMove"
#macro dk_ItemDrop "_ItemDrop"
#macro dk_BridgeCrumble "_BridgeCrumble"
#macro dk_BlockBreak "_BlockBreak"
#macro dk_WalkWater "_WalkWater"
#macro dk_EnemyDeath "_EnemyDeath"
#macro dk_Boomerang "_Boomerang"
#macro dk_HitShield "_HitShield"
#macro dk_StrikeEnemy "_StrikeEnemy"
#macro dk_StrikeSolid "_StrikeSolid"
#macro dk_FallScene "_FallScene"
#macro dk_FileSelect "_FileSelect"
#macro dk_DeathMountain "_DeathMountain"
#macro dk_DeathMtn "_DeathMtn"
#macro dk_MazeIsland "_MazeIsland"
#macro dk_MazeIsl "_MazeIsl"
#macro dk_ValleyOfDeath "_ValleyOfDeath"
#macro dk_OldKasuto "_OldKasuto"
#macro dk_ThunderBird "_ThunderBird"
#macro dk_ShadowBoss "_ShadowBoss"
#macro dk_Intro_CanPlay "_Intro_CanPlay"
#macro dk_GameOver "_GameOver"
#macro dk_ContinueSave "_ContinueSave"
#macro dk_MidoChurch "_MidoChurch"
#macro dk_FastTravel "_FastTravel"
#macro dk_SceneCanAddTownForWarp "_SceneCanAddTownForWarp"
#macro dk_LandLocked "_LandLocked"
#macro dk_DynamicDialogue "_DynamicDialogue"
#macro dk_SceneRando "_SceneRando"
#macro MAP1_PRICE 2000
#macro MAP2_PRICE 5000



}
