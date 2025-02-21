local group1 = {
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {274, {1,2,3,4,5}},
    {275, {1,2,3,4,5}},
    {276, {1,2,3,4,5}}
}

local group2 = {
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {273, {1,2,3,4,5}},
    {274, {1,2,3,4,5}}
}

local group3 = {
    {1181, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {273, {1,2,3,4,5}},
    {274, {1,2,3,4,5}},
    {275, {1,2,3,4,5}}
}

local group4 = {
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}}
}

local group5 = {
    {1181, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {273, {1,2,3,4,5}},
    {273, {1,2,3,4,5}}
}

local group6 = {
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}}
}

local group7 = {
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1181, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}}
}

local groupcoco = {
    {1184, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {273, {1,2,3,4,5}}
}

local groupcherry = {
    {1185, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {275, {1,2,3,4,5}}
}

local groupindigo = {
    {1186, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {274, {1,2,3,4,5}}
}

local grouppippin = {
    {1187, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}},
    {276, {1,2,3,4,5}}
}

local groupmulti = {
    {1188, {1,2,3,4,5}},
    {1184, {1,2,3,4,5}},
    {1185, {1,2,3,4,5}},
    {1186, {1,2,3,4,5}},
    {1187, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1183, {1,2,3,4,5}},
    {1182, {1,2,3,4,5}}
}

local mapInfos = {
    [11879] = {groupCell= 150, group= group1, winDest= {11880,433}},
    [11880] = {groupCell= 415, group= group2, winDest= {11881,433}},
    [11881] = {groupCell= 393, group= group3, winDest= {11882,433}},
    [11882] = {groupCell= 417, group= group4, winDest= {11883,433}},
    [11883] = {groupCell= 382, group= group5, winDest= {11884,433}},
    [11884] = {groupCell= 314, group= group6, winDest= {11885,433}},
    [11885] = {groupCell= 240, group= group7, winDest= {11886,231}},
    [11887] = {groupCell= 163, group= groupcoco, winDest= {11891,450}},
    [11888] = {groupCell= 403, group= groupcherry, winDest= {11891,450}},
    [11889] = {groupCell= 308, group= groupindigo, winDest= {11891,450}},
    [11890] = {groupCell= 400, group= grouppippin, winDest= {11891,450}},
    [11892] = {groupCell= 184, group= groupmulti, winDest= {11878,99}}
}

for k,v in pairs(mapInfos) do
    local map = MAPS[k]
    if map then
        map.onFightEnd[PVMFightType] = fightEndTeleportWinnerPlayers(v.winDest[1], v.winDest[2])
        map.staticGroups = {
            {v.groupCell, v.group}
        }
    end
end
