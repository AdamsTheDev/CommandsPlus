AddEventHandler("chatMessage", function(source, name, msg, args) -- DO NOT TOUCH <3


-------------- Chat Messages Config ----------------


chatMessageMe = "^7[ ^9Me ^7] ^9" .. name .. " ^7" -- Only use ^1-9 and ~~ if you have chatMessageMeColor
chatMessageMeColor = {0, 0, 0} -- Change this is you would like the whole chatMessageMe to be this color! --

chatMessageDo = "^7[ ~g~Action ^7] ~g~" .. name .. " ^7" -- Only use ^1-9 and ~~ if you have chatMessageDoColor
chatMessageDoColor = {0, 0, 0} -- Change this is you would like the whole chatMessageDo to be this color! --

chatMessageOOC = "^7[ ~r~Out of Character ^7] ~r~" .. name .. " ^7" -- Only use ^1-9 and ~~ if you have chatMessageOOCColor
chatMessageOOCColor = {0, 0, 0} -- Change this is you would like the whole chatMessageOOC to be this color! --

chatMessageRadio = "^7[ ^8Radio ^7] ^8" .. name .. " ^7" -- Only use ^1-9 and ~~ if you have chatMessageRadioColor
chatMessageRadioColor = {0, 0, 0} -- Change this is you would like the whole chatMessageRadio to be this color! --

chatMessageTwitter = "^7[ ^5Twitter ^7] ( ^5@" .. name .. " ^7)" -- Only use ^1-9 and ~~ if you have chatMessageTwitterColor
chatMessageTwitterColor = {0, 255, 238} -- Change this is you would like the whole chatMessageTwitter to be this color! --

chatMessageAd = "^7[ ~y~Advertisement ^7] ( ~y~" .. name .. " ^7)" -- Only use ^1-9 and ~~ if you have chatMessageAdColor
chatMessageAdColor = {0, 0, 0} -- Change this is you would like the whole chatMessageAd to be this color! --






























-----------------------------------------------------


-- || DO NOT CHANGE ANYTHING BELOW UNLESS YOU KNOW WHAT YOUR DOING || -- 


---------------------- Code ---------------------


sm = stringsplit(msg, " ")



if sm[1] == "/me" then -- Checks to see if the command is equal to /me

    if sm[2] == nil then -- If the user does not provide enough arguments
        CancelEvent()
        return
    end

    CancelEvent()
    TriggerClientEvent("chatMessage", -1, chatMessageMe, chatMessageMeColor, string.sub(msg, 5)) -- Send chat message

end



if sm[1] == "/do" then -- Checks to see if the command is equal to /do
    
    if sm[2] == nil then -- If the user does not provide enough arguments
        CancelEvent()
        return
    end
    
    CancelEvent()
    TriggerClientEvent("chatMessage", -1, chatMessageDo , chatMessageDoColor, string.sub(msg, 5)) -- Send chat message

end



if sm[1] == "/ooc" then -- Checks to see if the command is equal to /ooc

    if sm[2] == nil then -- If the user does not provide enough arguments
        CancelEvent()
        return
    end
    
    CancelEvent()
    TriggerClientEvent("chatMessage", -1, chatMessageOOC, chatMessageOOCColor, string.sub(msg, 5)) -- Send chat message
    
end



if sm[1] == "/radio" then -- Checks to see if the command is equal to /radio

    if sm[2] == nil then -- If the user does not provide enough arguments
        CancelEvent()
        return
    end
    
    CancelEvent()
    TriggerClientEvent("chatMessage", -1, chatMessageRadio, chatMessageRadioColor, string.sub(msg, 7)) -- Send chat message

end



if sm[1] == "/tweet" then -- Checks to see if the command is equal to /tweet

    if sm[2] == nil then -- If the user does not provide enough arguments
        CancelEvent()
        return
    end

    CancelEvent()
    TriggerClientEvent("chatMessage", -1, chatMessageTwitter, chatMessageTwitterColor, string.sub(msg, 7)) -- Send chat message

end



if sm[1] == "/ad" then -- Checks to see if the command is equal to /ad
     
    if sm[2] == nil then -- If the user does not provide enough arguments
        CancelEvent()
        return
    end

    CancelEvent()
    TriggerClientEvent("chatMessage", -1, chatMessageAd, chatMessageAdColor, string.sub(msg, 5)) -- Send chat message

end
end)

------------------- Function(s) ---------------------

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

------------------------------------------------------