#  stops the existing docker container
docker stop testapp
# remove the app container
docker rm testapp
# remove the app image
docker rmi testapp:v1.0
# build the app image
docker build . -t testapp:v1.0
# run the app on destination_port:docker_port(app)
docker run -d --name testapp -p 9111:3111 testapp:v1.0


