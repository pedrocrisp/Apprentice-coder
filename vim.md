Vim:
====

Cheat Sheet:
------------

[This cheat sheet](http://tnerual.eriogerg.free.fr/vimqrc.pdf) should be glued to your desk, toilet wall, inner eyelid, or anywhere you may possibly need to use vim.


Search and replace file path:
-----------------------------

To replace all occurrences:

    :%s,<search pattern>,<replace>,g
- use `,` to delimit search range
- use `\` to escape special characters like `~`

eg:

    %s,/home/pete/public_html,load http://north1ws.anu.edu.au/\~pete,g
