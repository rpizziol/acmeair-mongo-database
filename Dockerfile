FROM mongo:8.0.0-rc11-jammy

COPY dbdata /docker-entrypoint-initdb.d/

