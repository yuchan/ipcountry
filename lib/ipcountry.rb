# coding: utf-8
require "ipcountry/version"
require 'net/http'
require 'uri'
require 'json'

module Ipcountry
  # Your code goes here...
  class Info
    attr_accessor :result

    def initialize(ip)
      uri = URI.parse('http://ip-api.com/json/' + ip.to_s)
      https = Net::HTTP.new(uri.host, uri.port)
      res = https.start {
        https.get(uri.request_uri)
      }

      if res.code == '200'
        @result = JSON.parse(res.body)
      else
        puts "Ipcountry failed to initialize!! #{res.code} #{res.message}"
      end
    end

    def country
      @result["country"]
    end

    def countryCode
      @result["countryCode"]
    end

    def isp
      @result["isp"]
    end

    def organization
      @result["org"]
    end
  end
end
