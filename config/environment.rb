ENV["RACK_ENV"] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_relative "../app/models/review.rb"
require_relative "../app/models/user.rb"
require_relative "../app/models/product.rb"
require_relative "../config/environment.rb"