require 'anndb/dataset'
require 'dataset_pb'
require 'dataset_services_pb'
require 'core_pb'

module Anndb
  class DatasetManager
    def initialize(server_addr)
      @server_addr = server_addr
      @stub = AnndbPb::DatasetManager::Stub.new(server_addr, :this_channel_is_insecure)
    end

    def list(with_size=false)
      @stub.list(AnndbPb::ListDatasetsRequest.new(with_size: with_size))
    end

    def get(id, with_size=false)
      @stub.get(AnndbPb::GetDatasetRequest.new(dataset_id: Anndb::Util.uuid_string_to_bytes(id), with_size: with_size))
    end

    def create(dim, space, partition_count=1, replication_factor=3)
      proto = @stub.create(AnndbPb::Dataset.new(
        dimension: dim.to_i,
        space: space_sym_to_space_pb(space),
        partition_count: partition_count.to_i,
        replication_factor: replication_factor.to_i
      ))

      Dataset.new(proto, @server_addr)
    end

    def delete(id)
      @stub.delete(AnndbPb::UUIDRequest.new(id: Anndb::Util.uuid_string_to_bytes(id)))
    end

    private

    def space_sym_to_space_pb(space)
      case space
      when :euclidean
        AnndbPb::Space::Euclidean
      when :manhattan
        AnndbPb::Space::Manhattan
      when :cosine
        AnndbPb::Space::Cosine
      else
        raise Exception.new 'Invalid space #{space}'
      end
    end
  end
end