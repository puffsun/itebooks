require_relative "./itebooks/version"
require 'httparty'
require 'json'
require 'ap'

module Itebooks
  ERROR_KEYWORDS = "Please enter one or more search keywords, separated by space."
  ERROR_REQ = "Error searching for keywords."

  class Base
    include HTTParty
    base_uri 'http://it-ebooks-api.info/v1'

    def self.request(path = '')
      get(path)
    end

    def self.search(term, path = "/search")
      return Itebooks::ERROR_KEYWORDS if term.nil? or term.empty?
      request("#{path}/#{term}")
    end

    def self.search_and_print(term, path = "/search")
      result = search(term, path)
      if (result.code != 200)
        Itebooks::ERROR_REQ
      else
        ap JSON.parse(result.body)
      end
    end
  end
end
