sc.exe delete gp-notify-two
nssm install ssedocservice %cd%\main.exe 
nssm set ssedocservice AppDirectory %cd%\
nssm set ssedocservice AppParameters SERVICE 
nssm set ssedocservice DisplayName gp-notify-two
nssm set ssedocservice Description Notificador Gestao Parts
nssm set ssedocservice Start SERVICE_AUTO_START
nssm set ssedocservice ObjectName LocalSystem
nssm set ssedocservice Type SERVICE_WIN32_OWN_PROCESS
nssm set ssedocservice AppPriority NORMAL_PRIORITY_CLASS
nssm set ssedocservice AppNoConsole 0
nssm set ssedocservice AppAffinity All
nssm set ssedocservice AppStopMethodSkip 0
nssm set ssedocservice AppStopMethodConsole 1500
nssm set ssedocservice AppStopMethodWindow 1500
nssm set ssedocservice AppStopMethodThreads 1500
nssm set ssedocservice AppThrottle 1500
nssm set ssedocservice AppExit Default Restart
nssm set ssedocservice AppRestartDelay 0
nssm set ssedocservice AppStdout %cd%\log\logservice.log
nssm set ssedocservice AppStderr %cd%\log\logservice.log