FROM ruby:3.0.2

ENV APP_PATH /app
ENV BUNDLE_JOBS 2
ENV BUNDLE_PATH /bundle

RUN mkdir -p $APP_PATH

WORKDIR $APP_PATH

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 9292

CMD bundle exec puma

