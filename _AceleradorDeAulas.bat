@ECHO OFF
:: Section 1: Titulo
ECHO ============================
ECHO ACELERADOR DE AULAS
ECHO Criador: Nicola Occhipinti
ECHO ============================
ECHO Esse programinha requer o Python 3 instalado
ECHO Antes de utilizar o programa pela primeira vez execute o _setup.bat
ECHO Vamos comecar! 

ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""

ECHO = = = = = = = = = = = = = = = = = = = =
ECHO Fiz e disponibilizei esse programa de maneira gratuita,
ECHO CONSIDERE REALIZAR UMA DOACAO: http://bit.ly/DoacaoN
ECHO = = = = = = = = = = = = = = = = = = = =

:doacao
SET choiced=
SET /p choiced=Deseja realizar uma doacao? [Y/N]: 
IF NOT '%choiced%'=='' SET choiced=%choiced:~0,1%
IF '%choiced%'=='Y' GOTO yesd
IF '%choiced%'=='y' GOTO yesd
IF '%choiced%'=='N' GOTO nod
IF '%choiced%'=='n' GOTO nod
IF '%choiced%'=='' GOTO nod
ECHO "%choiced%" is not valid
ECHO.
GOTO doacao

:nod
ECHO Tudo bem! Caso mude de ideia o linkk esta disponivel no README.md 
ECHO Voce pode continuar utilizando o programa de maneira gratuita
GOTO start

:yesd
ECHO Muito obrigado! Voce sera redirecionado para a pagina de doacao
start http://bit.ly/DoacaoN
GOTO start

:start
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ""
ECHO ============================
set /P id=Insira o nome do arquivo a ser acelerado: 
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
