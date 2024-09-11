FROM jekyll/jekyll:latest
WORKDIR /srv/jekyll
COPY . .
RUN bundle install
CMD ["jekyll", "serve", "--force_polling", "-H", "0.0.0.0"]
