require 'anndb/dataset_manager'

module Anndb
	class Client
		def initialize(server_addr)
			@server_addr = server_addr
		end

    def datasets
      @datasets ||= DatasetManager.new(@server_addr)
    end
	end
end