require_relative '../../test_helper.rb'

describe Itebooks::Base do
  subject {Itebooks::Base}

  describe "querying from www.it-ebooks.info website" do
    it "must have a source" do
      subject.must_respond_to(:source)
    end

    it "must have the it-ebooks.info api base url as a source" do
      subject.source.wont_be_empty
      subject.source.must_be_instance_of(String)
    end
  end
end
