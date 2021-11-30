sealConfig = {
  effect = { distance = 35, closest = 10,
  },
  summonLimit = 10,
  summonMessages = {
    ", has been summoned!",
    ", I summon you!",
    ", help me!"
  },
  blockedMonsters = {
    ["demon"] = {},
    ["dragon"] = {},
    ["dragon lord"] = {},
    ["rotworm"] = {},
    ["cave rat"] = {},
  }
}

function doSetSealProperties(cid, item, itemEx)
  local posItemEx = getThingPos(itemEx.uid)

  doItemSetAttribute(item.uid, "sealname", getCreatureName(itemEx.uid))
  doItemSetAttribute(item.uid, "seallife", getCreatureHealth(itemEx.uid))
  doItemSetAttribute(item.uid, "sealdate", os.date("%d/%m/%Y - %X"))
  local creatureDescr = getPlayerName(cid) .. " sealed a " .. "'" .. getCreatureName(itemEx.uid) .. "'" .. " in " .. os.date("%d/%m/%Y - %X") .. ". \nLife: " .. getCreatureHealth(itemEx.uid) .. "/" .. getCreatureMaxHealth(itemEx.uid)
  doItemSetAttribute(item.uid, "description", creatureDescr)
  sendDiagonalEffect(posItemEx, sealConfig.effect.distance, 2, "out")
  doSendMagicEffect(posItemEx, sealConfig.effect.closest)
end
