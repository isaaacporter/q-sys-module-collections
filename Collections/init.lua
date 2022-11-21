--A Simple Queue Class
Queue = {}

function Queue:New()
  local table = { first = 1, last = 0 }
  self.__index = self
  setmetatable(table, self)
  return table
end

function Queue:Push(value)
  self.last = self.last + 1
  self[self.last] = value
end

function Queue:PushFirst(value)
  self.first = self.first - 1
  self[self.first] = value
end

function Queue:Pop()
  if self.first > self.last then
    error("Queue is empty")
  end
  local value=self[self.first]
  self[self.first] = nil
  self.first = self.first + 1
  return value
end

function Queue:IndexOf(value)
  for i=self.first,self.last do
    if self[i] == value then
      return i
    end
  end
  return nil
end

function Queue:Clear()
  for i=self.first,self.last do
    self[i] = nil
  end
  self.first = 1
  self.last = 0
end

function Queue:IsEmpty()
  return self.first > self.last
end

-- A Simple Stack Class
Stack = {}

function Stack:New()
  local table = {top = 0}
  self.__index = self
  setmetatable(table, self)
  return table
end

function Stack:Push(value)
  self.top = self.top + 1
  self[self.top] = value
end

function Stack:Pop()
  if self.top < 1 then
    error("Stack is empty")
  end
  local value = self[self.top]
  self[self.top] = nil
  self.top = self.top - 1
  return value
end

function Stack:IndexOf(value)
  for i=1,self.top do
    if self[i] == value then
      return i
    end
  end
  return nil
end

function Stack:Clear()
  for i=1,self.top do
    self[i] = nil
  end
  self.top = 0
end

function Stack:IsEmpty()
  return self.top < 1
end

-- A simple Dictionary Class
Dictionary = {}

function Dictionary:New()
  local table = {}
  self.__index = self
  setmetatable(table, self)
  return table
end

function Dictionary:Add(key,val)
  if(not(self[key])) then
    self[key] = val
  else
    error("Key already exists")
  end
end

function Dictionary:FindKey(value)
  for key, val in pairs(self) do
   if(val == value) then
    return key
   end
  end
  return nil
end

function Dictionary:ContainsKey(paramKey)
  for key, val in pairs(self) do
    if(paramKey == key) then
      return true
    end
    return false
  end
end

function Dictionary:ContainsValue(paramValue)
  for key, val in pairs(self) do
    if(paramValue == val) then
      return true
    end
    return false
  end
end

function Dictionary:Clear()
  for key, val in pairs(self) do
    self[key] = nil
  end
end

function Dictionary:IsEmpty()
  if next(self) == nil then
    return true
  else
    return false
  end
end