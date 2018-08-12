-- counter using taps



display.setStatusBar(display.HiddenStatusBar) --hides status bar


local myText, changeText, counter
local go =display.newImage("go.png",display.contentCenterX,400) --call button
local reset =display.newImage("reset.png",display.contentCenterX+250,400) --call button
counter = 0

function changeText( event )
	counter = counter + 1
	myText.text = "I've been tapped " ..counter.." times."
	print( counter.."taps") -- to print in the console
	myText:setFillColor( math.random(), math.random(), math.random())
	return true
end
function resetCounter( event )
	counter = 0
	myText.text = "I've been tapped 0 times."
	myText:setFillColor( math.random(), math.random(), math.random())
	return true
end

myText = display.newText( "I've been tapped 0 times", display.contentCenterX, display.contentCenterY, Arial, 50)
	myText:setFillColor( 0, 1, 0)

myText:addEventListener( "tap", changeText)

go:addEventListener("tap", changeText) --the listener to invoke function on tap
reset:addEventListener("tap", resetCounter) --the listener to invoke function on tap
