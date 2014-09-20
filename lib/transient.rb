require 'drawer'
require 'faraday/http_cache'
require 'octokit'

module Transient
  def self.settings
    { default_cache_location: default_cache_location }
  end

  def self.default_cache_location
    cache = File.open('cache/default_cache', 'a+').path
    cache_location = File.expand_path(cache)
    cache_location
  end

  private_class_method :default_cache_location
end

require 'transient/activities'
require 'transient/collectors'
require 'transient/stores'
require 'transient/streams'
require 'transient/version'
