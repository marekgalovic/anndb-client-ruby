module Anndb
  class Util
    def self.uuid_string_to_bytes(uuid)
      [uuid].pack('H*')
    end

    def self.ascii8bit_to_uuid(ascii_str)
      ascii_str.unpack('H*')[0]
    end
  end
end