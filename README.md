# corenlp-docker
Dockerfile for Stanford CoreNLP Server
---------

This Dockerfile builds the [Stanford CoreNLP Server](http://stanfordnlp.github.io/CoreNLP/corenlp-server.html) and exposes
the endpoint on port 9000. Requests are made as covered in the documentation.

# usage 
## build 
```
docker build -t corenlp .
```
if you want to use other version of coreNLP:

```
docker build -t corenlp --build-arg FILE='stanford-corenlp-full-20XX-XX-XX' .
```

## run
```
docker run -p 9000:9000 --name corenlp --rm -it corenlp
```

## access
```
curl --data 'The quick brown fox jumped over the lazy dog.' 'http://localhost:9000/?properties={%22annotators%22%3A%22tokenize%2Cssplit%2Cpos%22%2C%22outputFormat%22%3A%22json%22}' -o -
```
