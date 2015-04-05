-----------------------------------------------------------------------------------------
--
-- modal.lua
-- 
-- Modal dialog for Corona SDK
--
-- This code has been created by : Mohammad M. AlBanna
-- Website: www.MBanna.info
-- Facebook: www.fb.com/MBanna.info
-- Usage:
-- showDialog("Mohammad M. AlBanna Message..! MBanna.info","Button1",firstButtonAction,"Button2",secondButtonAction);
-----------------------------------------------------------------------------------------

local storyboard = require( "storyboard" )
local widget = require "widget"

local dialog
local msgText
local firstBtn
local secondBtn


-- 
function _destroyDialog()
	dialog:removeSelf()
	msgText:removeSelf()
	firstBtn:removeSelf()
	secondBtn:removeSelf()
end

-- 
function modalEventLister(e)
	-- Do nothing
	return true;
end

-- 
function showDialog(msg, firstButtonLabel, firstButtonAction, secondButtonLabel, secondButtonAction)
	modalGroup = display.newGroup();

	dialog = display.newRoundedRect(50, 50, 380, 220, 12)
	dialog:setFillColor( 255 );
	dialog:setStrokeColor( 78, 179, 211 );
	dialog.strokeWidth = 4;
	modalGroup:insert(dialog);

	local options = {
	   text = msg,
	   x = 80,
	   y = 80,
	   width = 320,
	   height = 160,
	   fontSize = 20,
	   align = "center"
	}

	msgText = display.newText(options);
	msgText:setFillColor( 43, 140, 190 );
	modalGroup:insert(msgText);

	buttonBox01 = display.newRoundedRect(100, 205, 100, 50, 12);
	buttonBox01:setFillColor( 210 );
	buttonBox01:setStrokeColor( 200 );
	buttonBox01.strokeWidth = 1;
	buttonBox01.alpha = 0.8;
	modalGroup:insert(buttonBox01);

	buttonBox02 = display.newRoundedRect(280, 205, 100, 50, 12);
	buttonBox02:setFillColor( 210 );
	buttonBox02:setStrokeColor( 200 );
	buttonBox02.strokeWidth = 1;
	buttonBox02.alpha = 0.8;
	modalGroup:insert(buttonBox02);

	firstBtn = widget.newButton{
		label = firstButtonLabel,
		labelColor = { default={43, 140, 190}, over={70} },
		default = buttonBox01,
		width=154, height=40,
		onRelease = firstButtonAction
	}

	firstBtn:setReferencePoint( display.CenterReferencePoint )
	firstBtn.x = 150
	firstBtn.y = 230
	modalGroup:insert(firstBtn);

	secondBtn = widget.newButton{
		label = secondButtonLabel,
		labelColor = { default={43, 140, 190}, over={70} },
		default = buttonBox01,
		width=154, height=40,
		onRelease = secondButtonAction
	}

	secondBtn:setReferencePoint( display.CenterReferencePoint )
	secondBtn.x = 330
	secondBtn.y = 230
	modalGroup:insert(secondBtn);

	modalGroup:setReferencePoint( display.CenterReferencePoint );
	modalGroup.x = display.contentWidth / 2;
	modalGroup.y = display.contentHeight / 2;

	-- Event listener for popup dialog to stop event overlapping
	modalGroup:addEventListener("touch",modalEventLister);
end
