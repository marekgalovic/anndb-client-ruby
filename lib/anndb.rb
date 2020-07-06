require 'anndb/client'
require 'dataset_pb'

module Anndb
  class << self
    attr_accessor :configuration
    attr_accessor :client_instance
  end

  def self.configure
    self.configuration ||= Config.new
    yield configuration
  end

  def self.instance
    self.client_instance ||= Anndb::Client.new(self.configuration.nodes.sample)
  end

  class Config
    attr_accessor :nodes

    def initialize
      @nodes = []
    end
  end
end