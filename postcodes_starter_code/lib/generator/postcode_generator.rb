require 'httparty'
require 'json'

class GeneratorService
  include HTTParty


  base_uri 'https://api.postcodes.io'

  def generate_postcode
    @random_postcode_data = JSON.parse(self.class.get("/random/postcodes").body)
    @random_postcode_data["result"]["postcode"].gsub!(' ','')
  end

end
