Install Inno Setup 5 non-unicode: http://www.jrsoftware.org/isdl.php (`isetup-5.x.x-unicode.exe`).

Install `kSignCMD`: http://codesigning.ksoftware.net/ (click "Download kSign" and then "FREE DOWNLOAD" or "Click Here to Download kSign", which will likely be a link to http://cdn1.ksoftware.net/ksign_installer.exe)

Install the `docker-code-signing.pfx` certificate somewhere (the instructions below assume `Z:\sven\src\docker\windows-installer\docker-code-signing.pfx`); you will need the password (`d_get_from_core` below).

Open `Boot2Docker.iss` in the Inno Setup Compiler.  It has a few constants at the top that are important to make note of (especially `MyAppVersion` and the path variables `b2dISO`, `b2dCLI`, `msysGit`, `virtualBoxMsi`, and `virtualBoxCommon`).

Then follow the [ksign and Inno Setup](http://blog.ksoftware.net/2011/07/how-to-automate-code-signing-with-innosetup-and-ksign/) instructions so the resulting installer is signed:
- "Tools" > "Configure Sign Tools" > "Add"
- Name of the Sign Tool: `ksign`
- Command of the Sign Tool: `"C:\Program Files (x86)\kSign\kSignCMD.exe" /f Z:\sven\src\docker\windows-installer\docker-code-signing.pfx /p d_get_from_core $p`

Then hit 'Build'. The results will be in the `Output` dir.
