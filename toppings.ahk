#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+o::
MsgBox, Bye
ExitApp
return

+p::
TopItUp()


TopItUp()
{
    ;Set Mode
    SendMode Event
    CoordMode, Mouse, Relative
    CoordMode, Pixel, Relative
    CoordMode, Tooltip,Relative

    ;Set Storage
    ImageSearch, SprinkleX, SprinkleY, 0, 0, A_ScreenWidth, A_ScreenHeight, sprink.PNG
    ImageSearch, BeanX, BeanY, 0, 0, A_ScreenWidth, A_ScreenHeight, bean.PNG
    ImageSearch, ChocoX, ChocoY, 0, 0, A_ScreenWidth, A_ScreenHeight, choco.PNG
    ImageSearch, LiquX, LiquY, 0, 0, A_ScreenWidth, A_ScreenHeight, liqu.PNG
    ImageSearch, MelloX, MelloY, 0, 0, A_ScreenWidth, A_ScreenHeight, mello.PNG
    ImageSearch, limitX, limitY, 0, 0, A_ScreenWidth, A_ScreenHeight, indicator.PNG

    ;Sprinkles
    PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
    MouseClickDrag, Left, SprinkleX + 25, SprinkleY, currentX + 100, currentY + 100

    ;Bean Search
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, b2.PNG
    if ErrorLevel = 0
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
    }
    else if ErrorLevel = 1
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, b5.PNG
        if ErrorLevel = 0
        {
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
        }
    }

    ;Chocolate Search
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, c2.PNG
    if ErrorLevel = 0
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
    }
    else if ErrorLevel = 1
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, c5.PNG
        if ErrorLevel = 0
        {
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
        }
    }

    ;Liquorice Search
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, l2.PNG
    if ErrorLevel = 0
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
    }
    else if ErrorLevel = 1
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, l5.PNG
        if ErrorLevel = 0
        {
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
        }
    }

    ;Marshmellow Search
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, m2.PNG
    if ErrorLevel = 0
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
    }
    else if ErrorLevel = 1
    {
        ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, m5.PNG
        if ErrorLevel = 0
        {
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
            PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
            MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
        }
    }

    ;One of Each Search
    ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, l1.PNG
    if ErrorLevel = 0
    {
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, BeanX, BeanY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, ChocoX, ChocoY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, LiquX, LiquY, currentX + 100, currentY + 100
        PixelSearch, currentX, currentY, 0, limitY, A_ScreenWidth, A_ScreenHeight, 0xC68600, 0, Fast RGB
        MouseClickDrag, Left, MelloX, MelloY, currentX + 100, currentY + 100
    }
}
