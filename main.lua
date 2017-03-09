
local survata = require("plugin.survata")

local myText2 = display.newText( "Survata App", 0, 0, native.systemFontBold, 33 )
myText2.x = display.contentWidth*0.5
myText2.y = display.contentHeight*0.15

local myText = display.newText( "Survata Live", 0, 0, native.systemFontBold, 31 )
myText.x = display.contentWidth*0.5
myText.y = display.contentHeight*0.3

local testMode = false
 
local function showSurvey(event)
	if event.phase == "ended" then
	 	myText.text = "Showing Survey"
		survata.show()
	end
end

local function initSurvata(event)
	if event.phase == "ended" then
		myText.text = "Check Survey"
		if testMode then
			survata.init("a152f0c5-0ba4-4b3e-8a0a-07ec9f96c5fd","test") -- Pass in test publisher Id, and set TestMode
		else
			survata.init("a152f0c5-0ba4-4b3e-8a0a-07ec9f96c5fd") -- Pass in publisher Id
		end
	end
end

local function setTestSurvata(event)
	if event.phase == "ended" then
		if testMode then
			testMode = false
			myText.text = "Survata Live"
		else
			testMode = true
			myText.text = "Survata Test"
		end
	end
end

local button1 = display.newRect(display.contentWidth*0.5,display.contentHeight*0.5,300,70)
button1:setFillColor(0,1,0.5)
button1.txt = display.newText("Survata Init", 0 ,0, native.systemFontBold, 30)
button1.txt.x,button1.txt.y = button1.x,button1.y
button1:addEventListener("touch",initSurvata)

local button2 = display.newRect(display.contentWidth*0.5,display.contentHeight*0.65,300,70)
button2:setFillColor(0,0,1)
button2.txt = display.newText("Survata Show", 0 ,0, native.systemFontBold, 30)
button2.txt.x,button2.txt.y = button2.x,button2.y
button2:addEventListener("touch",showSurvey)

local button3 = display.newRect(display.contentWidth*0.5,display.contentHeight*0.8,300,70)
button3:setFillColor(1,0.5,0.5)
button3.txt = display.newText("Toggle Test", 0 ,0, native.systemFontBold, 30)
button3.txt.x,button3.txt.y = button3.x,button3.y
button3:addEventListener("touch",setTestSurvata)