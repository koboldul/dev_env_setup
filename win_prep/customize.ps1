function runAsAdmin($lnk)
{
	$bytes = [System.IO.File]::ReadAllBytes($lnk)
	$bytes[0x15] = $bytes[0x15] -bor 0x20 #set byte 21 (0x15) bit 6 (0x20) ON
	[System.IO.File]::WriteAllBytes($lnk, $bytes)
}

function createShortcut($Shell, $path, $runAsAdmin)
{
	$lnk = $env:APPDATA + "\Microsoft\Internet Explorer\Quick Launch\debg.lnk"
	$ShortCut = $Shell.CreateShortcut($lnk)
	$ShortCut.TargetPath="C:\Program Files\Microsoft Visual Studio 14.0\Common7\IDE\Remote Debugger\x64\msvsmon.exe"
	$ShortCut.WorkingDirectory = "C:\Program Files\Microsoft Visual Studio 14.0\Common7\IDE\Remote Debugger\x64" ;
	$ShortCut.WindowStyle = 1;
	$ShortCut.Arguments = "/installed /noauth /anyuser /nosecuritywarn ";
	$ShortCut.Description = "dbg";
	$ShortCut.Save()

	runAsAdmin($lnk)
}

Remove-Item "C:\Users\vagrant\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\*"

$Shell = New-Object -ComObject ("WScript.Shell")

$ShortCut = $Shell.CreateShortcut($env:APPDATA + "\Microsoft\Internet Explorer\Quick Launch\Nplus.lnk")
$ShortCut.TargetPath="notepad++.exe"
$ShortCut.WorkingDirectory = "c:\Program Files\Notepad++" ;
$ShortCut.WindowStyle = 1;
$ShortCut.Description = "notepad ++";
$ShortCut.Save()

$lnk = $env:APPDATA + "\Microsoft\Internet Explorer\Quick Launch\totalcmd.lnk"
$ShortCut = $Shell.CreateShortcut($lnk)
$ShortCut.TargetPath="c:\Program Files\totalcmd\TOTALCMD.EXE"
$ShortCut.WorkingDirectory = "c:\Program Files\totalcmd" ;
$ShortCut.WindowStyle = 1;
$ShortCut.Description = "totalcmd";
$ShortCut.Save()

runAsAdmin($lnk)

$ShortCut = $Shell.CreateShortcut($env:APPDATA + "\Microsoft\Internet Explorer\Quick Launch\chrome.lnk")
$ShortCut.TargetPath="C:\Program Files (x86)\Google\Chrome\Application\chrome.EXE"
$ShortCut.WorkingDirectory = "C:\Program Files (x86)\Google\Chrome\Application" ;
$ShortCut.WindowStyle = 1;
$ShortCut.Description = "chrome";
$ShortCut.Save()

$ShortCut = $Shell.CreateShortcut($env:APPDATA + "\Microsoft\Internet Explorer\Quick Launch\conemu.lnk")
$ShortCut.TargetPath="ConEmu64.EXE"
$ShortCut.WorkingDirectory = "C:\Program Files\ConEmu\ConEmu64.EXE";
$ShortCut.WindowStyle = 1;
$ShortCut.Description = "con emu";
$ShortCut.Save()

$lnk = $env:APPDATA + "\Microsoft\Internet Explorer\Quick Launch\every.lnk"
$ShortCut = $Shell.CreateShortcut($lnk)
$ShortCut.TargetPath="C:\Program Files\Everything\Everything.exe"
$ShortCut.WorkingDirectory = "C:\Program Files\Everything" ;
$ShortCut.WindowStyle = 1;
$ShortCut.Description = "every";
$ShortCut.Save()

runAsAdmin($lnk)

Copy-Item -path .\cfgs\wincmd.ini -destination c:\Users\Vagrant\AppData\Roaming\GHISLER\wincmd.ini -force