compile_protos:
	grpc_tools_ruby_protoc -I ./proto --ruby_out=./lib --grpc_out=./lib ./proto/*.proto
	