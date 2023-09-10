#!/bin/bash

# Diretorio que deseja efetuar  o  backup
backup_path="$1"


# Caminho que deseja armazenar o backup.
external_storage="$2"

# Formato da Data .
date_format=$(date "+%d-%m-%Y")

# Formato do Arquivo .
final_archive="backup-$date_format.tar.gz"

# Log
log_file="$3"

##############
#Testes
##############
# Checando se o dispositivo está montado na maquina
if ! mountpoint -q -- $external_storage; then
        printf "[$date_format] DEVICE NOR MOUNTED in: $external_storage CHECK I>
        exit 1
fi
# Inicio do backup.
if tar -czSpf "$external_storage/$final_archive" "$backup_path"; then
        printf "[$date_format] BACKUP SUCESS .\n" >> $log_file
else 
        print "[$date_format] BACKUP ERROR.\n" >> $log_file     
fi


# Excluindo arquivos com mais de x dias.

find $external_storage -mtime +x -delete



