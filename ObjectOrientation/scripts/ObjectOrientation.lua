--Start of Function and Event Scope---------------------------------------------

---The function is given the Timer handle as parameter and it returns a string
---@param timerAsParameter Timer
---@return string
local function startTimer(timerAsParameter)
  timerAsParameter:start()
  return("Timer started")
end

local function handleOnExpired()
  print("The timer expired")
end

---main function, which will be called when the engine.onStarted event has occurred.
local function main()
  tmr = Timer.create() -- creation of handle object
  tmr:setExpirationTime(1000)
  tmr:setPeriodic(true)
  tmr:register("OnExpired",handleOnExpired)
   -- This will call the startTimer function as well as print the return string
  print(startTimer(tmr))
end

-- Registration to the engine.onStartedEvent
Script.register("Engine.OnStarted", main)

--End of Function and Event Scope------------------------------------------------





