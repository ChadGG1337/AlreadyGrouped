local frame = CreateFrame("Frame")

frame:RegisterEvent("CHAT_MSG_SYSTEM")

frame:SetScript("OnEvent", function(_, _, message)
    if not message then return end


    -- Match: "<name> is already in a group"
    local name = message:match("^(.+) is already in a group")

    if name then
        SendChatMessage(
            "I tried inviting you but you're already in a group",
            "WHISPER",
            nil,
            name
        )
    end
end)
