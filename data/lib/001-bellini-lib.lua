function getMonsterAround(cid, rangeX, rangeY)
  local positions = {}
  local cid = getCreaturePosition(cid)
  local getAround = getSpectators(cid, rangeX, rangeY, false)
  if getAround then
    for test, pid in ipairs(getAround) do
      local pos = getTileItemById(getThingPos(pid), 2768).itemid
      if (pos >= 1) then
        table.insert(positions, test)
      end
    end
  end
  return positions
end

function getItemUidAround(cid, itemid, rangeX, rangeY)
	local itemUID = {}
  local pid = getThingPos(cid)

	for x = pid.x - rangeX, pid.x + rangeX do
    for y = pid.y - rangeY, pid.y + rangeY do
      local pos = { x = x, y = y, z = pid.z}
      local itemuid = getTileItemById(pos, itemid).uid

      if itemuid >= 1 then
        table.insert(itemUID, itemuid)
      end
    end
  end
	return itemUID
end

function sendDiagonalEffect(pos, effect, distance, from)
  if from == "out" then
    doSendDistanceShoot({x = pos.x - distance, y = pos.y - distance, z = pos.z}, pos, effect)
    doSendDistanceShoot({x = pos.x + distance, y = pos.y - distance, z = pos.z}, pos, effect)
    doSendDistanceShoot({x = pos.x - distance, y = pos.y + distance, z = pos.z}, pos, effect)
    doSendDistanceShoot({x = pos.x + distance, y = pos.y + distance, z = pos.z}, pos, effect)
  elseif from == "in" then
    doSendDistanceShoot(pos, {x = pos.x - distance, y = pos.y - distance, z = pos.z}, effect)
    doSendDistanceShoot(pos, {x = pos.x + distance, y = pos.y - distance, z = pos.z}, effect)
    doSendDistanceShoot(pos, {x = pos.x - distance, y = pos.y + distance, z = pos.z}, effect)
    doSendDistanceShoot(pos, {x = pos.x + distance, y = pos.y + distance, z = pos.z}, effect)  
  end
end