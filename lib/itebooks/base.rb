require 'httparty'

module Itebooks
  class Base
    include HTTParty
    base_uri 'http://it-ebooks-api.info/v1/'

    def self.source
      @source ||= self.request
    end

    private

    def self.request
      get('')
    end
  end
end
