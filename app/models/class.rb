require 'sinatra'
require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'



DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/portalpro.db")



class Classes
  include DataMapper::Resource
  property :id, Serial
  property :level1, Text, :required => true
  property :level2, Text, :required => true
  property :level3, Text, :required => true
  property :level4, Text, :required => true
  property :complete, Boolean, :required => true, :default => false
  property :created_at, DateTime
  property :updated_at, DateTime
end






DataMapper.finalize.auto_upgrade!