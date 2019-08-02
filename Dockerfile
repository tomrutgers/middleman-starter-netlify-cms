FROM ruby

ENV LANG C.UTF-8

RUN apt update \
  && apt upgrade -y \
  && apt install -y nodejs

WORKDIR /app
COPY Gemfile Gemfile.lock /app/
RUN bundle install

CMD ["middleman", "server"]
