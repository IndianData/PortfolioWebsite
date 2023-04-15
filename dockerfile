#Creating a Jekyll container from Ruby Alpine image
#At minimum use ruby 2.5 or later
FROM ruby:2.7-alpine3.15

#Add Jekyll Dependencies
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

#Update the Ruby bundler
RUN gem update bundler && gem install bundler jekyll
