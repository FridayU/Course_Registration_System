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
  property :username, Text, :required => true
  property :course, Text, :required => true
  property :department, Text, :required => true
  property :level,Text, :required => true
  property :email, String, format: :email_address
  property :password, Text, :required => true
  property :complete, Boolean, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime
   
end



DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/portalpro.db") 

class Classi
  include DataMapper::Resource
  property :id, Serial
  property :coursecode, Text, :required => true
  property :coursetitle, Text, :required => true
  property :courseunit, Text, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime

 
end


DataMapper::setup(:default, "sqlite3://#{Dir.pwd}/portalpro.db") 

class Classii
  include DataMapper::Resource
  property :id, Serial
  property :coursecode, Text, :required => true
  property :coursetitle, Text, :required => true
  property :courseunit, Text, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime
  

end



class Classiii
  include DataMapper::Resource
  property :id, Serial
  property :coursecode, Text, :required => true
  property :coursetitle, Text, :required => true
  property :courseunit, Text, :required => true
  property :created_at, DateTime
  property :updated_at, DateTime   
end
 


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