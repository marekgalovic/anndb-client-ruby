# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: cluster.proto

require 'google/protobuf'

require 'core_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("cluster.proto", :syntax => :proto3) do
    add_message "anndb_pb.Node" do
      optional :id, :uint64, 1
      optional :address, :string, 2
    end
  end
end

module AnndbPb
  Node = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.Node").msgclass
end
