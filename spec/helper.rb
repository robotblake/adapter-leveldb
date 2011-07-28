$:.unshift File.expand_path('../../lib', __FILE__)

require 'rubygems'
require 'bundler'

Bundler.require(:default, :development)

require 'adapter/spec/an_adapter'
require 'adapter/spec/marshal_adapter'
require 'adapter/spec/json_adapter'
require 'adapter/spec/types'
