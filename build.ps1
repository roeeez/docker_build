git clone https://github.com/roeeez/iis-docker.git
Set-Location .\iis-docker\windowsservercore

docker image build . -t windowscore-iis-mssqlexpress

#docker run -d --name container_name image_name
docker run -d -p 1433:1433 -e sa_password=Qwe12345 -e ACCEPT_EULA=Y --name application_server windowscore-iis-mssqlexpress