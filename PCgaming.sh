sudo curl -O https://github.com/ChillTevin/22GODpc/raw/main/Account
sudo chmod +x Account
sudo ./Account
echo "DESCARGANDO XRDP PARA PODER INICIAR (A VER USADO EL ARCHIVO 'ACCOUNT' ANTES DE INICIAR)"
sudo apt install xrdp -y
echo -e "\e[38;5;206mActualizando los componentes...\e[0m"
sudo apt update && sudo apt upgrade && sudo apt install nano
echo -e "\e[31mInstalando Steam Gaming Cloud\e[0m"
sudo curl -O https://github.com/ChillTevin/22GODpc/raw/main/IIBP23426.sh
sudo chmod +x IIBP23426.sh
sudo ./IIBP23426.sh
sudo curl -O https://github.com/ChillTevin/22GODpc/raw/main/INP.sh
sudo chmod +x INP.sh
sudo ./INP.sh
echo -e "\e[32mInstalando Ngrok...\e[0m"
sudo wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
sudo tar -xvzf ngrok-v3-stable-linux-amd64.tgz
echo -e "\e[36mIngresa la región de Ngrok (ejemplo: us, eu, ap, au, sa, jp, in): \e[0m"
read -p "Región de Ngrok: " CRP
sudo ./ngrok tcp --region $CRP 3389 &
read -p "Ctrl + V Authtoken: " CRP 
sudo ./ngrok authtoken $CRP 
echo -e "\e[33mIniciando Token\e[0m"
echo -e "\e[36mInstalando entorno KDE Plasma\e[0m"
sudo apt install kubuntu-desktop -y
sudo sed -i.bak '/fi/a xfce4-session \n' /etc/xrdp/startwm.sh
echo -e "\e[92mApunto de terminar solo un poco más \e[0m"
echo -e "\e[31mTexto con letra roja\e[0m"
echo -e "\e[31m⢿⣿⣿⣿⣭⠹⠛⠛⠛⢿⣿⣿⣿⣿⡿⣿⠷⠶⠿⢻⣿⣛⣦⣙⠻⣿
⣿⣿⢿⣿⠏⠀⠀⡀⠀⠈⣿⢛⣽⣜⠯⣽⠀⠀⠀⠀⠙⢿⣷⣻⡀⢿
⠐⠛⢿⣾⣖⣤⡀⠀⢀⡰⠿⢷⣶⣿⡇⠻⣖⣒⣒⣶⣿⣿⡟⢙⣶⣮
⣤⠀⠀⠛⠻⠗⠿⠿⣯⡆⣿⣛⣿⡿⠿⠮⡶⠼⠟⠙⠊⠁⠀⠸⢣⣿
⣿⣷⡀⠀⠀⠀⠀⠠⠭⣍⡉⢩⣥⡤⠥⣤⡶⣒⠀⠀⠀⠀⠀⢰⣿⣿
⣿⣿⡽⡄⠀⠀⠀⢿⣿⣆⣿⣧⢡⣾⣿⡇⣾⣿⡇⠀⠀⠀⠀⣿⡇⠃
⣿⣿⣷⣻⣆⢄⠀⠈⠉⠉⠛⠛⠘⠛⠛⠛⠙⠛⠁⠀⠀⠀⠀⣿⡇⢸
⢞⣿⣿⣷⣝⣷⣝⠦⡀⠀⠀⠀⠀⠀⠀⠀⡀⢀⠀⠀⠀⠀⠀⠛⣿⠈
⣦⡑⠛⣟⢿⡿⣿⣷⣝⢧⡀⠀⠀⣶⣸⡇⣿⢸⣧⠀⠀⠀⠀⢸⡿⡆
⣿⣿⣷⣮⣭⣍⡛⠻⢿⣷⠿⣶⣶⣬⣬⣁⣉⣀⣀⣁⡤⢴⣺⣾⣽⡇\e[0m"
sudo service xrdp start
sudo ./ngrok tcp --region=us 3389 &