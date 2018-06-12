require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @single_service = Postcodesio.new.single_postcode_service
      @random_postcode = GeneratorService.new.generate_postcode
      @single_service.get_single_postcode(@random_postcode) #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@single_service.get_response_code).to eq 200
    end

    it "should have a results hash" do
      expect(@single_service.get_result_code).to be_kind_of(Hash)
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@single_service.postcode_length_check).to be_between(5, 7)

    end

    it "should return an quality key integer between 1-9" do
      expect(@single_service.check_quality).to be_between(1,9)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@single_service.check_eastings_class).to be_kind_of(Integer)
    end

    it "should return an ordnance survey northings value as integer" do
      expect(@single_service.check_northings_class).to be_kind_of(Integer)
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(@single_service.check_country).to eq("England") | eq("Wales") | eq("Scotland") | eq("Northern Ireland")
    end

    it "should return a string value for NHS authority " do
      expect(@single_service.nhs_authority_float).to be_kind_of(String)
    end

    it "should return a longitude float value" do
      expect(@single_service.longitude_float_check).to be_kind_of(Float)
    end

    it "should return a latitude float value" do
      expect(@single_service.latitude_float_check).to be_kind_of(Float)
    end

    it "should return a parliamentary constituency string" do
      expect(@single_service.parliamentary_constituency_check).to be_kind_of(String)
    end

    it "should return a european_electoral_region string" do
      expect(@single_service.electoral_region_string).to be_kind_of(String)
    end

    it "should return a primary_care_trust string" do
      expect(@single_service.primary_care_trust_string).to be_kind_of(String)
    end

    it "should return a region string" do
      expect(@single_service.region_string_check).to be_kind_of(String)
    end

    it "should return a parish string" do
      expect(@single_service.parish_string_check).to be_kind_of(String)
    end

    it "should return a lsoa string" do
      expect(@postcodesio.lsoa_string_check("SE42BE")).to be_kind_of(String)
    end

    it "should return a msoa string" do
      expect(@postcodesio.msoa_string_check("SE42BE")).to be_kind_of(String)
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@postcodesio.admin_district_string_check("SE42BE")).to be_kind_of(String)
    end

    it "should return a incode string of three characters" do
      expect(@postcodesio.incode_string_class_check("SE42BE")).to be_kind_of(String)
    end


    it "should return a incode string of 3-4 characters" do
      expect(@postcodesio.incode_string_length_check("AL109BT")).to be_between(3, 4)
    end
  end

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes(['SW96LL','SE42BE']) #Add in array of postcodes
    end

    it "should respond with a status message of 200" do
    end

    it "should return the first query as the first postcode in the response" do
    end

    it "should return the second query as the first postcode in the response" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a incode string of 3-4 characters" do
    end

    it "should have a results hash" do
    end

    it "should return a postcode between 5-7 in length"  do
    end

    it "should return an quality key integer between 1-9" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return an ordnance survey eastings value as integer" do
    end

    it "should return a country which is one of the four constituent countries of the UK" do
    end

    it "should return a string value for NHS authority " do
    end

    it "should return a longitude float value" do
    end

    it "should return a latitude float value" do
    end

    it "should return a parliamentary constituency string" do
    end

    it "should return a european_electoral_region string" do
    end

    it "should return a primary_care_trust string" do
    end

    it "should return a region string" do
    end

    it "should return a parish string" do
    end

    it "should return a lsoa string" do
    end

    it "should return a msoa string" do
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
    end

    it "should return a incode string of three characters" do
    end

    it "should return a msoa string" do
    end

    it "should return a incode string of 3-4 characters" do
    end

  end


end
