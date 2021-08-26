@ECHO OFF
TITLE LIMPEZA DO SISTEMA...
ECHO.
ECHO PARA INICIAR O PROCESSO DE LIMPEZA DESTA ESTACAO...
PAUSE

CLS
TITLE - EFETUANDO LIMPEZA DE ARQUIVOS...
ECHO.
ECHO - EFETUANDO LIMPEZA DE ARQUIVOS...
ECHO.
cd\
c:

del /f /s /q "%USERPROFILE%AppData\Local\Temp\*.*"
del /f /s /q "%USERPROFILE%\Recent\*.*"
del /f /s /q "%SystemRoot%\Temp\*.*"
del /f /s /q "%SystemRoot%\Prefetch\*.*"
del /f /s /q "C:\Windows\Prefetch\*.*"
del /f /s /q "C:\Windows\Prefetch\"
del /f /s /q "%USERPROFILE%\LOCALS~1\Temporary Internet Files\Content.IE5\*.*"
del /f /s /q "%USERPROFILE%\Configurações locais\Temporary Internet Files\Content.IE5\*.*"
del /f /s /q "%SystemRoot%\Downloaded Program Files\*.*"
del /f /s /q "%SystemRoot%\Offline Web Pages\*.*"
del /f /s /q "%TEMP%"
del /f /s c:\*.tmp
del /f /s c:\*.$$$
del /f /s c:\chklist.*
del /f /s c:\*.diz
del /f /s c:\*.old
del /f /s c:\*.nch
del /f /s c:\~*.*
del /f /s c:\thumbs.*
del /f /s /q "C:\Windows\System32\Logfiles\*.*"

CLS
TITLE - EFETUANDO LIMPEZA DE ARQUIVOS OCULTOS...
ECHO.
ECHO - EFETUANDO LIMPEZA DE ARQUIVOS OCULTOS...
ECHO.

del /f /s /ah c:\*.tmp
del /f /s /ah c:\*.$$$
del /f /s /ah c:\chklist.*
del /f /s /ah c:\*.diz
del /f /s /ah c:\*.old
del /f /s /ah c:\*.nch
del /f /s /ah c:\~*.*
del /f /s /ah c:\thumbs.*
del /f /s /ah "C:\Windows\System32\Logfiles\*.*"

CLS
TITLE - DELETANDO ARQUIVOS DA LIXEIRA...
ECHO.
ECHO - DELETANDO ARQUIVOS DA LIXEIRA...
ECHO.
DEL "%SYSTEMDRIVE%\RECYCLER" /f /s /q


CLS
TITLE - VERIFICANDO A INTEGRIDADE DO SISTEMA...
ECHO.
ECHO - VERIFICANDO A INTEGRIDADE DO SISTEMA...
ECHO.
sfc /scannow

CLS
TITLE - EXECUTANDO LIMPEZA DE DISCO...
ECHO.
ECHO - EXECUTANDO LIMPEZA DE DISCO...
ECHO.
cleanmgr


TITLE - EXECUTANDO LIMPEZA DE DNS...
ECHO.
ECHO - EXECUTANDO LIMPEZA DE DNS...
ECHO
netsh winsock reset
ipconfig /flushdns




CLS
TITLE LIMPEZA DO SISTEMA COMPLETA
ECHO LIMPEZA DO SISTEMA COMPLETA
ECHO.
ECHO LIMPEZA DE ARQUIVOS COMPLETA
ECHO LIMPEZA DE ARQUIVOS OCULTOS COMPLETA
ECHO LIMPEZA DA LIXEIRA COMPLETA
ECHO VERIFICACAO DE INTEGRIDADE DO SISTEMA COMPLETA
ECHO LIMPEZA DE DISCO EXECUTADA
ECHO EXECUTANDO LIMPEZA DE DNS
ECHO VERIFICACAO DE INTEGRIDADE DE SEGURANCA COMPLETA
ECHO ATUALIZACAO DE DIRETIVAS COMPLETA
PAUSE
