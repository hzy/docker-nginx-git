FROM kyma/docker-nginx

RUN apt-get update && apt-get install git -y

COPY run.sh /usr/local/bin
RUN chmod +x /usr/local/bin

CMD /bin/bash run.sh
ENV GIT_URL ""
ENV GIT_BRANCH ""
