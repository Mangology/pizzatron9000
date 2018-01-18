#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+o::
MsgBox, Bye
ExitApp
return

+p::
;Set Mode
SendMode Event
CoordMode, Mouse, Relative
CoordMode, Pixel, Relative
CoordMode, Tooltip,Relative

;Set Storage
PixelSearch, textX, textY, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x003366, 0, Fast RGB
PixelSearch, limitX, limitY, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xFFCC00, 0, Fast RGB
PixelSearch, SprinkleX, SprinkleY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xFF9900, 0, Fast RGB
PixelSearch, LiquX, LiquY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC40036, 0, Fast RGB
PixelSearch, ChocoX, ChocoY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xF6C1A1, 0, Fast RGB
PixelSearch, MelloX, MelloY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xE6E6E6, 0, Fast RGB
PixelSearch, BeanX, BeanY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xFFFFAD, 0, Fast RGB

;Read Recipe
Param1 := textX
Param2 := textY
Param3 := textX
Param4 := textY
Param3 *= 1.40
Param4 *= 1.5
Param3 := floor(Param3)
Param4 := floor(Param4)
Params := "" . Param1 . " " . Param2 . " " . Param3 . " " . Param4 . ""
Params := """" . Params . """"
temp = %clipboard%
RunWait "Capture2Text_v4.5.1_64bit\Capture2Text_CLI.exe" --clipboard --screen-rect %Params%
Pizza = %clipboard%
clipboard = %temp%
temp =

;Recipes
if (Pizza = "CHOCOLATE SPRINKLE PIZZA")
{
    Sprinkles()
}
else if (Pizza = "PINK MARSHMELLOW JELLY PIZZA")
{
    Sprinkles()
    Marshmellows(2)
    Jellybeans(2)
}
else if (Pizza = "MARSHMELLOW JELLY PIZZA")
{
    Sprinkles()
    Marshmellows(2)
    Jellybeans(2)
}
else if (Pizza = "PINK CHOCOLATE PIZZA")
{
    Sprinkles()
    Chocolates(5)
}
else if (Pizza = "PINK SUGAR PIZZA")
{
    Sprinkles()
    Liquorice(1)
    Chocolates(1)
    Marshmellows(1)
    Jellybeans(1)
}
else if (Pizza = "PINK MARSHMELLOW CHIP PIZZA")
{
    Sprinkles()
    Chocolates(2)
    Marshmellows(2)
}
else if (Pizza = "JELLY BEAN PIZZA")
{
    Sprinkles()
    Jellybeans(5)
}
else if (Pizza = "PINK JELLY BEAN PIZZA")
{
    Sprinkles()
    Jellybeans(5)
}
else if (Pizza = "MARSHMELLOW CHIP PIZZA")
{
    Sprinkles()
    Chocolates(2)
    Marshmellows(2)
}
else if (Pizza = "MARSHMELLOW PIZZA")
{
    Sprinkles()
    Marshmellows(5)
}
else if (Pizza = "LIQUORICE PIZZA")
{
    Sprinkles()
    Liquorice(5)
}
else if (Pizza = "PINK LIQUORICE PIZZA")
{
    Sprinkles()
    Liquorice(5)
}
else if (Pizza = "PINK LIQUORICE-CHIP PIZZA")
{
    Sprinkles()
    Liquorice(2)
    Chocolates(2)
}
else if (Pizza = "PINK MARSHMELLOW PIZZA")
{
    Sprinkles()
    Marshmellows(5)
}
else
{
    Sprinkles()
    MsgBox, %Pizza%
}

;Ingredients
Sprinkles()
{
    global currentX
    global currentY
    global limitY
    global SprinkleX
    global SprinkleY
    PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
    MouseClickDrag, Left, SprinkleX + 25, SprinkleY, currentX + 100, currentY + 100
}
Liquorice(count)
{
    global currentX
    global currentY
    global limitY
    global LiquX
    global LiquY
    Loop, count
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
    }
}
Chocolates(count)
{
    global currentX
    global currentY
    global limitY
    global ChocoX
    global CocoY
    Loop, count
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
    }
}
Marshmellows(count)
{
    global currentX
    global currentY
    global limitY
    global MelloX
    global MelloY
    Loop, count
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
    }
}
Jellybeans(count)
{
    global currentX
    global currentY
    global limitY
    global BeanX
    global BeanY
    Loop, count
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
    }
}
