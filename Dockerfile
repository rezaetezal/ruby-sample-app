FROM ruby:3.2.2-alpine

WORKDIR /app
COPY . /app

RUN apk update && apk add --no-cache build-base
RUN bundle install

EXPOSE 8080

CMD ["./run.sh"]
