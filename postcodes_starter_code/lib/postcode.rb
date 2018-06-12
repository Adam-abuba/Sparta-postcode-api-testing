require_relative 'services/single_postcode_service'
require_relative 'services/multi_postcode_service'

class Postcodesio

  def single_postcode_service
    SinglePostcodeService.new

  end

  def multiple_postcode_service
    MultiPostcodeService.new
  end
end



#   def parliamentary_constituency_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["parliamentary_constituency"]
#   end
#   def electoral_region_string(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["european_electoral_region"]
#   end
#   def primary_care_trust_string(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["primary_care_trust"]
#   end
#   def region_string_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["region"]
#   end
#
#   def parish_string_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["parish"]
#   end
#   def lsoa_string_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["lsoa"]
#   end
#   def msoa_string_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["msoa"]
#   end
#   def admin_district_string_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["admin_district"]
#   end
#   def incode_string_class_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["incode"]
#   end
#   def incode_string_length_check(postcode)
#     @single_postcode_results = JSON.parse(self.class.get("/postcodes/#{postcode}").body)
#     @single_postcode_results["result"]["incode"].length
#   end
# end
#
# postcode = Postcodesio.new
# puts postcode.nhs_authority_float("SW96LL")
