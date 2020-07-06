require 'anndb/util'
require 'dataset_pb'
require 'dataset_services_pb'

module Anndb
  class Dataset
    attr_reader :proto, :id

    def initialize(proto, server_addr)
      @proto = proto
      @id = Anndb::Util.ascii8bit_to_uuid(proto.id)
      @stub = AnndbPb::DataManager::Stub.new(server_addr, :this_channel_is_insecure)
    end

    def insert
    end

    def batch_insert
    end

    def remove
    end

    def batch_remove
    end

    def search
    end
  end
end