#!/bin/bash
#Hazırlayan : Uğur KURU
#Tarih      : 15.11.2021
#Konu       : Bash Script İşletim Sistemi Belirleme
#Versiyon   : 1.0.12

if [ $1 == "--help" ] || [ $1 == "-h" ]
then
echo "# Yardım #"
echo "Version: v1.0.1"
echo ""
echo "Usage:"
echo "      itman -I chain [rulenum] rule-specification [options]"
echo "      itman -R chain rulenum rule-specification [options]"
echo "      itman -D chain rulenum [options]"
echo "      itman -[LS] [chain [rulenum]] [options]"
echo "      itman -[FZ] [chain] [options]"
echo "      itman -[NX] chain"
echo "      itman -E old-chain-name new-chain-name"
echo "      itman -P chain target [options]"
echo "      itman -h (print this help information)"
echo ""
echo "Commands:"
echo "Either long or short options are allowed."
echo "--help      -h    chain    Help menu"
echo "--centos    -cts  chain    Contos İşletim sisteminin kuruluımunu başlatır."
echo "--plesk     -plsk chain    Plesk İşletim sisteminin kuruluımunu başlatır."
echo "--fbalancer -fb   chain    File balancer sisteminin kuruluımunu başlatır."
echo "--ping      -pp   chain    Port ping sisteminin kuruluımunu başlatır."

elif [ $1 == "--update" ] || [ $1 == "-upd" ]
then
yum install update
yum install wget
wget https://raw.githubusercontent.com/TheKuru/Scripts/master/itman.sh
cat itman.sh > /script/itman.sh
sudo rm -R itman.sh

elif [ $1 == "--centos" ] || [ $1 == "-cts" ]
then
     echo "Contos Kurulumu"

elif [ $1 == "--CertificateSigningRequest" ] || [ $1 == "-csr" ]
then
     echo "Csr Kurulumu"
















elif [ $1 == "--plesk" ] || [ $1 == "-plsk" ]
then
     echo "Plesk Kurulumu"
elif [ $1 == "--fbalancer" ] || [ $1 == "-fb" ]
then
     echo "File balancer Kurulumu"
elif [ $1 == "--ping" ] || [ $1 == "-pp" ]
then
     echo "Port ping Kurulumu"
elif [ $1 == "2" ] || [ $1 == "2" ]
then
     echo "Sayı: 2"
else
     echo "Hata! : Script parametreleri okunamadı."
exit 1
fi