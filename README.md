# Exercise 4.3—Levels

Exercise for MSCH-C220

This exercise is designed to continue to explore a 2D Platformer by laying out two levels using Godot's TileMap node.

The expectations for this exercise are that you will

 - [ ] Fork and clone this repository
 - [ ] Import the project into Godot
 - [ ] Set up six Tilemap nodes
 - [ ] Layout two levels
 - [ ] Edit the LICENSE and README.md
 - [ ] Commit and push your changes back to GitHub. Turn in the URL of your repository on Canvas.

---

## Instructions

Fork this repository. When that process has completed, make sure that the top of the repository reads [your username]/Exercise-4-3-Levels. *Edit the LICENSE and replace BL-MSCH-C220 with your full name.* Commit your changes.

Clone the repository to a Local Path on your computer.

Open Godot. Import the project.godot file and open the "Levels" project.

This project consists of two levels (res://Levels/Level1.tscn and Level2.tscn), each of which has three TileMap nodes: Background, Platform, and Foreground. Using the provided asset: res://Assets/Tiles.png, create level-specific tilemaps for both of these scenes.

The goal is to allow the player to move from the blue Spawn portal on the left of the level to the orange Exit portal at the right of the level.

Anything in the Background tilemap will appear behind the player, and anything in the Foreground tilemap will appear in front of the player. Neither of these tilemaps will cause a collision (i.e., they are just for decoration).

To begin, select one of the TileMap nodes (Background, Platform, or Foreground), and in the Inspector Panel, select Tile Set->New TileSet. Then Edit the resulting TileSet. This will open a panel at the bottom of the window. Select the TileSet (*not TileMap*) panel at the bottom of the window.

Drag Tiles.png from the Assets folder in the FileSystem panel to the left box of the TileSet editor. You will be presented with a dialogue asking whether you would like to automatically create tiles from the atlas. Select "Yes". 

Godot will automatically create tiles, but by default, they are too small. In the center panel, change the Texture Region Size to 64x64. The tiles should then line up with what appears in the image.

Then, if you select the TileMap panel, you should be able to use the tools (pencil, line, rectangle, fill) in the panel toolbar to place the tiles in the scene.

If you need to add collision inforomation (as you will with the Platform TileMap), you will first need to add a Physics Layer element in the Inspector (the defaults should be fine). Then, as you select a tile in the TileSet editor, under Physics->Physics Layer 0, you can create the collision shapes for each of the tiles. Pressing the F key will fill the entire tile with collision information; you can also add, remove, or modify vertices as needed. Only spend time on the tiles that you will actually be using to lay out the level.

When you are happy with the collision information, select the TileMap panel and begin to lay our your level. This is a code-free way to express yourself creatively. I would recommend using the pencil, rectangle, and paintbucket tools. When you are done, run the game and make sure the player can traverse your level to the exit.

Repeat for the second level. Use the brown and red tiles for level 1 and green and yellow for level 2 (to make them visually distinct).

Quit Godot. In GitHub desktop, add a summary message, commit your changes and push them back to GitHub. If you return to and refresh your GitHub repository page, you should now see your updated files with the time when they were changed.

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-4-3-Levels) on Canvas.

The final state of the file should be as follows (replacing the "Created by" information with your name):
```
# Exercise 4.3—Levels

Exercise for MSCH-C220

An for the 2D Platformer project, exploring the TileMap node.


## Implementation

Built using Godot 4.1.1

The player sprite adapted from [MV Platformer Male](https://opengameart.org/content/mv-platformer-male-32x64) by MoikMellah. CC0 Licensed.

The terrain spritemap is from the [Abstract Platformer package](https://kenney.nl/assets/abstract-platformer) available at Kenney.nl.


## References

None


## Future Development

None


## Created by 

Jason Francis
```