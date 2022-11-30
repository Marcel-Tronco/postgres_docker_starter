COPY users(name, email)
FROM '/docker-entrypoint-initdb.d/users.csv'
DELIMITER ','
CSV HEADER;