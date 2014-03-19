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
