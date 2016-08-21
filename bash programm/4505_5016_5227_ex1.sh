#!/bin/bash
echo '
 ------------------------------------------------
 |      1h ASKISI ERGASTHRIOU LEITOURGIKWN      |
 |        Systima Syntirishs Pelatwn v1.0       |
 |	             WELCOME!                   |
 ------------------------------------------------';
declare option=-1;

#Me afth th until oso den eisagei o xrhsths to 0 gia thn epilogh termatismou to programma synexizei na trexei
until [ $option = '6' ];
do
    echo '
 ------------------------------------------------
 Gia na synexisete epilekste kati apo ta parakatw
 ------------------------------------------------
 |	[1] Epilogi arxeiou epixeirisis  	|
 |	[2] Provoli stoixeiwn epixeirisis	|
 |	[3] Allagi stoixeiou epixeirisis 	|
 |	[4] Provoli arxeiou             	|
 |	[5] Apothikeysh arxeiou         	|
 |	[6] Eksodos                       	|
 ------------------------------------------------';
 read -p '
>>Epilogi[*]: ' option;
   
  if [ $option -eq '1' ]; then
    read -p 'Eisagete to path tou arxeiou (gia paralipsi hit enter) >>' filePath;
    cd $filepath;
    declare var1;
    read -p 'Anoigma tou arxeiou clients.csv; [1 for YES|0 for NO]>> ' var1;
 
    	if [ $var1 -eq '1' ]; then
        	cat clients.csv    
  
    	else 
			read -p 'Eisagete to onoma tou arxeiu: ' newCsv;
        	cat $newCsv;
    	
		fi    
 
  elif [ $option -eq '2' ]; then
 	echo 'Eisagete to kwdiko pelath:';
    read -p '>> ' id1; 
    echo ;
    echo 'ID    BusinessName    AddressLine2    AddressLine3    PostCode    Longitude   Latitude'; echo;
    awk '/^'$id1'/{print $0}' clients.csv
 
  elif [ $option -eq '3' ]; then 
	echo 'Eisagete to kwdiko pelath:';
    read -p '>> ' id2;
    echo 'ID    BusinessName    AddressLine2    AddressLine3    PostCode    Longitude   Latitude'; 
	touch file1;    
	#sto file1 pername thn grammh pou einai pros epeksergasia
	awk '/^'$id2'/{print $0}' clients.csv >> file1
	cat file1;
	echo 'Epilekste to stoixeio pou thelete na allaksete
  -----------------------------------------------
  |  [1] Onoma                                  |
  |  [2] Odos                                   |
  |  [3] Poli                                   |
  |  [4] Tax. Kwdikas                           |
  |  [5] Latitude                               |
  |  [6] Longitude                              |
  -----------------------------------------------';
	read -p '>> ' option2;
	touch file2 file3 file4;
	#sto file 3 pername thn arxikh lista xwris thn grammh pou einai pros allagh
	sed -e '/^'$id2'/d' clients.csv >> file3;

		#syntiki analoga me to pedio pou epilegei o xristis na allaksei
    	if [ $option2 -eq '1' ]; then
    		echo ' Eisagete to neo onoma:'
			read -p '>> ' stoixeio;
			# me thn parakatw entolh awk antikathistoume th defterh steilei me afto pou eishgage o xrhsths
			# kai epeidh to file1 pou epeksergazomaste exei mono thn grammh pou einai pros epeksergasia 
			# exoume th zhtoumenh allagh
			# meta thn allagh pername thn allagh sto file2 
			awk -F, -v var=$stoixeio '{$2='var'}1' OFS=, file1 >> file2

		elif [ $option2 -eq '2' ]; then
			echo 'Eisagete th nea diefthinsi:';
			read -p '>> ' stoixeio;
			# antistoixa kai gia tis ypoloipes epiloges
			awk -F, -v var=$stoixeio '{$3='var'}1' OFS=, file1 >> file2

		elif [ $option2 -eq '3' ]; then
			echo 'Eisagete th nea poli: ';
			read -p '>> ' stoixeio;
			awk -F, -v var=$stoixeio '{$4='var'}1' OFS=, file1 >> file2
		
		elif [ $option2 -eq '4' ]; then
			echo 'Eisagete to neo taxydromiko kwdika:';
			read -p '>> ' stoixeio;
			awk -F, -v var=$stoixeio '{$5='var'}1' OFS=, file1 >> file2

		elif [ $option2 -eq '5' ]; then
			echo 'Eisagete to neo geografiko mhkos:';
			read -p '>> ' stoixeio;
			awk -F, -v var=$stoixeio '{$6='var'}1' OFS=, file1 >> file2
	
		elif [ $option2 -eq '6' ]; then
			echo 'Eisagete to neo geografiko platos:';
			read -p '>> ' stoixeio;
			awk -F, -v var=$stoixeio '{$7='var'}1' OFS=, file1 >> file2
		
		else
			echo'H epilogh den einai egkyrh:';

		fi

	sed -e '/^'$id2'/d' clients.csv >> file3;
	cat file2 >> file3;
	sort -g file3 >> file4;
	cp file4 file3;	
	echo 'OLD';
	echo 'ID    BusinessName    AddressLine2    AddressLine3    PostCode    Longitude   Latitude';
	cat file1;
	echo;
	echo 'NEW';
	echo 'ID    BusinessName    AddressLine2    AddressLine3    PostCode    Longitude   Latitude';
	cat file2;
	echo 'Gia na pragmatopoihsete kapoia allh allagh tha prepei prwta na apothikefsete tis allages
pou pgramatopoihsate';
	echo ;
 	echo 'Gia apothikefsh epilogi[5]';

  elif [ $option -eq '4' ]; then
    cat clients.csv | more ;
 
  elif [ $option -eq '5' ]; then
    declare var2;
    read -p 'Save as clients.csv? [1 for YES|0 for No]' var2;
 
    	if [ $var2 -eq  '1' ]; then
			# apothikefsh ths telikhs listas meta thn epeksergasia meta thn epeksergasia
        	cp file3 clients.csv;
			echo 'diagrafi prosorinon arxeion....';
			rm file1 file2 file3 file4;

    	else
			read -p 'Eisagete neo onoma:' new;
        	cp file3 $new;
			echo 'diagrafi prosorinon arxeion....';
			rm file1 file2 file3 file4;
    
		fi
 
  elif [ $option -eq '6' ]; then
    echo '
 ------------------------------------------------
 |                 Termatismos                  |
 |                EFXARISTOUME!                 |
 ------------------------------------------------';

  else
    echo 'Lathos epilogi... Epilekste ksana';

  fi

done
