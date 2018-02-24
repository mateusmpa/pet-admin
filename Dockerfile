FROM ruby:2.3-slim
# Install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev imagemagick libmagickwand-dev
# Set path
ENV INSTALL_PATH /pet-admin
# Create directory
RUN mkdir -p $INSTALL_PATH
# Set path with main directory
WORKDIR $INSTALL_PATH
# Copy Gemfile inside container
COPY Gemfile ./
# Set path for the Gems
ENV BUNDLE_PATH /box
# Copy code inside container
COPY . .
