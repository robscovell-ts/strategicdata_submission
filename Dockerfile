FROM perl:5.34

ENV DICTIONARY_FILE=/data/words

COPY . .
WORKDIR .

RUN cpanm --installdeps .
RUN prove -l

CMD [ "perl", "-I", "./submission.pl" ]
