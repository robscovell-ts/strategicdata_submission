FROM perl:5.34

ENV DICTIONARY_FILE=/data/words

COPY . .
WORKDIR .

RUN [ "cpan", "Test::More"]
RUN [ "cpan", "JSON"]
RUN [ "cpan", "Dancer2"]
RUN [ "prove", "-l" ]

CMD [ "perl", "-I", "./submission.pl" ]
