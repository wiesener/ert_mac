disp(strcat('Starting target: ',gcs, '....'));
buildArgs = get_param(gcs, 'RTWmakeCommand');
if (~isempty(strfind(buildArgs, 'arm-linux-gnueabihf-gcc')))
   unix(strcat('ssh root@192.168.7.2 ./',modelName,' -w'), '-echo');
else
    pass = passcode();
    str = ['echo "', pass, '" | sudo -S ./', gcs, ' -w &'];
    unix(str, '-echo');
end
