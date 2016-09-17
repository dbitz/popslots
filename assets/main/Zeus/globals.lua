
log = function(self, ...)
    print(tostring(self), ...)
end

function tableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function tableInsertUnique(T, item)
    for key, val in ipairs(T) do if (val == item) then return end end
    table.insert(T, item)
end

logDebug = function(str)
	print("[DEBUG] " .. str)
end

printTable = function(t, indent)
    if (t == nil) then
        print("Table is nil")
    else
        indent = indent or ""
        local numKeys = 0
        for key,value in pairs(t) do
            numKeys = numKeys + 1
            if (type(value) ~= "table") then
                print(indent, key, " = ", tostring(value))
            else
                print(indent, key, " = ")
                local newIndent = indent.."\t"
                printTable(value, newIndent)
            end
            
        end
        if (numKeys == 0) then
            print(indent, "Empty Table")
        end
    end
end

printTableWithFormatting = function(t, indent)
   if (t == nil) then
       print("Table is nil")
   else
       indent = indent or ""
       local numKeys = 0
       for key,value in pairs(t) do
           numKeys = numKeys + 1
           if (type(value) ~= "table") then
               
               if (type(value) == "string") then
                   value = "'"..value.."'"
               end
               
               if (type(key) == "number") then
                   print(indent.." " ..  tostring(value) ..  ",")
               else
                  print(indent.." ".. key .. " = " ..  tostring(value) ..  ",")
               end
               
           else
               --print(indent, key, " = {")
               
               if (type(key) ~= "number") then
                   print(indent , key .. "={")
               else
                   print(indent , "{")
               end
               
               
               local newIndent = indent.."\t"
               printTableWithFormatting(value, newIndent)
               print(indent, "},")
           end
           
       end
       if (numKeys == 0) then
           print(indent, "Empty Table")
       end
   end
end



function splitString(inputstr, sep, func)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        local i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = func(str)
                i = i + 1
        end
        return t
end

