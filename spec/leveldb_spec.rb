require 'helper'
require 'adapter/leveldb'

describe 'LevelDB Adapter' do
  before do
    @client = LevelDB::DB.new('/tmp/leveldb-test')
    @adapter = Adapter[:leveldb].new(@client)
    @adapter.clear
  end

  let(:adapter) { @adapter }
  let(:client)  { @client }

  it_should_behave_like 'a marshaled adapter'
end
