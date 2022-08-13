
#SingleInstance, force
#NoEnv                          ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                         ; Enable warnings to assist with detecting common errors.
SendMode Input                  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%     ; Ensures a consistent starting directory.

global PreviousActiveWindow

^!t::

DetectHiddenWindows, On

if (WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")) {
	if(WinActive("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")) {
		WinActivate, ahk_id %PreviousActiveWindow%
	} else {
		WinGet, PreviousActiveWindow, , A ; 'A' for currently active window
		WinActivate, ahk_class CASCADIA_HOSTING_WINDOW_CLASS
	}
} else {
	TerminalLink = "C:\Users\Niall\AppData\Local\Microsoft\WindowsApps\wt.exe"

    WinGet, PreviousActiveWindow, , A ; 'A' for currently active window
    Run *runas %TerminalLink%
}

DetectHiddenWindows, Off
Return