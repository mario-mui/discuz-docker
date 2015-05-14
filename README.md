### Welcome to discuz-docker ###

#### chmod ####
```
chmod 777 data/ -R

```

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
add '127.0.0.1 discuz.trantect.com' to /etc/hosts file
```

##### view discuz #####
```
open borwser
enter discuz.trantect.com
