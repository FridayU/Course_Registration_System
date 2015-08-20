require 'sinatra'
require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'



DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/portalpro.db")

class Date_Schedule
  include DataMapper::Resource
  property :id, Serial
  property :morning, Text, :required => true
  property :afternoon, Text, :required => true
  property :evening, Text, :required => true
  property :session, Text, :required => true
  property :amount, Text, :required => true
  property :complete, Boolean, :required => true, :default => false
  property :created_at, DateTime
  property :updated_at, DateTime
end


DataMapper.finalize.auto_upgrade!









DataMapper.finalize.auto_upgrade!