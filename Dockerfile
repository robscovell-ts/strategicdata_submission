FROM perl:5.34

ENV DICTIONARY_FILE=/data/words
ENV IS_DOCKER=1

COPY . .
WORKDIR .

RUN cpanm --installdeps .
RUN prove -l

CMD [ "perl", "./submission.pl" ]
