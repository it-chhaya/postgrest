FROM postgres:16
RUN apt-get update && apt-get install -y make git postgresql-server-dev-16 postgresql-16-pgtap
RUN mkdir "/pgjwt"
WORKDIR "/pgjwt"
COPY . .
RUN make && make install

