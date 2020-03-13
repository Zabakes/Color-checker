$*F10::
	MouseGetPos, MouseX, MouseY
	PixelGetColor, color, %MouseX%, %MouseY%, BGR
    SplitBGRColor(color, red, green, blue)
	ToolTip, R:%red%`nG:%green%`nB:%blue%, %MouseX%, %MouseY%
    KeyWait, F10
    ToolTip
Return

;color MUST be in BGR form
;this function splits the color into its Red, Green, and Blue parts
SplitBGRColor(BGRColor, ByRef Red, ByRef Green, ByRef Blue)
{
    Red := BGRColor & 0xFF
    Green := BGRColor >> 8 & 0xFF
    Blue := BGRColor >> 16 & 0xFF
}