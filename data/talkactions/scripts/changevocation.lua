local vocation = {
  masterSorcerer = 5,
  elderDruid = 6,
  royalPaladin = 7,
  eliteKnight = 8
}

function onSay(cid, words, param, channel)
  if (param == "") then
    return doPlayerSendCancel(cid, "No parameter specified.")
  end

  if (param:lower() == "sorcerer") then
    doPlayerSetVocation(cid, vocation.masterSorcerer)
    doCreatureSay(cid, param, TALKTYPE_MONSTER)
    doSendMagicEffect(getThingPos(cid), 10)
  elseif (param:lower() == "druid") then
    doPlayerSetVocation(cid, vocation.elderDruid)
    doCreatureSay(cid, param, TALKTYPE_MONSTER)
    doSendMagicEffect(getThingPos(cid), 10)
  elseif (param:lower() == "paladin") then
    doPlayerSetVocation(cid, vocation.royalPaladin)
    doCreatureSay(cid, param, TALKTYPE_MONSTER)
    doSendMagicEffect(getThingPos(cid), 10)
  elseif (param:lower() == "knight") then
    doPlayerSetVocation(cid, vocation.eliteKnight)
    doCreatureSay(cid, param, TALKTYPE_MONSTER)
    doSendMagicEffect(getThingPos(cid), 10)
  end
  return true
end