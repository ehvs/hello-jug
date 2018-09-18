# hello-jug
Demo for JUG

## Pre-req
Make sure of having locally imported the image stream for [RedHatOpenJDK](https://access.redhat.com/containers/?tab=overview&platform=openshift#)

~~~
oc import-image my-redhat-openjdk-18/openjdk18-openshift --from=registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift --confirm
~~~

## Run the app and Build the image
To create the image and make it running into the container
~~~
[ehvs:~/git-workspace]$ oc new-app --name=hello-jug hello-jug
~~~

**Important**: 

1. Do not run inside the repo directory
~~~
/home/<user>/git-workspace/hello-jug
~~~

2. Application runs in port 8085

## Expose the route and test it
~~~
oc expose svc hello-jug
~~~
At the browser
~~~
<route>/rest/docker/hello
~~~
At CLI
~~~
$ curl -k hello-jug-<project>.127.0.0.1.nip.io/rest/docker/hello
~~~

## Check OpenJDK running
~~~
$ oc rsh <pod>

sh-4.2$ java -version
openjdk version "1.8.0_181"
OpenJDK Runtime Environment (build 1.8.0_181-b13)
OpenJDK 64-Bit Server VM (build 25.181-b13, mixed mode)
