center=[0 1 2 2 1 0 -1 -1 -1 -1 -1;
        0 1 1 2 3 4  4  3  2 1 0];

inner=center;
outer=center;
outer=outer+0.1;
   
m_track= struct('inner',inner,'outer',outer,'center',center);
