require 'httparty'
require 'json'


class Postcodesio
  include HTTParty

  attr_accessor  :single_postcode_results

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)

  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status_message(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["status"]
  end

  def postcode_length_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["postcode"].length
  end
  def check_eastings_class(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["eastings"]
  end
  def check_northings_class(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["northings"]
  end

  def check_quality(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["quality"]
  end
  def check_country(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["country"]
  end

  def nhs_authority_float(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["nhs_ha"]
  end
  def longitude_float_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["longitude"]
  end
  def latitude_float_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["latitude"]
  end
  def parliamentary_constituency_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["parliamentary_constituency"]
  end
  def electoral_region_string(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["european_electoral_region"]
  end
  def primary_care_trust_string(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["primary_care_trust"]
  end
  def region_string_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["region"]
  end

  def parish_string_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["parish"]
  end
  def lsoa_string_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["lsoa"]
  end
  def msoa_string_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["msoa"]
  end
  def admin_district_string_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["admin_district"]
  end
  def incode_string_class_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["incode"]
  end
  def incode_string_length_check(postcode)
    @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    @single_postcode_results["result"]["incode"].length
  end
end

postcode = Postcodesio.new
puts postcode.nhs_authority_float("SW96LL")
