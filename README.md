# Simple Modal Popup for Corona SDK
A simple modal popup has been updated by me for Corona SDK, by using the created code from [V. Sergeyev!](https://gist.github.com/vsergeyev/1911129)

## Usage in main.lua
```
-----------------------------------------------------------------------------------------
--
-- main.lua
-- 
-- Modal dialog for Corona SDK
--
-- This code has been created by : Mohammad M. AlBanna
-- Website: www.MBanna.info
-- Facebook: www.fb.com/MBanna.info
-----------------------------------------------------------------------------------------

-- Get modal module
require("modal");

-- First button action handler
function firstButtonAction(e)
	-- Do your action
	return true;
end

-- Second button action handler
function secondButtonAction(e)
	-- Do your action
	return true;
end

-- Start to show message
showDialog("Mohammad M. AlBanna Message..! MBanna.info","Button1",firstButtonAction,"Button2",secondButtonAction);

-- To clear dialog
-- _destroyDialog();
```

## Sample:
![](http://i.imgur.com/jzf1RLw.png)
