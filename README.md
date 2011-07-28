adapter-leveldb
===============

LevelDB adapter for use with the adapter or toystore gem.

Usage
-----

    require 'adapter/leveldb'

    client  = LevelDB::DB.new('/tmp/leveldb-testing')
    adapter = Adapter[:leveldb].new(client)
    adapter.clear

    adapter.write('foo', 'bar')
    puts 'Should be bar: ' + adapter.read('foo').inspect

    adapter.delete('foo')
    puts 'Should be nil: ' + adapter.read('foo').inspect

    adapter.write('foo', 'bar')
    adapter.clear
    puts 'Should be nil: ' + adapter.read('foo').inspect

    puts 'Should be bar: ' + adapter.fetch('foo', 'bar')
