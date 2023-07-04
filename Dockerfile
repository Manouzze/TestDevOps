# Utilisez une image de base légère de Golang
FROM golang:latest

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers du projet dans le conteneur
COPY . .

# Compilez l'application Go
RUN go build -o server .

# Exposez le port sur lequel votre serveur web écoute
EXPOSE 8080

# Démarrez le serveur web lorsque le conteneur démarre
CMD ["./server"]