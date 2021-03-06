# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: raft.proto

require 'google/protobuf'

require 'core_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("raft.proto", :syntax => :proto3) do
    add_message "anndb_pb.RaftMessage" do
      optional :group_id, :bytes, 1
      optional :message, :bytes, 2
    end
    add_message "anndb_pb.SharedGroupProposal" do
      optional :proxy_name, :string, 1
      optional :data, :bytes, 2
    end
    add_message "anndb_pb.SharedGroupSnapshot" do
      map :proxy_snapshots, :string, :bytes, 1
    end
  end
end

module AnndbPb
  RaftMessage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.RaftMessage").msgclass
  SharedGroupProposal = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.SharedGroupProposal").msgclass
  SharedGroupSnapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("anndb_pb.SharedGroupSnapshot").msgclass
end
