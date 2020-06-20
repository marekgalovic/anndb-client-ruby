# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: search.proto for package 'anndb_pb'

require 'grpc'
require 'search_pb'

module AnndbPb
  module Search
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'anndb_pb.Search'

      rpc :Search, SearchRequest, stream(SearchResultItem)
      rpc :SearchPartitions, SearchPartitionsRequest, stream(SearchResultItem)
    end

    Stub = Service.rpc_stub_class
  end
end