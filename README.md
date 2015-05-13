### Welcome to discuz-docker ###


#### project build####
```
docker build -t discuz .

```

##### run project #####

```
docker run -p 80:80 discuz
```
##### edit hosts file ####
```
sudo echo '127.0.0.1 discuz.trantect.com' >> /etc/hosts
```

##### view discuz #####
```
open borwser
enter discuz.trantect.com
