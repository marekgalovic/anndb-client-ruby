require 'cluster_pb'
require 'cluster_services_pb'
require 'core_pb'

module Anndb
  class NodesManager

    def initialize(server_addr)
      @server_addr = server_addr
      @stub = AnndbPb::NodesManager::Stub.new(server_addr, :this_channel_is_insecure)
    end

    def list
      raise NotImplementedError
    end

    def add
      raise NotImplementedError
    end

    def remove
      raise NotImplementedError
    end

    def load_info
      @stub.load_info(AnndbPb::EmptyMessage.new).to_h
    end

  end
end