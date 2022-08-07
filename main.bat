title GitHub upload

echo off && cls

echo "[Enviar projetos para o Github]"

set /p project_DIR="Insira o caminho do seu projeto (ex: 'C:\dev\projetos\projetolegal') >> ";

set /p nome="Insira o seu nome >> ";

set /p email="Insira o seu email >> ";

set /p mensagem="Insira a mensagem do commit >> ";

set /p projeto_link="Insira o link do seu projeto (ex: https://github.com/user/repo.git) >> ";

cd "%project_DIR%"

git init
echo ""

git config --global user.name "%nome%"
echo ""

git config --global user.email "%email%"
echo ""

git add .
echo ""

git commit -m "%mensagem%"
echo ""

git remote add origin %projeto_link%
echo ""

git push origin master
echo ""

pause
