FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=admin123!

COPY setup.sql /var/opt/mssql/init/setup.sql

EXPOSE 1433

CMD [ "/opt/mssql/bin/sqlservr" ]
