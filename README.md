# AtivCompl
# meu_arquivo_de_lote
#!/bin/sh
cd /home/amorim/www/AtivCompl/current
git pull

# Backup
 mysqldump -u root -p AtivCompl > AtivCompl.sql  

# Restore
mysql -u $USER -p$PASSWORD -e "drop database if exists $DB"
mysql -u $USER -p$PASSWORD -e "create database $DB"
mysql -u $USER -p$PASSWORD  $DB < $FILE



Apagar os conteineirs e rodar 
 docker-compose up -d
 docker-compose up --build
 docker ps
 docker-compose exec app rails server -p 3000
 docker-compose exec app bash
 docker exec -it 



