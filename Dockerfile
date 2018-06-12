FROM java:jre-alpine

LABEL maintainer "moajo <mimirosiasd@gmail.com>"

ARG URL="http://nlp.stanford.edu/software/"
ARG FILE="stanford-corenlp-full-2018-01-31"

RUN apk add --update --no-cache \
	unzip \
	wget

RUN wget $URL${FILE}.zip
RUN unzip ${FILE}.zip && rm ${FILE}.zip
WORKDIR $FILE

ENV PORT 9000
EXPOSE $PORT

CMD java -cp "*" -mx8g edu.stanford.nlp.pipeline.StanfordCoreNLPServer
