@ECHO OFF
ECHO ============================
ECHO ACELERADOR DE AULAS
ECHO ============================
ECHO E necessário ter o Python 3 instalado para iniciar o setup (Leia o README.md)
ECHO Voce so precisa executar esse setup uma vez!

:start
SET choice=
SET /p choice=Deseja iniciar setup?[Y/N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO no
IF '%choice%'=='n' GOTO no
IF '%choice%'=='' GOTO no
ECHO "%choice%" is not valid
ECHO.
GOTO start

:no
PAUSE
EXIT

:yes
pip install -r requirements.txt
PAUSE
EXIT