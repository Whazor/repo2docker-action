FROM docker:19.03.2-dind

RUN apk add python3

RUN python3 -m pip install jupyter-repo2docker

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN addgroup -S nbbuildergroup && adduser -S nbbuilder -G nbbuildergroup
RUN mkdir /notebook
WORKDIR /notebook
RUN chown nbbuilder:nbbuildergroup -R /notebook

USER nbbuilder


CMD [ "/entrypoint.sh" ]