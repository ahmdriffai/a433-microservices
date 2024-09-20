# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat
docker build -t item-app .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app ahmdrifai/item-app:v1

# Login ke docker hub
export PASSWORD_DOCKER_HUB=rahasia123
echo $PASSWORD_DOCKER_HUB | docker login -u ahmdrifai --password-stdin

# Mengunggah image ke Docker Hub 
docker push ahmdrifai/item-app:v1

