require('integrationTestsUtils')
require('BaseIntegrationTest')

--[[
moduleInit
@params [optional] [table] should include the following fields: testFileName - string of file to require, addParams - table of params to pass to the test
--]]
function moduleInit(params)
  LOG_INFO("moduleInit")
  ASSERT(params ~= nil, "Something went wrong sending the paramters to lua script init.")

  -- validate params has a field addParams that is either nil or a table
  if (params.addParams) then
    ASSERT(type(params.addParams) == "table", "Error. addParams are not of type table")
  end

  local testClass = require(params.testFileName)

  -- validate params has a field testFileName
  ASSERT(type(testClass) == "table", "Error. Did you forget to return the class at the end of your test file?")

  local test = testClass.new(params.addParams )

  -- validate test is instanceOf BaseIntegrationTest
  ASSERT(test:instanceOf(BaseIntegrationTest) == true, "Error. Did you forget to inherit from BaseIntegrationTest in you test file ?")

  local ok, param1
  ok, param1 = pcall(test._run, test)
  if not ok then
    LOG_ERROR ("test run() error. errorMsg: " .. tostring(param1))
  end

  return "success"
end

function moduleRelease()
  LOG_INFO("moduleRelease")
end


