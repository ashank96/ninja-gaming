SHELL := /bin/bash
.SILENT:

build_proto:
	# build proto
	cd ./src/lib/proto ;\
	mkdir -p proto_build ;\
	mkdir -p ./proto_build/google/protobuf ;\
	mkdir -p ./proto_build/google/type ;\
	allDirs=`find proto_files -type d -maxdepth 1` ;\
	protoc --proto_path=./proto_files/common/google/protobuf --js_out=import_style=commonjs:./proto_build/google/protobuf --grpc-web_out=import_style=commonjs,mode=grpcwebtext:./proto_build/google/protobuf ./proto_files/common/google/protobuf/*.proto ;\
	protoc --proto_path=./proto_files/common/google/type --js_out=import_style=commonjs:./proto_build/google/type  --grpc-web_out=import_style=commonjs,mode=grpcwebtext:./proto_build/google/type ./proto_files/common/google/type/*.proto ;\
	for dir in $$allDirs ; do \
	  	echo $$dir ;\
		protoc --proto_path=$$dir --proto_path=./proto_files/common --proto_path=./proto_files/common/google/protobuf --proto_path=./proto_files/common/google/type --js_out=import_style=commonjs:./proto_build --grpc-web_out=import_style=commonjs,mode=grpcwebtext:./proto_build $$dir/*.proto ;\
	done
