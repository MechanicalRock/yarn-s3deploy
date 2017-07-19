# yarn-s3deploy
Docker image for SPA web build

#### To run unit test 
You can use [docker-serverspec](https://github.com/nanliu/docker-serverspec) to run the [serverspec](http://serverspec.org/) tests.
```shell
$ docker pull nanliu/serverspec:alpine
$ docker run  -v /var/run/docker.sock:/var/run/docker.sock  \
            -v "$(pwd)":/serverspec  \
            -it nanliu/serverspec:alpine \
            /bin/sh -c "cd /serverspec && rspec spec/yarnS3deploy_spec.rb"
```