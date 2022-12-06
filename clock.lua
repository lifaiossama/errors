-- -- Get the current time
-- local currentTime = os.date("%H:%M:%S")

-- -- Format the time to look like a clock
-- local clockTime = string.format("%s", currentTime)

-- -- Print the clock time to the console
-- print(clockTime)



















-- -- This function will return the current time in the format "HH:MM:SS"
-- local function getCurrentTime()
--     return os.date("%H:%M:%S")
--   end
  
--   -- This is the time we want to check for
--   local targetTime = "01:00:00"
  
--   -- This is the main loop that will run indefinitely
--   while true do
--     -- Get the current time
--     local currentTime = getCurrentTime()
  
--     -- Check if the current time matches the target time
--     if currentTime == targetTime then
--       -- If the times match, print something
--       print("The current time is 1:00 AM!")
--     end
  
--     -- Sleep for one second before checking the time again
--     os.execute("sleep 1")
--   end
  


-- Define a function to call after every hour has passed
local function afterHour()
    -- Print a message
    print("An hour has passed. Doing something after the hour...")
  end
  
  -- Get the current time
  local currentTime = os.time()
  
  -- Store the time from the previous check
  local previousTime = currentTime
  
  while true do
    -- Get the current time again
    currentTime = os.time()
  
    -- Check if an hour has passed since the last check
    if currentTime - previousTime >= 3600 then
      -- Call the afterHour function
      afterHour()
  
      -- Update the previous time to the current time
      previousTime = currentTime
    end
  
    -- Sleep for a minute to avoid constantly checking the time
    os.execute("sleep 60")
  end
  