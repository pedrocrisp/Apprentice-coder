# Screen
To use screen in an ssh session start by calling screen:

    $ screen

If screen is active and the ssh connection drops out then the screen will detach and keep running

Hit "control + A" to activate screen commands

To make a new window: "^A" "c"

To go to previous screen "^a" "p" or "^a" "n"

To kill a screen "^a" + "k" or "exit" of "^ D"

To detach a screen "^a" + "d"

To list all screens:

    $ screen -ls

To reattach a screen:

    $ screen -r <Screen name>

## Better screen

To make screen awesome create .screenrc in home dir:

```
hardstatus alwayslastline "%{=b WR} %H %{= wk}  [%l]  %{= wr}%-Lw %{!r} %n%f %t %{-} %+Lw %=%?[%h]  %? %{=b WR} %LD, %LM %d, %Y - %c:%s "
startup_message off
caption splitonly
# termcapinfo  * '' 'hs:ts=\E_:fs=\E\\:ds=\E_\E\\'
#hardstatus alwayslastline "%{= w0}%c:%s %D %d/%M/%Y || %-w%{=b 0w} *%n %t  %{-}%+w ||"
```
