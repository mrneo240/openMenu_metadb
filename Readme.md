# Instructions

## Notes
- USA and PAL are considered complete and should not require updates
- All Homebrew belongs in `meta_db_in`, yes even commercially discs
- All things that aren't homebrew and aren't retail belong in `meta_ex_in`. This includes things like prototypes, demo discs, propeller arena, etc...

## How to add metadata for a particular disc
- Create a `txt` file in the appropriate folder with the name being the serial number of the disc.
    - e.g. `HB_IAN_DOOM.txt` for Ian Michael's doom port
- **Note:** the filename should be the Serial used in the IP.BIN of the disc image.
    - If no proper serial exists, e.g. `BOOTDREAMS` then feel free to make up an ID similar to `HB_IAN_DOOM`
    - Created ID's will be honored when making your openMenu gdi from [GDMENUCardManager](https://github.com/mrneo240/GDMENUCardManager/releases/) if you add `serial.txt` with the serial to the disc image folder

## What to write in a metadata file
### Example for `Rayman 2: The Great Escape` (`17707N.txt`)
```
[ITEM]
num_players=4
vmu_blocks=2
accessories=VGA+JUMP+MOD
network=0
genre=Platformer
description=Fly rockets, ride whirlwinds and surf lava flows at a blazing 60 frames a second. Master Rayman's amazing moves and battle vicious enemies across 54 massive levels in 21 lush worlds to save the universe from destruction.
padding0=0
```

- num_players=#
  - number of players from 1 to 4
- vmu_blocks=###
  - How many vmu blocks a save for this game uses
- accessories=VGA+JUMP+MOD
  - Which accessories are compatible from this list:
  - **Note:** Multiple can be used by adding `+` between
    - JUMP: Rumble Pack
    - KEY: Keyboard
    - VGA: VGA Display
    - MS: Mouse
    - OLE: Samba Maracas
    - RACE: Racing Wheel
    - MIC: Microphone
    - ARC: Arcade Stick
    - GUN: Lightgun
    - ETH: Ethernet BBA
    - FISH: Fishing Rod
    - ASC: Ascii Pad
    - CAM: Dreameye Camera
    - MOD: Modem
    - 0 or - : None
- network=0
  - Network compatibility
    - 0: None
    - 1: Modem
    - 2: BBA
    - 3: Both
- genre=XXX
  - Which genre this disc is from this list:
  - **Note:** Multiple can be used by adding `+` between
    - Action
    - Racing
    - Simulation
    - Sports
    - Lightgun
    - Fighting
    - Shooter
    - Survival
    - Adventure
    - Platformer
    - RPG
    - Shmup
    - Strategy
    - Puzzle
    - Arcade
    - Music
    - 0: None
- description=Fly rockets, ride whirlwinds and surf lava flows at a blazing 60 frames a second. Master Rayman's amazing moves and battle vicious enemies across 54 massive levels in 21 lush worlds
  - A description of the game/disc
  - **Note:** Limited to AT MOST 370 characters
- padding0=0
  - Required as is
