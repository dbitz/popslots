--[[ example for an inheriting test :
--
-- local SpinTest = classes.class(BaseIntegrationTest)
-- function SpinTest:setup()
-- require("integrationTestsUtils")
-- ...
-- end
-- function SpinTest:test()
-- ...
-- end
-- function SpinTest:teardown()
-- ...
-- end
--
-- return SpinTest
--
--]]

require("integrationTestsUtils")

LOG_INFO("BaseIntegrationTest EYALBBBBBBBBBBBBBBB")

BaseIntegrationTest = classes.class()

-- initParams is actually additional params that were sent to this test. it might be nil as well.
-- we are assigning it to  self.addParams field, so it can be used within the tests, the inherit baseintegrationtest.
function BaseIntegrationTest:init(initParams)
  -- init addParams
  if (initParams ~= nil) then
    -- init addParams
    self.addParams = { }
    for key,value in pairs(initParams) do
      self.addParams[key] = value
    end
  end
end

function BaseIntegrationTest:_run()
  local ok
  local param1

  ok, param1 = pcall(self.setup, self)
  if not ok then
    LOG_ERROR ("test setup() error. errorMsg: " .. tostring(param1))
  end

  ok, param1 = pcall(self.test, self)
  if not ok then
    LOG_ERROR ("test test() error. errorMsg: " .. tostring(param1))
  end

  ok, param1 = pcall(self.teardown, self)
  if not ok then
    LOG_ERROR ("test teardown() error. errorMsg: " .. tostring(param1))
  end

  return "success"
end

function BaseIntegrationTest:setup()
  LOG_ERROR("ERROR! Attempt to call an undefined abstract method: 'setup()'")
end

function BaseIntegrationTest:test()
  LOG_ERROR("ERROR! Attempt to call an undefined abstract method: 'test()'")
end

function BaseIntegrationTest:teardown()
  LOG_ERROR("ERROR! Attempt to call an undefined abstract method: 'teardown()'")
end


return BaseIntegrationTest
