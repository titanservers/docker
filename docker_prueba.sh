#!/bin/bash
#!/bin/bash
echo " "
jeshile='\e[40;38;5;82m'
jo='\e[0m' 
os=$(exec uname -m|grep 64)
if [ "$os" = "" ]
then os="x86"
else os="x64"
fi
echo -e "${jeshile} ┌─────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Comprobación de la versión del sistema │ \e[0m"
echo -e "${jeshile} └─────────────────────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌───────────────────────────┐ \e[0m"
echo -e "${jeshile} │   Detected a $os sistema  │ \e[0m"
echo -e "${jeshile} └───────────────────────────┘ \e[0m"
sleep 3
echo -e "${jeshile} ┌─────────────────────────────┐ \e[0m"
echo -e "${jeshile} │  Instalar el servidor web   │ \e[0m"
echo -e "${jeshile} └─────────────────────────────┘ \e[0m"
echo " "

####INSTALAR dependecias 

msg -bar
inst_components () {
echo -e "\033[92m  -- INSTALANDO Y ACTULIZANDO PAQUETES NECESARIOS -- "
msg -bar
sleep 2s
[[ $(dpkg --get-selections|grep -w "php5.5-curl"|head -1) ]] || apt-get install php5.5-curl -y &>/dev/null && mm_decho "  INSTALANDO php5.5-curl..............[OK]" "0.08" 
[[ $(dpkg --get-selections|grep -w "nano"|head -1) ]] || apt-get install nano -y &>/dev/null && mm_decho "  INSTALANDO nano............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "php5-mysql"|head -1) ]] || apt-get install php5-mysql -y &>/dev/null && mm_decho "  INSTALANDO php5-mysql..............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "sudo"|head -1) ]] || apt-get install sudo -y &>/dev/null && mm_decho "  INSTALANDO sudo............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "php5-cli"|head -1) ]] || apt-get install php5-cli -y &>/dev/null && mm_decho "  INSTALANDO php5-cli............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "php5-curl"|head -1) ]] || apt-get install php5-curl -y &>/dev/null && mm_decho "  INSTALANDO php5-curl.........[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "libcurl3"|head -1) ]] || apt-get install libcurl3 -y &>/dev/null && mm_decho "  INSTALANDO libcurl3........OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "libcurl3-dev"|head -1) ]] || apt-get install libcurl3-dev -y &>/dev/null && mm_decho "  INSTALANDO libcurl3-dev..........[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "python"|head -1) ]] || apt-get install python -y &>/dev/null && mm_decho "  INSTALANDO python..........[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "python3"|head -1) ]] || apt-get install python3 -y &>/dev/null && mm_decho "  INSTALANDO python3........[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "python3-pip"|head -1) ]] || apt-get install python3-pip -y &>/dev/null && mm_decho "  INSTALANDO python3-pip....OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "curl"|head -1) ]] || apt-get install curl -y &>/dev/null && mm_decho "  INSTALANDO curl............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "php5-curl"|head -1) ]] || apt-get install php5-curl -y &>/dev/null && mm_decho "  INSTALANDO php5-curl............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "unzip"|head -1) ]] || apt-get install unzip -y &>/dev/null && mm_decho "  INSTALANDO unzip..........[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "lynx-cur"|head -1) ]] || apt-get install lynx-cur -y &>/dev/null && mm_decho "  INSTALANDO lynx-cur..........[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "zip"|head -1) ]] || apt-get install zip -y &>/dev/null && mm_decho "  INSTALANDO zip............[OK]" "0.08"
[[ $(dpkg --get-selections|grep -w "apache2"|head -1) ]] || {
 apt-get install apache2 -y &>/dev/null
 sed -i "s;Listen 80;Listen 85;g" /etc/apache2/ports.conf
 service apache2 restart > /dev/null 2>&1 &
 } && mm_decho "  INSTALANDO apache2........[OK]" "0.08"
 msg -bar2
 sleep 2
 clear 
}


echo -e "${jeshile} ┌────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+]      instalacion completa               │ \e[0m"
echo -e "${jeshile} └────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+]                                         │ \e[0m"
echo -e "${jeshile} └────────────────────────────────────────────┘ \e[0m"
echo -e "${jeshile} ┌────────────────────────────────────────────┐ \e[0m"
echo -e "${jeshile} │[+]        Restarting server...             │ \e[0m"
echo -e "${jeshile} └────────────────────────────────────────────┘ \e[0m"
echo " "
sleep 8
reboot
echo " "
echo -e "${jeshile} ┌───────────────────────┐ \e[0m"
echo -e "${jeshile} │[R]  Restart VPS...    │ \e[0m"
echo -e "${jeshile} └───────────────────────┘ \e[0m"
echo " "
