# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: search.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("search.proto", :syntax => :proto3) do
    add_message "anndb_pb.SearchRequest" do
      optional :dataset_id, :bytes, 1
      repeated :query, :float, 2
      optional :k, :uint32, 3
    end
    add_message "anndb_pb.SearchPartitionsRequest" do
      optional :dataset_id, :bytes, 1
      repeated :partition_ids, :bytes, 2
      repeated :query, :float, 3
      optional :k, :uint32, 4
    end
    add_message "anndb_pb.SearchResultItem" do
      optional :id, :bytes, 1
      map :metadata, :string, :string, 2
      optional :score, :float, 3
    end
  end
end

module AnndbPb
  SearchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.SearchRequest").msgclass
  SearchPartitionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.SearchPartitionsRequest").msgclass
  SearchResultItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.SearchResultItem").msgclass
end
