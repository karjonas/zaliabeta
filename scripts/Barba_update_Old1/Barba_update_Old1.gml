function Barba_update_Old1() {

	/*
	// B11F: JSR B20D
	if (!g.camLocked || ed3 & $80)
	{
	    Boss_update_4a();
	}
	else
	{
	    // B122: JSR B1DE
	    // B1E3: JSR EF11
	    update_EF11();
    
	    // B1E6: JSR D6C1
	    if (cs & CS_LBD) enemy_collide_pc_body();
    
	    // B1E9
	    Boss_update_5a();
    
	    // B125
	    // B127: JSR 9C45
	    usd_BossHealthbar($18);
    
	    // B12A: JSR DC91
	    setFacingDir();
    
	    // B12D
	    if (!g.timer_stun_boss)
	    {
	        switch (subState)
	        {
	            case 0:
	            {
	                // B140
	                if (!g.eTimers[eIndex])
	                {
	                    var _data, _x;
	                    _data = "186BB8186BB818B8";
	                    _x = dataStrVal(_data, rand() & 7);
	                    _x = (ogX(id) & $F00) + _x;
	                    setXY(id, _x, ogY(id));
                    
	                    subState++;
	                }
                
	                break;
	            }
            
	            case 1:
	            {
	                // B154
	                if (ogY(id) & $80)
	                {
	                    // B15A
	                    setXY(id, xx, yy - 3);
	                }
	                else
	                {
	                    // B161
	                    g.eTimers[eIndex] = $A0;
	                    subState++;
	                }
                
	                break;
	            }
            
	            case 2:
	            {
	                // B16A
	                var _timer = g.eTimers[eIndex];
                
	                if (_timer)
	                {
	                    if !(_timer & 1)
	                    {
	                        if (_timer & $20) setXY(id, xx, yy + 1);
	                        else              setXY(id, xx, yy - 1);
	                        // setXY(id, xx, yy + 1);
	                        // if !(_timer & $20) setXY(id, xx, yy - 2);
	                    }
                    
	                    // B180
	                    var _val = val8b(_timer + ($30 ^ $FF));
                    
	                    if (_val < $30 
	                    &&  !(_timer & $30) 
	                    &&  g.timer0 & 1 )
	                    {
	                        if (projIndexIsAvail(g.eMgr.MAX_P) != -1)
	                        {
	                            // B195: JSR 9BE5
	                            // 9BE5: JSR DBCE
	                            var _p = Projectile_create(ogX(id), ogY(id), facingDir, Fireball3);
                            
	                            // 9BEA
	                            var _fdCopy1, _fdCopy2, _dist;
                            
	                            _fdCopy1 = facingDir;
	                            setFacingDir();
	                            _fdCopy2 = facingDir;
	                            facingDir = _fdCopy1;
                            
	                            _dist = eDist1();
	                            if (_dist & $80) _dist ^= $FF;
	                            _dist = val8b(_dist - $14) >> 4;
                            
	                            if (_fdCopy1 == _fdCopy2 && _dist < 8)
	                            {
	                                // 9C10
	                                var _data, _idx;
	                                _idx = _dist;
                                
	                                _data = "161413110F0E0D0B";
	                                _p.vspd = dataStrVal(_data, _idx);
                                
	                                _data = "060A0D0F11121313";
	                                _p.hspd = dataStrVal(_data, _idx);
	                                if (!_p.facingDir) _p.hspd ^= $FF;
                                
	                                _y = ogY(id) + 5;
	                                _x = ogX(id) + 4;
	                                setXY(_p, _x, _y);
                                
	                                // _p.pID = 1;
	                            }
	                            else
	                            {
	                                // 9C3F
	                                _p.pID = 0;
	                            }
                            
	                            if (_p.pID)
	                            {
	                                // B19A
	                                _p.pID = 4;
	                                _p.hspd = val8b(_p.hspd << 2);
	                                _p.vspd = val8b(_p.vspd << 2);
	                                with _p setXY(id, xx, yy - 3);
                                
	                                var                _xOff =  $10;
	                                if (!_p.facingDir) _xOff = -$08;
	                                _x = ogX(id) + xOffs[0] + _xOff;
	                                setXY(_p, _x, ogY(_p));
	                            }
	                        }
	                    }
	                }
	                else
	                {
	                    // B1BF
	                    g.eTimers[eIndex] = $80;
	                    subState++;
	                }
                
	                break;
	            }
            
	            case 3:
	            {
	                // B1C8
	                if (ogY(id) < $F0)
	                {
	                    setXY(id, xx, yy + 2);
	                }
	                else
	                {
	                    // B1D3
	                    subState = 0;
	                    g.eTimers[eIndex] = $60;
	                }
                
	                break;
	            }
	        }
	    }
	}
	*/




}
