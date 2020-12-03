# Database Lab

## Run database

`docker-compose docker-compose.dev.yml up -d`

## Initial database
Copy the code in `initial.sql` to query console and run it

## Close database
`docker-compose -f docker-compose.dev.yml down`

## Create DB2 Database
`docker run -itd --name mydb2inst1 --privileged=true -p 50000:50000 -e LICENSE=accept -e DB2INST1_PASSWORD=123456 -e DBNAME=testdb -v db2:/database ibmcom/db2`
