# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dataset.proto

require 'google/protobuf'

require 'core_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("dataset.proto", :syntax => :proto3) do
    add_message "anndb_pb.ListDatasetsRequest" do
      optional :with_size, :bool, 1
    end
    add_message "anndb_pb.GetDatasetRequest" do
      optional :dataset_id, :bytes, 1
      optional :with_size, :bool, 2
    end
    add_message "anndb_pb.InsertRequest" do
      optional :dataset_id, :bytes, 1
      optional :id, :bytes, 2
      repeated :value, :float, 3
      map :metadata, :string, :string, 4
    end
    add_message "anndb_pb.UpdateRequest" do
      optional :dataset_id, :bytes, 1
      optional :id, :bytes, 2
      repeated :value, :float, 3
      map :metadata, :string, :string, 4
    end
    add_message "anndb_pb.RemoveRequest" do
      optional :dataset_id, :bytes, 1
      optional :id, :bytes, 2
    end
    add_message "anndb_pb.BatchItem" do
      optional :id, :bytes, 1
      repeated :value, :float, 2
      map :metadata, :string, :string, 3
      optional :level, :int32, 4
    end
    add_message "anndb_pb.BatchRequest" do
      optional :dataset_id, :bytes, 1
      repeated :items, :message, 2, "anndb_pb.BatchItem"
    end
    add_message "anndb_pb.PartitionBatchRequest" do
      optional :dataset_id, :bytes, 1
      optional :partition_id, :bytes, 2
      repeated :items, :message, 3, "anndb_pb.BatchItem"
    end
    add_message "anndb_pb.BatchResponse" do
      map :errors, :string, :string, 1
    end
    add_message "anndb_pb.PartitionLenRequest" do
      optional :dataset_id, :bytes, 1
      optional :partition_id, :bytes, 2
    end
    add_message "anndb_pb.PartitionLenResponse" do
      optional :len, :uint64, 1
    end
    add_message "anndb_pb.Dataset" do
      optional :id, :bytes, 1
      optional :dimension, :uint32, 2
      optional :space, :enum, 3, "anndb_pb.Space"
      optional :partition_count, :uint32, 4
      optional :replication_factor, :uint32, 5
      repeated :partitions, :message, 6, "anndb_pb.Partition"
      optional :size, :uint64, 7
    end
    add_message "anndb_pb.Partition" do
      optional :id, :bytes, 1
      repeated :node_ids, :uint64, 2
    end
    add_message "anndb_pb.DatasetManagerChange" do
      optional :type, :enum, 1, "anndb_pb.DatasetManagerChangeType"
      optional :notification_id, :bytes, 2
      optional :data, :bytes, 3
    end
    add_message "anndb_pb.DatasetPartitionNodesChange" do
      optional :type, :enum, 1, "anndb_pb.DatasetPartitionNodesChangeType"
      optional :dataset_id, :bytes, 2
      optional :partition_id, :bytes, 3
      optional :node_id, :uint64, 4
    end
    add_message "anndb_pb.PartitionChange" do
      optional :type, :enum, 1, "anndb_pb.PartitionChangeType"
      optional :notification_id, :bytes, 2
      optional :id, :bytes, 3
      repeated :value, :float, 4
      map :metadata, :string, :string, 5
      optional :level, :int32, 6
      repeated :batch_items, :message, 7, "anndb_pb.BatchItem"
    end
    add_message "anndb_pb.DatasetManagerSnapshot" do
      repeated :datasets, :message, 1, "anndb_pb.Dataset"
    end
    add_enum "anndb_pb.Space" do
      value :Euclidean, 0
      value :Manhattan, 1
      value :Cosine, 2
    end
    add_enum "anndb_pb.DatasetManagerChangeType" do
      value :DatasetManagerCreateDataset, 0
      value :DatasetManagerDeleteDataset, 1
      value :DatasetManagerUpdatePartitionNodes, 2
    end
    add_enum "anndb_pb.DatasetPartitionNodesChangeType" do
      value :DatasetPartitionNodesChangeAddNode, 0
      value :DatasetPartitionNodesChangeRemoveNode, 1
    end
    add_enum "anndb_pb.PartitionChangeType" do
      value :PartitionChangeInsertValue, 0
      value :PartitionChangeUpdateValue, 1
      value :PartitionChangeDeleteValue, 2
      value :PartitionChangeBatchInsertValue, 3
      value :PartitionChangeBatchUpdateValue, 4
      value :PartitionChangeBatchDeleteValue, 5
    end
  end
end

module AnndbPb
  ListDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.ListDatasetsRequest").msgclass
  GetDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.GetDatasetRequest").msgclass
  InsertRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.InsertRequest").msgclass
  UpdateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.UpdateRequest").msgclass
  RemoveRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.RemoveRequest").msgclass
  BatchItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.BatchItem").msgclass
  BatchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.BatchRequest").msgclass
  PartitionBatchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.PartitionBatchRequest").msgclass
  BatchResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.BatchResponse").msgclass
  PartitionLenRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.PartitionLenRequest").msgclass
  PartitionLenResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.PartitionLenResponse").msgclass
  Dataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.Dataset").msgclass
  Partition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.Partition").msgclass
  DatasetManagerChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.DatasetManagerChange").msgclass
  DatasetPartitionNodesChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.DatasetPartitionNodesChange").msgclass
  PartitionChange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.PartitionChange").msgclass
  DatasetManagerSnapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.DatasetManagerSnapshot").msgclass
  Space = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.Space").enummodule
  DatasetManagerChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.DatasetManagerChangeType").enummodule
  DatasetPartitionNodesChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.DatasetPartitionNodesChangeType").enummodule
  PartitionChangeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.PartitionChangeType").enummodule
end
