FROM postgres:14.2

WORKDIR /usr/src/SQL_Files
ADD ../SQL_Files /docker-entrypoint-initdb.d/

RUN ["psql", "-f", "SQL Files/Countries.sql"]
RUN ["psql", "-f", "SQL Files/Addresses.sql"]
RUN ["psql", "-f", "SQL Files/Customers.sql"]
RUN ["psql", "-f", "SQL Files/Products.sql"]
RUN ["psql", "-f", "SQL Files/Orders.sql"]
RUN ["psql", "-f", "SQL Files/Warehouses.sql"]