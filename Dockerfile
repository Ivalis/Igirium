FROM rocker/r-ver:3.5.2
LABEL maintainer="igor"
RUN export DEBIAN_FRONTEND=noninteractive; apt-get -y update \
  && apt-get install -y libcurl4-openssl-dev \
	libssl-dev
RUN ["install2.r", "assertthat", "backports", "base64enc", "bindr", "bindrcpp", "bit", "bit64", "blob", "broom", "chron", "crayon", "curl", "DBI", "digest", "dplyr", "generics", "glue", "gmailr", "googledrive", "gsubfn", "httr", "janeaustenr", "jsonlite", "lattice", "magrittr", "Matrix", "memoise", "mime", "nlme", "openssl", "pillar", "pkgconfig", "proto", "purrr", "R6", "Rcpp", "rjson", "rlang", "RSQLite", "rstudioapi", "SnowballC", "sqldf", "stringi", "stringr", "tibble", "tidyr", "tidyselect", "tidytext", "tokenizers", "twitteR"]
WORKDIR /payload/
COPY ["./", "./"]
CMD ["R", "--vanilla", "-f", "schedule.R"]
