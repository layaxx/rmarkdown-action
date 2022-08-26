FROM r-base

RUN apt-get update && apt-get upgrade -y && apt-get install pandoc -y && apt-get clean

COPY ./setup.R /usr/local/src/r-scripts/
WORKDIR /usr/local/src/r-scripts
RUN Rscript setup.R

COPY . /usr/local/src/r-scripts
RUN chmod +x ./render.sh

ENTRYPOINT [ "./render.sh" ] 