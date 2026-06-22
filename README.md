<p align="center">
<img width="640" height="360" alt="it's a giant apple" src="https://github.com/user-attachments/assets/806b2f09-dc8d-498c-ac84-2f50d4f7f275" />
</p>

```'BFDI Branches.zip'``` is the app itself, the pck is not included due to github limitations (use the pck manager to download the pck)

```'BFDI Branches PCK Manager.command'``` is a bash script to update/install the game, or install pck replacement mods

## fixing apple assuming
> "Apple could not verify “something” is free of malware that may blah blah blah blah."

this happens to alot of things on macos. to fix it, just run these commands:
```
xattr -d com.apple.quarantine /path/to/whatever
chmod +x /path/to/whatever
```
obviously replace /path/to/whatever to whatever you want to run

## how to update
the update button won't work in-game, you have to use the pck manager script to update your game
