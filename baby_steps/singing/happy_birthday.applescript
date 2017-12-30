#!/usr/bin/osascript
# from http://hints.macworld.com/article.php?story=20120204172337402

set currentUser to long user name of (get system info)
set firstName to first word of currentUser
set lastName to last word of currentUser

set noteValues to {56, 56, 58, 56, 61, 60, 50, 56, 56, 58, 56, 63, 61, 50, 56, 56, 68, 65, 61, 60, 58, 50, 66, 66, 65, 61, 63, 61} -- F
-- set noteValues to {65, 65, 67, 65, 70, 69, 60, 65, 65, 67, 65, 72, 70, 60, 65, 65, 77, 74, 70, 69, 67, 60, 75, 75, 74, 70, 72, 70} -- D
-- set noteValues to {55, 55, 57, 55, 60, 59, 50, 55, 55, 57, 55, 62, 60, 50, 55, 55, 67, 64, 60, 59, 57, 50, 65, 65, 64, 60, 62, 60} -- E

set syllables to {"hap", "p", "birth", "day", "to", "you", "[[slnc 500]]", "hap", "p", "birth", "day", "to", "you", "[[slnc 500]]", "hap", "p", "birth", "day", "dear", firstName, lastName, "[[slnc 500]]", "hap", "p", "birth", "day", "to", "you"}

repeat with i from 1 to the length of noteValues
  set thisValue to item i of noteValues
  set thisSyllable to item i of syllables
  if length of thisSyllable is less than 3 then
    set speakingRate to 440
  else
    set speakingRate to 200
  end if
  say thisSyllable pitch thisValue using "Vicki" speaking rate speakingRate modulation 0
end repeat
