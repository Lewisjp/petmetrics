# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Resolve error in route /cats "uninitialized constant Cat::PictureUploader"
# Root cause of error in app/models/cat
require 'carrierwave/orm/activerecord'