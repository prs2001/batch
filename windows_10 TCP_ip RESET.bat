@ECHO OFF
TITLE LIMPEZA TPC/IP...
ECHO.
ECHO PARA INICIAR O PROCESSO DE RESET TCP/IP W10...
PAUSE

TITLE - EXECUTANDO TCP/IP RESET WINDOWS 10...
ECHO.
ECHO - EXECUTANDO TCP/IP RESET WINDOWS 10...
ECHO
netsh winsock reset
PAUSE
CLS
netsh int ip reset 
PAUSE
CLS
ipconfig /release 
PAUSE
CLS
ipconfig /renew 
PAUSE
CLS
ipconfig /flushdns
PAUSE
CLS

ECHO EXECUCAO COMPLETA
PAUSE