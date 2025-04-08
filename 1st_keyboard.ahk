#Requires AutoHotkey v1
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
Menu, Tray, Icon, shell32.dll, 283 ; this changes the tray icon to a little keyboard!

; Чтение конфигурации из env.ini
IniRead, RDMfastSearchPath, env.ini, Paths, BTN_NUMPADADD

; Нажатие клавиши "+" на Numpad
NumpadAdd:: 
Run, %RDMfastSearchPath%
return 