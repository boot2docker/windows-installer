# Preparing development environment (for maintainers)

Install Inno Setup 5 non-unicode: http://www.jrsoftware.org/isdl.php (`isetup-5.x.x-unicode.exe`).

Install `kSignCMD`: http://codesigning.ksoftware.net/ (click "Download kSign"
and then "FREE DOWNLOAD" or "Click Here to Download kSign", which will likely be
a link to http://cdn1.ksoftware.net/ksign_installer.exe)

Install the `docker-code-signing.pfx` certificate somewhere (the instructions
below assume `Z:\sven\src\docker\windows-installer\docker-code-signing.pfx`);
you will need the password (`d_get_from_core` below).

Open `Boot2Docker.iss` in the Inno Setup Compiler.  It has a few constants at
the top that are important to make note of (especially `MyAppVersion` and the
path variables `b2dISO`, `b2dCLI`, `msysGit`, `virtualBoxMsi`, and `virtualBoxCommon`).

Launch **Inno Setup Compiler** by opening `boot2docker.iss` and add code signing
by applying the following steps:

- Click "Tools" --> "Configure Sign Tools" > "Add"
- "Name of the Sign Tool:" `ksign`
- "Command of the Sign Tool:" `"C:\Program Files (x86)\kSign\kSignCMD.exe" /f Z:\sven\src\docker\windows-installer\docker-code-signing.pfx /p d_get_from_core $p`

# Downloading bundle dependencies

Open a git bash window in this directory and run script:

    ./bundle.sh

This should be downloading dependencies with their correct versions to `bundle\`
folder where the Inno Setup Compiler can pick up from.

If you need to change the versions of the installed software, this is the correct
place to do it.

# Compiling the installer

After configuring, open `boot2docker.iss` with Inno Setup Compiler and hit
**'Build'**. The results will be in the `Output` folder.

This can be done through commandline as welll. Launch a cmd.exe shell from this
directory and run:

    "c:\Program Files (x86)\Inno Setup 5\ISCC.exe" Boot2Docker.iss