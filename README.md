v.1.03-1.16.4
Editors Note: This Branch is to solve the problem for to use the keybindss to spectate other players in different dimensions and be able to go back into the dimention you origionaly spectated at. 

However, if in any case the Scout does not TP back into the other dimension, you might need to check your Dimention State of when you last tp by doing "/scoreboard objectives setdisplay sidebar scout_di" and then going into scout mode. this will tell you the dimension that it is currently stored in scout_di. Once you Figure out the dimention for end/nether/overwld, you will have to modify the "tosurv.mcfunction" and match the coresponding output of where the armorstand will teleport in between dimension. atm, its messy but it works.

The dimension param is set as follows for the default:

19=overworld
20=the_nether
17=the_end

# Scouting Gamemode
A Minecraft datapack that adds a survival friendly spectator mode

Use `/trigger scout` to toggle the scouting mode

It's probably a good idea to run `/forceload remove all` every now and again until forceloads are reliably removed

### Installing/Uninstalling
To install, clone the download and add it to your [world]/datapacks folder

To uninstall, run `/function scouting:uninstall` and follow the prompt.
### Features
- Survival friendly trigger
- Moves player back to their original location when returning to survival
- Spawn location safety check before returning to survival
