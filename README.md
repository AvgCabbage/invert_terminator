# invert_terminator
Relaunch terminator with alternate config

Something I wrote to swap between two terminator configs, one with white on black, the other black on white.  I found the two can be better for visibility reasons in different light on a dim laptop display, and depending on the colors behind the window (I like a little transparency in my term background).

Settings up and alias to run this script and exit will switch the config and open a new term. (basically relaunch the term with the alternate settings)

Just compares and swaps out config file, simple solution to the problem.  Plan is to completely rewrite this to just modify the foreground/background color values in the config, rather than have the extra config files.  V2 is partially working, just haven't gotten around to cleaning it up and finishing.

Version 2 is now uploaded, which now uses sed to replace the foreground/background values in the config.