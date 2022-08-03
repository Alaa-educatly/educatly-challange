FROM ruby:3.0.0
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock


RUN gem install bundler
RUN bundle config set force_ruby_platform true
RUN bundle install

COPY . /app
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]