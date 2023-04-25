
--Start of Global Scope--------------------------------------------------------- 

-- main function, which will be called when the engine.onStarted event has occurred.
function main()
  tmr = Timer.create() -- creation of handle object
  tmr:setExpirationTime(1000)
  tmr:setPeriodic(true)
  tmr:register("OnExpired","handleOnExpired")
   -- This will call the startTimer function as well as print the return string
  print(startTimer(tmr))
end


-- Registration to the engine.onStartedEvent
Script.register("Engine.OnStarted", main)

--End of Global Scope----------------------------------------------------------- 

--Start of Function and Event Scope---------------------------------------------

-- The function is given the Timer handle as parameter and it returns a string
-- The following annotation starting with @ is important to use object orientation and 
-- code completion for and within functions
--@startTimer(timerAsParameter:Timer):string
function startTimer(timerAsParameter)
  timerAsParameter:start()
  return("Timer started")
end

 function handleOnExpired()
  print("The timer expired")
end  

--End of Function and Event Scope------------------------------------------------





