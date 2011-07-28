require 'adapter'
require 'leveldb'

module Adapter
  module LevelDB
    def read(key)
      decode client[key_for(key)]
    end

    def write(key, value)
      client[key_for(key)] = encode(value)
    end

    def delete(key)
      read(key).tap { client.delete(key_for(key)) }
    end

    def clear
      client.each { |key, value| client.delete(key) }
    end
  end
end

Adapter.define(:leveldb, Adapter::LevelDB)
