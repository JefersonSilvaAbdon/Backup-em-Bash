#verifica se o usuario logado é o backupuser 

    if [ $(whoami) = 'backupuser' ]; then 

    #DIR_ORIG onde está localizado a pasta que será feito backup           
    #DIR_DEST onde irá ser armazenado o backup 
    #BKP_NOME é o nome do arquivo compactado com os dados 
    DIR_ORIG="/home/backupuser/teste/" DIR_DEST="/home/backupuser/backup/" 
    BKP_NOME="backup.tgz" 
    hoje=`date +%d/%m/%y` 

    #compacta do diretório de origem até o diretório de destino. 
    tar -czpf ${DIR_DEST}${BKP_NOME} ${DIR_ORIG} 
    echo "Seu backup foi realizado com sucesso." 
    echo "Diretório: ${DIR_ORIG}" 
    echo "Destino: ${DIR_DEST}${BKP_NOME}"; 
    echo "O backup foi feito no dia: $hoje" 
else 

    echo "Você não tem permissão para executar" 

fi