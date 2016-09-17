--[[ cheatsTable .
-- this table is relavant to integration tests only, where we use hard-coded list of cheats.
--]]

cheatsTable = { }


-- spin cheat:
-- Important #1: When not using an "FSM" as first param - always send "RANDOM". When using "FSM" - you can send a specific type of fsm, or random.
-- Important #2: Make sure machine is configured with the stopping point.
-- examples to parameters:
-- {"FSM", "LUCKY_SPIN"},
-- {"5row", "RANDOM"}


cheatsTable["spin"] = {
  id = 100,
  usage = "spin",
  params = { "stoppoint" , "fsm"},
  defaultValues = {"FSM", "LUCKY_SPIN"},
  --defaultValues = {"5row", "RANDOM"},
}


cheatsTable["setCoin"] = {
  id = 1001,
  usage = "set coin",
  params = { "amount" },
  defaultValues = { 100 },
}


cheatsTable["setLevel"] = {
  id = 1005,
  usage = "set level",
  params = { "level" },
  defaultValues = { 5 },
}

-- grantDaily cheat:
-- param=0 will grant the user the daily bonus it deserves (according to its day in the app).
-- param=1 will give the user the 7th day present reward.
cheatsTable["grantDaily"] = {
  id = 1006,
  usage = "grant daily",
  params = { "param" },
  defaultValues = { 0 },
}

cheatsTable["reset"] = {
  id = 1008,
  usage = "reset user",
  params = nil,
  defaultValues = nil,
}

cheatsTable["setNearLevel"] = {
  id = 1009,
  usage = "set level to level up on next spin",
  params = { "level" },
  defaultValues = { 2 },
}

cheatsTable["entitleTimeReward"] = {
  id = 1010,
  usage = "make sure user is entitled for time reward",
  params = nil,
  defaultValues = nil,
}

cheatsTable["setNearLevelWithMultiplier"] = {
  id = 1011,
  usage = "set level to level up on next spin with new daily multplier",
  params = nil,
  defaultValues = nil,
}

-- decreaseDays cheat
-- Important: by sending a really big number (bigger than its current number of days in app), you can reset the user's day to day 1. 
cheatsTable["decreaseDays"] = {
  id = 1012,
  usage = "decrease the days in app",
  params = { "param" },
  defaultValues = { 5 },
}

cheatsTable["nameKeyToIDMap"] = { }

function createNameKeyToIDMap()
  for k,v in pairs(cheatsTable) do
    if (k ~= "nameKeyToIDMap") then
      cheatsTable.nameKeyToIDMap[k] = v.id
    end
  end
end

createNameKeyToIDMap()

return cheatsTable
