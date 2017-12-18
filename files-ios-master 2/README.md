Files
=============

Next-generation file browser for iOS.

 * Multiple-column-UI on iPad
 * System-wide Document Provider - open files in other apps
 * Go to Folder
 * Sorting options
 * RW ACCESS OVER THE FILESYSTEM YAY
 * Option to edit exiting files (WARNING DO NOT CLICK SAVE WHEN OPENING BINARIES, THEY WILL GET ERASED (TODO)
 * Option to create new files
 * ~~IPA -> https://github.com/jakeajames/files-ios/releases/~~ IPA IS BROKEN, WILL FIX SOON. Also, I will release a working Filza ipa with rw but can't post it here, as it is copyrighted. If you want that check my twitter (@jakeashacks)
 
 UPDATE: From my findings looks like is Cydia Imapctor the one which doesn't support my ipa. You'll have to use the xcodeproj. ~~It only works in Xcode 8, apparently. I'll update the code so it uses UIAlertControllers.~~ FIXED XCODE 9. Also, you have to link IOKit.tbd (take it from yalu) in Build Phases -> Link Bundle With Libraries
 
 Coming soon:
 
 - Filza jailed (no link here, illegal)
 - iFile jailed (no link here, illegal)
 - An open-source tool to inject the exploit on almost any ipa and make it run with full root and rw privileges (LEGAL)
 
Screenshots
=============

[![](https://lh3.googleusercontent.com/-bPGPJDM78p0/V13sA3epxEI/AAAAAAAACNs/McPEkTL1mZY9pYrZxmZzsFibBwDoDz_ugCCo/s800/A1.jpg)](https://lh3.googleusercontent.com/-bPGPJDM78p0/V13sA3epxEI/AAAAAAAACNs/McPEkTL1mZY9pYrZxmZzsFibBwDoDz_ugCCo/s800/A1.jpg)
[![](https://lh3.googleusercontent.com/-rGNEWd7z0TI/V13sBJw41kI/AAAAAAAACN0/7pgt7BGXvLsgIuOg5R-mFFmf0sZutuRNwCCo/s800/A2.jpg)](https://lh3.googleusercontent.com/-rGNEWd7z0TI/V13sBJw41kI/AAAAAAAACN0/7pgt7BGXvLsgIuOg5R-mFFmf0sZutuRNwCCo/s800/A2.jpg)

TODO
=============

* Fix new files not showing up instantly
* Add option to remove files
* Copy-pasting files
* Prevent overwriting binaries

CREDITS
=============

* Ian Beer (exploit)
* theninjaprawn + Todesco + xerub (root rw)
* steventroughtonsmith (file manager)
* Jake James (small touches and made everything together)
