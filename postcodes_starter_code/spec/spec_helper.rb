require 'rspec'
require_relative '../lib/postcode'
require_relative '../lib/generator/postcode_generator.rb'


RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
