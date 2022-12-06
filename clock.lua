-- Get the current time
local currentTime = os.date("%H:%M:%S")

-- Format the time to look like a clock
local clockTime = string.format("%s", currentTime)

-- Print the clock time to the console
print(clockTime)
