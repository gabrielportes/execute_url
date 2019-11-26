#!/bin/bash
#------------------------------------------------------------------
# Autor	:	Gabriel Portes
# Nome	:	rodar_url.sh
# Data	:	25/11/2019
#------------------------------------------------------------------

clear
printf "Informe o diretorio completo da lista de licencas:\n"
read LISTA
printf "\n\nInforme a URL a ser executada nas licencas (sendo \$licenca onde sera substituido pela licenca):\n"
read URL


while IFS="" read -r LICENCA || [ -n "$LICENCA" ]
do
	wget "${URL//\$licenca/$LICENCA}" 2>/dev/null &
done < $LISTA


# Exemplo de como usar
# /home/Gabriel.Portes/Documentos/licencas_supergeeks.txt
# https://$licenca.superlogica.net/financeiro/atual/cron/apps?filename=$licenca&appCron=corrigecontadoplano&appId=43sudo 