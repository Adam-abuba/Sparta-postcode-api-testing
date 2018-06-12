require 'httparty'
require 'json'

class MultiPostcodeService
  include HTTParty

  attr_accessor  :single_postcode_results

  base_uri 'https://api.postcodes.io'


  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end
end
