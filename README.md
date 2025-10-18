# YJ's Casino and Economy

## How to use this datapack

The main currency of this datapack is diamonds; each diamond is equal to $10 in-game.

To deposit or withdraw your diamonds, you can use `/trigger bank`.

Each player has a unique ID, which can be seen using the Tab menu and looking at the number next to each player. If you want to get your own ID, you can also use `/trigger get_id`.

Dealers can only be created by Opped players by using `/function yjcasino:create_dealer`. Right-clicking on your dealer will allow you to modify your dealer and set up the game they will deal. You will also be able to set your responsibility, which is the percentage of profit/loss from that table you will be responsible for. As an example, if your responsibility is 1% and a player wins a $100 bet, you will be responsible for paying for $1. If they lose the bet, you will get $1.

Any player, opped or not opped, can bet on a table by right-clicking on one of the iron pressure plates on the table. When players have submitted their bets, the game will begin to be dealt.

Problems can arise when unexpected events occur, such as a player logging out in the middle of the game on a multiplayer server. In these scenarios, you can use `/function yjcasino:debug` to cancel all active games and return bets to players. Only use this in extreme circumstances where an unsolvable bug occurred. To prevent abuse by players, this command can only be run once per hour.

This datapack is in BETA. Bugs are expected and players are responsible for their own worlds and servers when they decide to use this datapack. Please report any bugs to the Discord server or to the Issues page on Github.

## Disclaimer

This datapack in no way endorses gambling behavior that involves real money. As players play these games, they may realize that tend to lose money rather than win money. This is expected and the games are mathematically designed to behave that way. Do not actually gamble at casinos; doing so will always result in massive losses in the long run.

The purpose of this datapack is to provide a Minecraft environment where players can have fun with each other without putting any real-life money at risk as well to give players a way to create functioning casinos for city builds. Once again, this datapack in no way endorses or condones gambling that involves materials or currencies in real life.

## Installing

Install the datapack and the required resource pack. Put the resource pack in the `resourcepack` folder in your `.minecraft` folder and put the datapack in the `datapack` folder of your world or server. After installing, run the command `/reload` in your world to load the datapack.

## Credits

Datapack and Resourcepack created by YJMinecraft