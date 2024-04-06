# Challenge Loader for Balatro
This is a mod to make distributing challenges easier. Rather than writing an explicit mod for each challenge, one may simply write the challenge.

## Getting Started
Once you install the mod run the game at least once.

Open your Balatro mod directory, then go up a directory where `mods` and `apis` are.

You'll notice a new folder, `challenges`, this is where any challenge files go.

## Writing Challenges
A challenge file is simply a lua file. This file will be executed with full access to the game. This lua file should return a challenge table in the internal format Balatro uses. For reference you may look at `challenges.lua` in your decompilation of the game, or the files included in the `challenges/` folder on this repository.

The injection / removal of your challenge will be handled entirely by this loader.
