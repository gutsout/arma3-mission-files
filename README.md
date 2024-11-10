# ArmA 3 Mission Files
This repository contains the source files for various ArmA 3 missions I've hosted, showcasing experiments with in-game cinematics, briefings, triggers, and music. These source files are provided as-is and can be easily converted into .pbo mission files using PBO Manager for server upload.

In the near future, I plan to document the features available in these sources and provide short guides to help others implement similar functionalities.

## How Tos
### Add Custom Music or Sound to ArmA3 Mission File
1. Create a separate directory (e.g. `music`, `sfx`) to keep all the sounds together
2. Find and download the sounds you want to add to your mission.
3. Convert the sound to `.ogg` format suitable to ArmA 3.\
(To make my life easier I have created [youtube2ogg](https://github.com/gutsout/youtube2ogg) script that simplifies Steps 2 and 3. Just paste your YouTube URL to the script and you will receive compressed Ogg Vorbis file.)
4. Move `.ogg` files to music directory inside mission file.
5. Define your sounds in `description.ext` file. \
It is a mission config file and allows you to declare variables that will be later availaible inside the game. There are two classes for in-game audio [CfgSounds](https://community.bistudio.com/wiki/Description.ext#CfgSounds) and [CfgMusic](https://community.bistudio.com/wiki/Description.ext#CfgMusic) for ambient sounds (explosions, wind) and music respectively. It is highly recommended to use the correct class for your effects (e.g. don't declare music in `CfgSounds`) for two reasons.\
**a)** The game has two separate volume sliders for effects and music. Some might want to hear music at 25% volume while others would prefer to disable it.\
**b)** Player will not be able to disable music unless they disable the sound effects at all.\

Add the `CfgMusic` class template to your `description.ext` file. Rename `MyIntro` to value that you will use to play the soundtrack. Later you can play it in-game with `playMusic "MyIntro";`.
```
class CfgMusic
{
	tracks[] = {};
	class MyIntro // actual name of the track in your console
	{
		// display name, doesn't do much
		name	= "My intro music";

		// filename, volume, pitch
		sound[]	= { "\music\filename.ogg", db + 0, 1.0 };
	};

};
```

Examples in mission files:\
OP Wunderwaffe: [CfgMusic](../main/2024_06_23.Operation_Wunderwaffe.VTF_Korsac/description.ext#L167), [music dir](https://github.com/gutsout/arma3-mission-files/tree/main/2024_06_23.Operation_Wunderwaffe.VTF_Korsac/music)
OP Hostile Hospitality: [CfgMusic](../main/2024_05_08.Operation_Hostile_Hospitality.Kunduz/description.ext#L167), [sfx dir](https://github.com/gutsout/arma3-mission-files/tree/main/2024_05_08.Operation_Hostile_Hospitality.Kunduz/sfx)