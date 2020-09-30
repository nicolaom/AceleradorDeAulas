@ECHO OFF
:: Section 1: Titulo
ECHO ============================
ECHO ACELERADOR DE AULAS
ECHO ============================
ECHO Esse programinha requer o Python 3 instalado
ECHO Antes de utilizar o programa pela primeira vez execute o _setup.bat
ECHO = = = = = = = = = = = = = = = = = = = =
ECHO Vamos comecar! Insira abaixo o video ou audio a ser modificado
set /P id=Insira o nome do arquivo: 

:start
SET choice=
SET /p choice=Deseja utilizar configuracoes padroes? [Y/N]: 
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
set /P sounded=Insira a velocidade para audio COM som (Padrao 1.2): 
set /P silent=Insira a velocidade para audio SEM som (Padrao 999999): 
python codigo.py --input_file %id% --sounded_speed %sounded% --silent_speed %silent%
python deletetemp.py
PAUSE
EXIT

:yes
python codigo.py --input_file %id%
python deletetemp.py
PAUSE
EXIT