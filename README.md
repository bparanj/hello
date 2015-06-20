## Docker

### Setup app

<pre>
$ docker build -t bparanj/hello .
</pre>

### Start app

<pre>
$ docker run --rm -p 3000:3000 bparanj/hello
</pre>

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

