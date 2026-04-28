function timedecrement(handles)

load('gameMode.mat')
if strcmp(gameMode,'very easy')
    tStart = 420;
elseif strcmp(gameMode,'easy')
    tStart = 420;
elseif strcmp(gameMode,'intermediate')
    tStart = 360;
elseif strcmp(gameMode,'hard')
    tStart = 300;
end
handles.Timer.String = num2str(tStart);

t = str2double(handles.Timer.String);
while t > 0
    if isColorMatch(handles.life1.BackgroundColor, [0 .94 1])
        drawnow
        
        t=str2double(handles.Timer.String); %the t value for the string
        
        t=t-1;
        
        %see if t is 0 and do something (stop the game), if not do
        
        handles.Timer.String = num2str(t);%update t
        
        if t < 30 && t >= 10
            safePlaySound('beep.mp3');
        end
        
        if t < 10 && t >= 0
            safePlaySound('beepfast.mp3');
        end
        
        pause(1);
        
    elseif isColorMatch(handles.life1.BackgroundColor, [0 .94 .05])
        safePlaySound('yay.mp3');
        winScreen;
        break
    else
        safePlaySound('lose.mp3');
        loseScreen;
        break
    end
    
end
if t == 0
    handles.applyButton.Visible = 'off';
    loseScreen;
end

function tf = isColorMatch(actualColor, expectedColor)
tf = isequal(round(actualColor, 4), round(expectedColor, 4));

function safePlaySound(audioFile)
if exist(audioFile, 'file') == 2
    [audioData, sampleRate] = audioread(audioFile);
    sound(audioData, sampleRate);
end
