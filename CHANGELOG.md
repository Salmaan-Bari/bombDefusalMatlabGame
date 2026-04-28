# Changelog

## 2026-04-28
### Improved
- Added a clear entry-point launcher (`startBombDefusalGame.m`) that sets paths, checks required assets, and launches the main menu.
- Improved startup robustness in `initialMenu.m` with missing-asset checks and default difficulty fallback.
- Fixed major gameplay logic issues caused by vector comparisons using `==` in `if` conditions; replaced with `isequal` where appropriate.
- Reduced duplicated hint logic in `projectTool.m` by introducing helper functions for Very Easy hints.
- Added safer audio playback guards so missing sound files do not crash the game flow.
- Improved numpad input handling by sanitizing existing text and limiting max input length.
- Improved timer stability by using safe color matching and robust sound playback calls.
- Added simulation input validation for invalid bomb count and `dt` values in `runSimulation.m`.
- Removed unnecessary `clear`/`clc` from `Wires.m`.
- Rewrote the README with structured setup, gameplay, simulation, and project documentation.
- Added a MATLAB-friendly `.gitignore`.

### Notes
- Core game mechanics and module concepts remain unchanged.
- GUIDE `.fig` UIs are preserved.
