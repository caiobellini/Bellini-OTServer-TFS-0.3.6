local config = {
  itemid = 2767,
  effect = 65,
}
function onSay(cid, words, param, channel)
  local itemAround = getItemUidAround(cid, config.itemid, 7, 5)
  
  if not itemAround then
    return doPlayerSendTextMessage(cid, 19, "ItemID: " .. config.itemid .. " wasn't found around.")
  end
  
  for _, itemuid in ipairs(itemAround) do
    local pos = getThingPos(itemuid)
    doPlayerSendTextMessage(cid, 19, "ItemID: [" .. getItemIdByName(getItemName(itemuid)) .. "] Position: { X = " .. getThingPos(itemuid).x .. ", Y = " .. getThingPos(itemuid).y .. ", Z = " .. getThingPos(itemuid).z .. " }")
    doSendMagicEffect(pos, config.effect)
    doRemoveItem(itemuid, 1)
    local summon = doCreateMonster("Gargoyle", pos)
    doConvinceCreature(cid, summon)

    local checkSummon = getCreatureSummons(cid)
    for _, pid in ipairs(checkSummon) do
      doCreatureSetLookDir(pid, EAST)
    end

    addEvent(function()
      local checkSummon = getCreatureSummons(cid)
      doCreateItem(config.itemid, pos)
      doSendMagicEffect(pos, config.effect)
      for _, pid in ipairs(checkSummon) do
        if isPlayer(cid) then
          doSendMagicEffect(getThingPos(pid), config.effect)
          doRemoveCreature(pid)
        end
      end
    end, 5000)
  end

  doCreatureSay(cid, "Piertotum Locomotor", TALKTYPE_MONSTER)
  return true
end