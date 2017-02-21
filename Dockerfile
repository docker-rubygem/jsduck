FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=6.0.0beta

RUN gem install jsduck --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jsduck"]
CMD ["--help"]
