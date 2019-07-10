-- toggle mic on google hangouts

mute = false
function muteHangouts()
	previouslyFocusedWindow = hs.window.focusedWindow()

	chrome = hs.application.find("Google Chrome")
	chrome:activate()

	goToMeetTab = [[
		tell application "Google Chrome"
			set i to 0
			repeat with t in tabs of first window
				set i to i + 1
				if title of t contains "Meet" then
					set active tab index of first window to i
					return
				end if
			end repeat
		end tell
	]]
	hs.osascript.applescript(goToMeetTab)

 	hs.eventtap.keyStroke({ "cmd" }, "d") -- mute shortcut
	mute = not mute
	setMeetMute(mute)

	previouslyFocusedWindow:focus()
end

hs.hotkey.bind({"cmd", "shift"}, "1", muteHangouts)


-- put mac to screensaver

function startScreenSaver()
	start = [[
		tell application "System Events"
		start current screen saver
	end tell
	]]
	hs.osascript.applescript(start)
end

bedtime = hs.menubar.new()
bedtime:setIcon("./bedtime.pdf")
bedtime:setClickCallback(startScreenSaver)

hs.hotkey.bind({"cmd", "shift"}, "6", startScreenSaver)
