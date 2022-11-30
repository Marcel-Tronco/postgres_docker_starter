COPY users(name, email)
-- while building the pg docker immge csv's from scripts/csv folder will be copied to 'docker-entry...' so adapt file names
FROM '/docker-entrypoint-initdb.d/users.csv'
DELIMITER ','
CSV HEADER;