# SC2000SE_Setup
Inno Setup script for installing SimCity 2000 Special Edition with new fixes

## Purpose
This [Inno Setup](https://jrsoftware.org/isinfo.php) script generates an installer to be able to install the Windows 95 version of SimCity 2000 Special Edition on modern versions of Windows (and, theoretically, WINE-based systems, though see the note on that below) and apply newer fixes to it from the [sc2kfix](https://github.com/sc2kfix/sc2kfix) project.  As part of the installation, the user has the option of having the installer download and apply the newest fixes from that project.

This does depend on having an ICO file available for the generated installer binary.  I use the one located at \WIN95\MAXIS.ICO on the SimCity 2000 Special Edition CD.  Regardless of which icon you use, you'll want to update the `SetupIconFile` directive near the beginning of the `.iss` file to point to the icon you decide to use.  You may also want to update the `OutputDir` directive to change where the resulting installer is generated.

Once generated, this installer will detect a supported SimCity 2000 Special Edition CD and will use it to install the game along with the SimCity 2000 Urban Renewal Kit and/or the sc2kfix updates.  Installation is done on a per-user bases, so it's installed within the user's own directory tree.

Regarding the use of WINE, this installer should theoretically work with at least WINE on macOS (what should be the path the CD would be mounted at is included in the source), but when I run it, I receive an error that says:

    Internal Error: Failed to expand shell folder constant "userpf"

Replacing that with `autopf` yields the same error.  If there's a way to work around this, I haven't found it.