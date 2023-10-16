docker build -t namespace/laravel-docker:latest .
docker pull namespcace/laravel-docker:latest

docker run -d -p 8000:8000 --name=myapp laravel-docker