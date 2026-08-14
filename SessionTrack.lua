print("SessionTrack 0.0.1 loaded, get to work noob!")

local trackerFrame = CreateFrame("Frame", nil, UIParent) --creates a frame called trackerFrame, it is a frame, not named globally and exists on the parent frame.
trackerFrame:SetSize(300, 180) -- gives the frame a size
trackerFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0) -- gives the frame a starting point on the UI. 

local boxBg = trackerFrame:CreateTexture(nil, "BACKGROUND") -- Draws the background for the frame.
boxBg:SetAllPoints() -- sets the background to touch all 4 points of the frame, effectively creating the background.
boxBg:SetColorTexture(0, 0, 0, 0.7) -- gives the background a transpartent black color.

local titleText = trackerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
titleText:SetPoint("TOP", trackerFrame, "TOP", 0, -10)
titleText:SetText("SessionTrack")

local statusText = trackerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
statusText:SetPoint("TOPLEFT", trackerFrame, "TOPLEFT", 5, -10 )
statusText:SetText("A/I:")

local statusValue = trackerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
statusValue:SetPoint("LEFT", statusText, "RIGHT", 5, 0)
statusValue:SetText("Inactive")

local timeText = trackerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
timeText:SetPoint("TOPLEFT", trackerFrame, "TOPLEFT", 5, -35)
timeText:SetText("Session Time:")



local timeValue = trackerFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
timeValue:SetPoint("LEFT", timeText, "RIGHT", 5, 0)
timeValue:SetText("12:00")