sc.exe delete gp-notify-two
nssm install gp-notify-two %cd%\main.exe 
nssm set gp-notify-two AppDirectory %cd%\
nssm set gp-notify-two AppParameters SERVICE 
nssm set gp-notify-two DisplayName gp-notify-two
nssm set gp-notify-two Description Notificador Gestao Parts
nssm set gp-notify-two Start SERVICE_AUTO_START
nssm set gp-notify-two ObjectName LocalSystem
nssm set gp-notify-two Type SERVICE_WIN32_OWN_PROCESS
nssm set gp-notify-two AppPriority NORMAL_PRIORITY_CLASS
nssm set gp-notify-two AppNoConsole 0
nssm set gp-notify-two AppAffinity All
nssm set gp-notify-two AppStopMethodSkip 0
nssm set gp-notify-two AppStopMethodConsole 1500
nssm set gp-notify-two AppStopMethodWindow 1500
nssm set gp-notify-two AppStopMethodThreads 1500
nssm set gp-notify-two AppThrottle 1500
nssm set gp-notify-two AppExit Default Restart
nssm set gp-notify-two AppRestartDelay 0
nssm set gp-notify-two AppStdout %cd%\log\logservice.log
nssm set gp-notify-two AppStderr %cd%\log\logservice.log