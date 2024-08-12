# Verwende das offizielle Node.js-Basisimage (kann auf nginx oder httpd geändert werden)
FROM node:alpine

# Erstelle ein Verzeichnis für die App
WORKDIR /usr/src/app

# Kopiere alle Dateien des aktuellen Verzeichnisses in das Arbeitsverzeichnis im Container
COPY . .

# Installiere Abhängigkeiten, falls nötig (dieser Schritt kann entfernt werden, wenn die Abhängigkeiten bereits installiert sind)
RUN npm install

# Baue die Anwendung (falls notwendig)
RUN npm run build

# Installiere http-server
RUN npm install -g http-server

# Exponiere den Port, auf dem der Server läuft
EXPOSE 80

# Starte die App auf Port 80
CMD ["http-server", "build", "-p", "80"]
