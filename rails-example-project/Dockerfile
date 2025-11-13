# instead of starting with ubuntu, use a pre-built image
FROM ruby:3.1.0
WORKDIR /usr/src/app
RUN gem install bundler:2.3.3
# This willl cache the dependency layers if we ever need to make changes to the source code. 
COPY Gemfile* ./
RUN bundle install
COPY . .
RUN rails db:migrate RAILS_ENV=production
RUN rake assets:precompile
CMD ["rails", "s", "-e", "production"]

# docker build . -t rails-project && docker run -p 3000:3000 rails-project