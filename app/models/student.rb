 require 'sinatra'
require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'



DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/portalpro.db")

class Students
  include DataMapper::Resource
  property :id, Serial
  property :fName, Text, :required => true
  property :lName, Text, :required => true
  property :sex, Text, :required => true
  property :address, Text, :required => true
  property :date_of_birth, Text, :required => true
  property :matric_number, Text, :required => true
  property :course, Text, :required => true
  property :department, Text, :required => true
  property :level,Text, :required => true
  property :email, String, format: :email_address
  property :password, Text, :required => true
  property :complete, Boolean, :required => true, :default => false
  property :created_at, DateTime
  property :updated_at, DateTime
end
 
DataMapper.finalize.auto_upgrade!