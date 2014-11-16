# coding: utf-8
require "ipcountry/version"
require 'net/http'
require 'uri'
require 'json'

module Ipcountry
  class Info
    attr_accessor :result

    def initialize(ip)
      res =  connect(ip)
      if res.code == '200'
        @result = JSON.parse(res.body)
      else
        puts "Ipcountry failed to initialize!! #{res.code} #{res.message}"
      end
    end

    def status
      @result['status']
    end

    def message
      @result['message']
    end

    def country
      @result['country']
    end

    def countrycode
      @result['countryCode']
    end

    def isp
      @result['isp']
    end

    def organization
      @result['org']
    end

    def query
      @result['query']
    end

    private

    def connect(ip)
      uri = URI.parse('http://ip-api.com/json/' + ip.to_s)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true if uri.scheme == 'https'
      res = http.start do |h|
        h.get(uri.request_uri)
      end
      res
    end
  end
end
