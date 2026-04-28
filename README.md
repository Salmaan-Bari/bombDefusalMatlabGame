# Bomb Defusal MATLAB Game

A MATLAB bomb-defusal game inspired by puzzle-based teamwork games. One player interacts with a randomized bomb interface while another follows the manual (`res/bombDefusal.pdf`) to guide defusal decisions.

## Project Overview
This repository contains two main experiences:
1. **Interactive game mode**: Defuse a randomized bomb before time runs out.
2. **Simulation mode**: Compare automatic solvers (random, brute-force, and rule-based).

The project has been cleaned up to include a clear entry point, better error handling, improved player feedback, and onboarding documentation.

## Features
- Randomized bomb generation each round (wires, switches, buttons, and numpad).
- Multiple game difficulties with time pressure.
- Lives-based fail state with optional visual hints in **Very Easy** mode.
- Sound cues for urgency, success, and failure.
- Solver simulation and comparative timing charts.
- New single-command entry point: `startBombDefusalGame`.

## Requirements
- MATLAB (tested with GUIDE-compatible MATLAB versions; likely works on R2018b+ and newer).
- Image Processing Toolbox (`imread`, `imshow`, `imresize`).
- Audio playback support for `.mp3` files.

## Quick Start (How to Run)
1. Open MATLAB.
2. Clone or download this repository.
3. In MATLAB, set the **Current Folder** to this project root.
4. Run:
   ```matlab
   startBombDefusalGame
   ```
5. In the menu:
   - Choose a difficulty.
   - Click **Play Game** to launch gameplay, or **Simulation** to run automated solver experiments.

## Gameplay Instructions
1. Select a difficulty in the initial menu.
2. Press **Play Game**.
3. Inspect the four modules on the bomb:
   - Wires
   - Switches
   - Buttons
   - Numpad
4. Use the rule manual in `res/bombDefusal.pdf` to determine:
   - Which wires to cut
   - Which switches to flip
   - Which button to press
   - What code to enter
5. Press **Apply** to submit your full solution.
6. You have 3 lives; incorrect attempts remove a life.
7. Defuse the bomb before the timer reaches zero.

## Simulation Mode
1. From the main menu, click **Simulation**.
2. Enter:
   - Number of bombs
   - Time step (`dt`)
3. Press **Start**.
4. Review generated timing and failure statistics.

> Input validation now warns for invalid bomb count or `dt` values.

## File Structure
```text
.
├── startBombDefusalGame.m      # Main entry point (recommended launcher)
├── initialMenu.m/.fig          # Main menu GUI
├── projectTool.m/.fig          # Main bomb gameplay GUI
├── bombSimulationTool.m/.fig   # Simulation GUI
├── BombGenerator.m             # Random bomb generation
├── BombSolution.m              # Rule-based solution generation
├── runSimulation.m             # Simulation run loop and plotting
├── timedecrement.m             # Countdown timer and win/loss trigger
├── res/
│   ├── bombDefusal.pdf         # Gameplay manual/rules
│   ├── executiveSummary.pdf
│   └── demonstrationDayPresentation.pdf
└── media assets (.png/.mp3/.mat/.fig)
```

## Screenshots / Demo
- **Main Menu**: _placeholder_
- **Gameplay Screen**: _placeholder_
- **Simulation Dashboard**: _placeholder_

If you add screenshots later, place them in a `docs/` or `assets/` folder and link them here.

## Future Improvements
- Migrate GUIDE GUIs to App Designer.
- Add automated MATLAB unit tests for solver logic.
- Add keyboard shortcuts for numpad entry.
- Save and load gameplay sessions.
- Package as a MATLAB App (`.mlappinstall`).

## Credits
Originally developed as an Intro to Engineering final project (2017). This version focuses on reliability, usability, and portfolio-readiness while preserving the original game concept.
