
Install the `docker-code-signing.pfx` certificate; you will need the password
from `core`.

Install [Inno Setup 5 non-unicode](http://www.jrsoftware.org/isdl.php).

Install `ksign_installer`

Then follow the [ksign and Inno Setup](http://blog.ksoftware.net/2011/07/how-to-automate-code-signing-with-innosetup-and-ksign/) instructions so the resulting installer is signed.
- call the signing tool `ksign`
- cmd: `"C:\Program Files (x86)\kSign\kSignCMD.exe" /f Z:\sven\src\docker\windows-installer\docker-code-signing.pfx /p d_get_from_core $p`

Then hit 'Build'. The results will be in the `Output` dir.
