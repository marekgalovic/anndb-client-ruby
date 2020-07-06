# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: dataset.proto for package 'anndb_pb'

require 'grpc'
require 'dataset_pb'

module AnndbPb
  module DatasetManager
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'anndb_pb.DatasetManager'

      rpc :List, ListDatasetsRequest, stream(Dataset)
      rpc :Get, GetDatasetRequest, Dataset
      rpc :Create, Dataset, Dataset
      rpc :Delete, UUIDRequest, EmptyMessage
    end

    Stub = Service.rpc_stub_class
  end
  module DataManager
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'anndb_pb.DataManager'

      rpc :Insert, InsertRequest, EmptyMessage
      rpc :Update, UpdateRequest, EmptyMessage
      rpc :Remove, RemoveRequest, EmptyMessage
      rpc :BatchInsert, BatchRequest, BatchResponse
      rpc :BatchUpdate, BatchRequest, BatchResponse
      rpc :BatchRemove, BatchRequest, BatchResponse
      rpc :PartitionBatchInsert, PartitionBatchRequest, BatchResponse
      rpc :PartitionBatchUpdate, PartitionBatchRequest, BatchResponse
      rpc :PartitionBatchRemove, PartitionBatchRequest, BatchResponse
      rpc :PartitionLen, PartitionLenRequest, PartitionLenResponse
    end

    Stub = Service.rpc_stub_class
  end
end
