require_relative '../../test_helper.rb'

describe Itebooks::Base do
  subject {Itebooks::Base}

  describe "querying from www.it-ebooks.info website" do

    it "must have the it-ebooks.info api base url" do
      subject.base_uri.must_equal("http://it-ebooks-api.info/v1")
      subject.request.wont_be_empty
      subject.request.must_include("IT-eBooks")
    end

    it "must return error message for empty search keywords" do
      errorMsg = "Please enter one or more search keywords, separated by space."
      subject.search(nil).must_equal(errorMsg)
      subject.search("").must_equal(errorMsg)
    end

    it "must return books info in json string with books that exist" do
      subject.search("mysql").wont_be_empty
      subject.search("mysql").code.must_equal(200)
      subject.search("mysql").body.downcase.must_include("mysql")
    end

    it "must return error message for failed request" do
      # Search without network connection
    end

    it "must return parsed result for successful search" do
      result = subject.search_and_parse("mysql")
      result.must_be_instance_of(Hash)
      result['Books'].must_be_instance_of(Array)
    end
  end
end
