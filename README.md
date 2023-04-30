# MM_Datapack
Datapack for Majoras Mask Minecraft Map

https://github.com/AlaskanGopher/MM_ResourcePack

## Naming Conventions
### By the Bop
The new naming conventions I chose from basically nowhere, but their source doesnt really matter as long as they're maintained somewhat
### The conventions
- Files
	- Named with snake_case
	- Has a couple "standard" naming schemes
		- tick.mcfunction: Runs every tick
		- load.mcfunction: runs once when datapack is loaded
		- *_start: runs once when something begins
		- *_end: runs once when something ends
		- Name any callback-related files the name of the callback file (e.g. callbacks/crouch.mcfunction calls items/deku_flower/crouch.mcfunction)
	- Tags
		- PascalCase
	- Scoreboards
		- PascalCase for non-constant values
		- SCREAMING_SNAKE_CASE for constants