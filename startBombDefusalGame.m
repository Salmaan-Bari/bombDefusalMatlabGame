function startBombDefusalGame
% STARTBOMBDEFUSALGAME Launch the Bomb Defusal MATLAB game.
%   Run this function from MATLAB to start the project from a single,
%   beginner-friendly entry point.

projectRoot = fileparts(mfilename('fullpath'));
addpath(projectRoot);
cd(projectRoot);

requiredFiles = {'initialMenu.fig', 'projectTool.fig', 'BombPic.png'};
missingFiles = requiredFiles(~cellfun(@(f) exist(fullfile(projectRoot, f), 'file') == 2, requiredFiles));
if ~isempty(missingFiles)
    error('Missing required project file(s): %s', strjoin(missingFiles, ', '));
end

fprintf('Launching Bomb Defusal Game from %s\n', projectRoot);
initialMenu;
end
