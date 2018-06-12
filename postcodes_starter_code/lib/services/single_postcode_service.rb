require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty


  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_response_code
    @single_postcode_data["status"]
  end
  def get_result_code
    @single_postcode_data["result"]
  end
  def postcode_length_check
    @single_postcode_data["result"]["postcode"].gsub!(' ','').length
  end
  def check_quality
    @single_postcode_data["result"]["quality"]
  end
  def check_eastings_class
    @single_postcode_data["result"]["eastings"]
  end
  def check_northings_class
    @single_postcode_data["result"]["northings"]
  end
  def check_country
    @single_postcode_data["result"]["country"]
  end
  def nhs_authority_float
    @single_postcode_data["result"]["nhs_ha"]
  end
  def longitude_float_check
    @single_postcode_data["result"]["longitude"]
  end
  def latitude_float_check
    @single_postcode_data["result"]["latitude"]
  end
  def parliamentary_constituency_check
    @single_postcode_data["result"]["parliamentary_constituency"]
  end
  def electoral_region_string
     @single_postcode_data["result"]["european_electoral_region"]
  end
  def primary_care_trust_string
      @single_postcode_data["result"]["primary_care_trust"]
  end
  def region_string_check
      @single_postcode_data["result"]["region"]
  end
  def parish_string_check
    @single_postcode_data["result"]["parish"]
  end
end


call = SinglePostcodeService.new
call.get_single_postcode("B601JA")
call.get_response_code
