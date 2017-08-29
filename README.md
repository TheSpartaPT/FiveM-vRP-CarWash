# FiveM [vRP] CarWash

Quick Disclaimer: this script is an edited version of [this one](https://forum.fivem.net/t/release-carwash-updated/9615), to add a payment functionality nothing else!

This is my first Lua script, lets start with something simple.

Hello everyone, I made this edit a couple of days ago and gave it to the Real Men of Genius community (the owners of the Revolution Life RP servers) so they could use it on their servers, if you play there (my rp name is "Tyreese Wills") you might find this is not completely equal, that's because 1- they have a custom money system they do not use EssentialMode, 2- they edited the messages to their liking and 3- I also made some edits after giving them the script.

### Dependencies

>[vRP Framework](https://forum.fivem.net/t/release-vrp-framework/22894)

### Installation

>1- Drag and Drop the vrp_carwash folder into the resources folder;
>
>2- add this line "start vrp_carwash" on server.cfg under the other "start (whatever)".

**Extremelly important: step 2 needs to be bellow the "start vrp" line so the dependencies load first.**

### Optional (notepad++ recommended)

If you wish to make the car wash free open "vrp_carwash_server.lua" and edit the value on the variable "enableprice" to "false":

![Full size preview](http://image.prntscr.com/image/dd5dda7bfd3e4eca85f1674f20f67128.png)

If you wish to edit how much money is spent to wash the car open "vrp_carwash_server.lua" and edit the value on the variable "price" to whatever number you want:

![Full size preview](http://image.prntscr.com/image/ad28c233917a432e901c828ecfde6b10.png)
