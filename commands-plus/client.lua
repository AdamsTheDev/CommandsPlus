-------------- Chat Suggestions Config ----------------

chatSuggestionMe = true -- Change to "False" if you want the chat suggestion for /me off
chatSuggestionDo = true -- Change to "False" if you want the chat suggestion for /do off
chatSuggestionOOC = true -- Change to "False" if you want the chat suggestion for /ooc off
chatSuggestionRadio = true -- Change to "False" if you want the chat suggestion for /radio off
chatSuggestionTwitter = true -- Change to "False" if you want the chat suggestion for /tweet off
chatSuggestionAd = true -- Change to "False" if you want the chat suggestion for /ad off

-- MAKE SURE TO RESTART SERVER IF YOU TURN SOMETHING FROM FALSE TO TRUE --

-------------------------------------------------------










-- || DO NOT CHANGE ANYTHING BELOW UNLESS YOU KNOW WHAT YOUR DOING || -- 

-----[Offical Code]-----


if chatSuggestionMe then
TriggerEvent("chat:addSuggestion", "/me", "Shows up in chat")
end

if chatSuggestionDo then
TriggerEvent("chat:addSuggestion", "/do", "Creates an action in chat")
end


if chatSuggestionOOC then
TriggerEvent("chat:addSuggestion", "/ooc", "Talk out of roleplay")
end

if chatSuggestionRadio then
TriggerEvent("chat:addSuggestion", "/radio", "Calls over to dispatch in global chat")
end

if chatSuggestionTwitter then
TriggerEvent("chat:addSuggestion", "/tweet", "Send a tweet on Twitter", {
    { name="Twitter", help="Enter your tweet here!" }
}) 
end

if chatSuggestionAd then
TriggerEvent("chat:addSuggestion", "/ad", "Post an advertisment for players to see", {
    { name="Advertisment", help="Enter your advertisment here!" }
})

end



--------------------------------------------------------
