<p align="center">
<img width="640" height="360" alt="it's a giant apple" src="unrelated/apple.png" />
</p>

```'BFDI Branches.zip'``` is the app itself, the game's assets aren't included due to github limitations

```'BFDI Branches PCK Manager.command'``` is a bash script to update the game / install the game's assets / install mods

## fixing apple assuming
> "Apple could not verify “something” is free of malware that may blah blah blah blah."

this happens to alot of things on macos. to fix it, just run:
```
xattr -d com.apple.quarantine /path/to/whatever
```
obviously replace /path/to/whatever to whatever you want to run

### the pck manager has another error when trying to open!!!
then run:
```chmod +x /path/to/pckmanager```

# known issues
- the update button doesn't work in-game
- discord rpc doesn't work
