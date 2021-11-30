local function firstCharUpper(string)
  return (string:gsub("^%l", string.upper))
end

function onUse(cid, item, fromPosition, itemEx, toPosition)
  local pos = getThingPos(cid)

  if getTilePzInfo(getPlayerPosition(cid)) then
    doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
    doPlayerSendCancel(cid, "Get out of protection zone to use this item.")
    return true
  end

  if (isPlayer(itemEx.uid) == isPlayer(cid)) then
    math.randomseed(os.time())
    local posCheck = getClosestFreeTile(cid, pos, true, true)
    local monstersAround = getMonsterAround(cid, 7, 7)
    local checkSummons = getCreatureSummons(cid)
    
    if not getItemAttribute(item.uid, "sealname") then
      return doPlayerSendTextMessage(cid, 21, "There's nothing sealed yet.")
    end
    
    if #checkSummons >= sealConfig.summonLimit then
      return doPlayerSendCancel(cid, "You cannot summon more than " .. sealConfig.summonLimit .. " creatures.")
    end
    
    if not isWalkable(posCheck, true, true) then
      return doPlayerSendCancel(cid, "There's no position to summon.")
    end
    
    local summon = doCreateMonster(getItemAttribute(item.uid, "sealname"), getPlayerPosition(cid))
    doCreatureAddHealth(summon, (getItemAttribute(item.uid, "seallife") - getCreatureMaxHealth(summon)))
    doConvinceCreature(cid, summon)
    doCreatureSay(cid, getItemAttribute(item.uid, "sealname") .. sealConfig.summonMessages[math.random(#sealConfig.summonMessages)], TALKTYPE_MONSTER)
    doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "A " .. getItemAttribute(item.uid, "sealname") .. " has been summoned.")
    sendDiagonalEffect(getCreaturePos(summon), sealConfig.effect.distance, 2, "in")
    doSendMagicEffect(getCreaturePos(summon), sealConfig.effect.closest)
    return true
  end

  if not isMonster(itemEx.uid) then
    return doPlayerSendTextMessage(cid, 21, "It's only possible to seal monsters.")
  end

  if sealConfig.blockedMonsters[string.lower(getCreatureName(itemEx.uid))] then
    return doPlayerSendTextMessage(cid, 21, "It's not possible to seal this monster.") 
  end

  doSetSealProperties(cid, item, itemEx)
  doRemoveCreature(itemEx.uid)        
  return true
end