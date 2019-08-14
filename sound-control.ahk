#MaxHotkeysPerInterval, 500

Menu, Tray, Icon, %A_WorkingDir%\icon.ico



<!WheelUp::
    SoundSet, +5
    ShowSoundLevel()
Return

<!WheelDown::
    SoundSet, -5
    ShowSoundLevel()
Return

~LAlt::
Return

LAlt Up::
    SplashTextOff
Return



ShowSoundLevel()
{
	SoundGet, SoundLevel
    SoundLevel := Round(SoundLevel)
	SplashTextOn, 75, 25, Sound Level, %SoundLevel%
}