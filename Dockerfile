FROM ruby:alpine

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

RUN apk add gcc g++ make

WORKDIR /app
COPY Gemfile Gemfile.lock server.rb ./
RUN bundle install
RUN chmod +x server.rb 

CMD ["./server.rb"]
