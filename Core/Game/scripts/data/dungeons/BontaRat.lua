local group1 = {
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {938, {1,2,3,4,5}}
}

local group2 = {
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}}
}

local group3 = {
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {447, {1,2,3,4,5}}
}

local group4 = {
    {442, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {447, {1,2,3,4,5}}
}

local group5 = {
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}}
}

local group6 = {
    {447, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {938, {1,2,3,4,5}},
    {938, {1,2,3,4,5}}
}

local group7 = {
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {941, {1,2,3,4,5}}
}

local group8 = {
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {938, {1,2,3,4,5}},
    {938, {1,2,3,4,5}}
}

local group9 = {
    {940, {1,2,3,4,5}},
    {442, {1,2,3,4,5}},
    {447, {1,2,3,4,5}},
    {942, {1,2,3,4,5}};
    {942, {1,2,3,4,5}},
    {942, {1,2,3,4,5}},
    {941, {1,2,3,4,5}},
    {938, {1,2,3,4,5}}
}

local mapInfos = {
    [10200] = {groupCell= 281, group= group1, winDest= {10201,182}},
    [10201] = {groupCell= 70, group= group2, winDest= {10202,119}},
    [10202] = {groupCell= 141, group= group3, winDest= {10203,332}},
    [10203] = {groupCell= 97, group= group4, winDest= {10204,176}},
    [10204] = {groupCell= 155, group= group5, winDest= {10205,165}},
    [10205] = {groupCell= 185, group= group6, winDest= {10210,176}},
    [10210] = {groupCell= 380, group= group7, winDest= {10211,165}},
    [10211] = {groupCell= 296, group= group8, winDest= {10212,50}},
    [10212] = {groupCell= 169, group= group9, winDest= {10213,452}}
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
