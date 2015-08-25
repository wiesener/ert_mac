disp(strcat('Starting target: ',gcs, '....'));
buildArgs = get_param(gcs, 'RTWmakeCommand');
targetAddr = get_param(gcs, 'ExtModeMexArgs');
if length(targetAddr) ~= 0
    ip = char(regexp(targetAddr,'(?<='').*(?='')','match'));
end
if (~isempty(strfind(buildArgs, 'arm-linux-gnueabihf-gcc')))
    str = ['ssh -f root@', ip, ' ''./', gcs, ' -w &\exit\'''];
    unix(str);
    pause(0.5)
else
    pass = passcode();
    str = ['echo "', pass, '" | sudo -S ./', gcs, ' -w &'];
    unix(str, '-echo');
end