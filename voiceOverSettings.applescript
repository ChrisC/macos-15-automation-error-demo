tell application "VoiceOver Utility" to activate

tell application "System Events" to tell application process "VoiceOver Utility"
	tell window "VoiceOver Utility"
		set theCheckbox to checkbox "Allow VoiceOver to be controlled with AppleScript" of splitter group 1
		tell theCheckbox
			if not (its value as boolean) then
				click theCheckbox
				delay 1
			end if
		end tell
	end tell
end tell