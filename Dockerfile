FROM ruby:2.2.1
MAINTAINER Tung Nguyen <tnguyen@bleacherreport.com>

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install

# Upload source
COPY . $APP_HOME

# Start server
COPY config/container/start.sh /usr/bin/start
RUN chmod +x /usr/bin/start
EXPOSE 3000
CMD ["/usr/bin/start"]
