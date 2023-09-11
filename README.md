# Script Para Backup

## PASSO A PASSSO PARA UTILIZAÇÃO DO SCRIPT 

## INICIALMENTE TEREMOS QUE MONTAR O DISCO QUE IRA ARMAZENAR O BACKUP :

### NO LINUX:

###  UTILIZE O COMANDO lsblk PARA LISTAR TODOS OS DISCOS RIGIDOS CONECTADO AO SEU COMPUTADOR 
```
  lsblk
```
### EXEMPLO DE SAÍDA :

```
sda             8:0    
├─sda1          8:1   
├─sda2          8:2   
└─sda3          8:3   
sdb             8:16   
└─sdb1          8:17  
sdc             8:32   
└─sdc1          8:33  

```
  

###  AGORA MONTE O DISCO UTILIZANDO O COMANDO ABAIXO, VAMOS UTILIZAR O DISCO sdc1 COMO EXEMPLO
  
```
  mount /dev/sdc1 /mnt/backup
```

-----------------------------------------------------------------------------------------------

## PARA UTILIZAR O SCRIPT CLONE O REPOSITORIO :
### PARA EXEMPLO UTILIZAREMOS O DIRETORIO DOCUMENTS PARA O CLONE :
```
  git clone https://github.com/P1ul0/Backup-file-sh.git
```

### PARA UTILIZAR O SCRIPT TEREMOS QUE ACESSAR O USUÁRIO ROOT : 

```
 sudo su -
```

### ACESSE O DIRETORIO :

```
  cd /Documents/Backup-file-sh
```

## RODE O ARQUIVO backup-completo-example.sh COM O COMANDO ABAIXO :

###### POSIÇÃO 1 : DIRETORIO QUE DESEJA FAZER O BACKUP
###### POSIÇÃO 2 : DIRETORIO QUE ARMAZENAR BACKUP

## SIGA O EXEMPLO ABAIXO

```
  bash backup-completo-example.sh "/home/$User/Documents" "/mnt/backup" 
```

### PARA SABER SE O BACKUP FOI REALIZADO COM SUCESSO DIGITE O COMANDO ABAIXO :

```
 cat /var/log/backup.log
```

## SAÍDA  :

```
[10-09-2023] BACKUP SUCESS .
```










