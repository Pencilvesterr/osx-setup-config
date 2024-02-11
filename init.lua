local tv_identifier = "LG TV"
local mac_address = "80:5B:65:7E:43:D6"
local tv_connected = (hs.screen.find(tv_identifier) ~= nil)
local debug = true  -- Set to true to enable debug messages

if debug then
  print("List of all screens: " .. hs.inspect(hs.screen.allScreens()))
  if tv_connected then print("TV with identifier '"..tv_identifier.."' was detected.") end
end

watcher = hs.caffeinate.watcher.new(function(eventType)
  --eventType == hs.caffeinate.watcher.screensDidWake or
  -- eventType == hs.caffeinate.watcher.systemDidWake or

  if (eventType == hs.caffeinate.watcher.screensDidUnlock) and hs.screen.find(tv_identifier) ~= nil then
    if debug then print("TV was turned on.") end
    hs.execute("/usr/local/bin/wakeonlan "..mac_address)
  end
end)
watcher:start()