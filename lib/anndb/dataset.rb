require 'anndb/util'
require 'dataset_pb'
require 'dataset_services_pb'
require 'search_pb'
require 'search_services_pb'

module Anndb
  class Dataset
    attr_reader :proto, :id

    def initialize(proto, server_addr)
      @proto = proto
      @id = Anndb::Util.ascii8bit_to_uuid(proto.id)
      @data_manager_stub = AnndbPb::DataManager::Stub.new(server_addr, :this_channel_is_insecure)
      @search_stub = AnndbPb::Search::Stub.new(server_addr, :this_channel_is_insecure)
    end

    def insert(id, value, metadata: {})
      @data_manager_stub.insert(AnndbPb::InsertRequest.new(
        dataset_id: proto.id,
        id: Anndb::Util.uuid_string_to_bytes(id),
        value: value,
        metadata: metadata
      ))
    end

    def batch_insert(items)
      resp = @data_manager_stub.batch_insert(AnndbPb::BatchRequest.new(
        dataset_id: proto.id,
        items: items.map { |item|
          AnndbPb::BatchItem.new(
            id: Anndb::Util.uuid_string_to_bytes(item[:id]),
            value: item[:value],
            metadata: item.fetch(:metadata, {})
          )
        }
      ))
      resp.errors
    end

    def remove(id)
      @data_manager_stub.remove(AnndbPb::RemoveRequest.new(
        dataset_id: proto.id,
        id: Anndb::Util.uuid_string_to_bytes(id),
      ))
    end

    def batch_remove(ids)
      resp = @data_manager_stub.batch_remove(AnndbPb::BatchRequest.new(
        dataset_id: proto.id,
        items: ids.map { |id|
          AnndbPb::BatchItem.new(id: Anndb::Util.uuid_string_to_bytes(id))
        }
      ))
      resp.errors
    end

    def search(query, k: 10)
      @search_stub.search(AnndbPb::SearchRequest.new(
        dataset_id: proto.id,
        query: query,
        k: k.to_i
      )).map { |item| 
        {
          id: Anndb::Util.ascii8bit_to_uuid(item.id),
          metadata: item.metadata,
          score: item.score
        }
      }
    end
  end
end