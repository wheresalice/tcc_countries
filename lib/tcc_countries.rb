require "tcc_countries/version"
require 'yaml'

module TccCountries
  class Error < StandardError; end
  COUNTRIES = YAML.load_file(File.join(File.dirname(__FILE__),'..','data','tcc.yaml' )).freeze
  REGIONS = COUNTRIES.keys.sort.freeze
  def self.all
    COUNTRIES.values.flatten.sort
  end
end
