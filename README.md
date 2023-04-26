<h1 align = "center" >Projekat iz predmeta "Operativni sistemi"</h1>

<h3 align = "center">Tema: Multi-database server uz pomoć Dockera. </h3>

<i>Profesor</i>: prof. dr. Denis Čeke

<i>Asistent</i>: Adin Jahić


Da se pokrene obična MySQL baza podataka koristiti komandu: 

```
docker run --name my-sqlserver-container -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=MyStrongPassword123' -p 1433:1433 -d mcr.microsoft.com/mssql/server:latest 
```

Nakon toga, kada je container napravljen koristiti pristupne podatke iz ```dockerfile``` i spojiti se na bazu podataka. Koristiti SSMS.

Par uputa oko konekcije: 

1. "sa" je default username (kako što piše u komandi iznad)
2. Ako ne može localhost, ukucati localhost,<port>
3. Promijeniti šifru po svojim potrebama, ne mora striktno biti ova. 

Da se promijeni ime container-a koristiti komandu 

```
docker rename <staro ime> <novo ime>
```

