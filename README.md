<h1 align = "center" >Projekat iz predmeta "Operativni sistemi"</h1>

<h3 align = "center">Tema: Multi-database server uz pomoć Dockera. </h3>

<i>Profesor</i>: prof. dr. Denis Čeke

<i>Asistent</i>: Adin Jahić, Narcisa Hadžajlić
<hr>
<p> <i>Fajl docker-compose.yaml je prerađen i trenutno je validan fajl.</i></p>

<hr>
<h3> MSSQL docker container </h3>

Da se pokrene obična MSSQL baza podataka koristiti komandu: 

```
docker run --name my-sqlserver-container -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=MyStrongPassword123' -p 1433:1433 -d mcr.microsoft.com/mssql/server:latest 
```

Par uputa oko konekcije (u SSMS-u): 

1. "sa" je default username (kako što piše u komandi iznad)
2. Ako ne može localhost, ukucati localhost, [ broj porta ]
3. Promijeniti šifru po svojim potrebama, ne mora striktno biti ova. 

Da se promijeni ime container-a koristiti komandu 

```
docker rename <staro ime> <novo ime>
```
  
  <h3>Pokretanje MySQL docker container-a </h3>
  
  ```
  docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=admin123! -d mysql
  ```
  
  Za spajanje koristiti MySQL Workbench te unijeti odgovarajuće podatke (sličan princip kao iznad, samo drugi DBMS).
  
  
  <h3>Pokretanje postgres docker container-a </h3>
  
  ```
  docker run --name postgres -p 5432:5432 -e POSTGRES_PASSWORD=admin123! -d postgres
  ```
  
  Za spajanje koristiti pgAdmin te unijeti odgovarajuće podatke (sličan princip kao iznad, samo drugi DBMS).
  
  <hr>
  Kao što se da vidjeti, princip je sličan za pokretanje svakog od kontejnera za svaku od baza podataka. Mijenjaju se samo portovi.
  
  Ostala procedura i detaljnija objašnjenja su unutar "dokumentacija.docx" fajla :)
<br>

Docker-compose se pokreće komandom :

``` 
docker-compose up
```
