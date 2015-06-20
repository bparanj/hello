## Docker

### Setup app

<pre>
$ docker build -t bparanj/hello .
</pre>

### Start app

<pre>
$ docker run --rm -p 3000:3000 bparanj/hello
</pre>

### Mac OS Specific Step 

<pre>
$ boot2docker ip
</pre>

Use the ip from the above command to view the application: http://192.168.59.103:3000/

### Tests

<pre>
$ docker run --rm bparanj/hello rake
</pre>

## Bare metal

### Setup app

<pre>
$ bundle
</pre>

### Start app

<pre>
$ PORT=3000 ruby hello.rb
</pre>

### Tests

<pre>
$ ruby hello_test.rb
</pre>

### Rebuilding Images

For instance, I changed the Dockerfile to upgrade Ruby to 2.2.2. You can see all the available tags for Ruby here: https://github.com/docker-library/docs/tree/master/ruby

<pre>
$ docker build -t bparanj/hello .
</pre>

This will rebuild the image. When you run the app you will the Ruby version is 2.2.2. You can also check the list of images by doing 

<pre>
$ docker images
</pre>

You can verify the Ruby version by going into the container:

<pre>
$ docker run -i -t bparanj/hello /bin/bash
</pre>

<pre>
root@0503074f21c9:/app# ruby -v
</pre>

You will see:

<pre>
ruby 2.2.2p95 (2015-04-13 revision 50295) [x86_64-linux]
root@0503074f21c9:/app# 
</pre>

