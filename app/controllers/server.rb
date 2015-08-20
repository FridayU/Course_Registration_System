require 'sinatra/base'
require 'data_mapper'

class Server < Sinatra::Base


get '/' do
  
erb :index

end

post '/register' do
  Students.create(:fName => params[:fName], 
    :lName => params[:lName], :sex => params[:sex], :address => params[:address], 
    :date_of_birth => params[:date_of_birth], :username => params[:matric_number],
    :course => params[:course], :department => params[:department], :level => params[:level],
    :password => params[:password], :created_at => Time.now, :updated_at => Time.now)
  
  redirect '/dashboard'
end

get '/register' do
  
 erb :register

end

 
post '/classi' do
  Classi.create(:coursecode => params[:coursecode], 
    :coursetitle => params[:coursetitle], :courseunit=> params[:courseunit], 
    :created_at => Time.now, :updated_at => Time.now)
  
  redirect '/classi'
end

get '/classi' do
  
 erb :classi

end

post '/classii' do
  Classii.create(:coursecode => params[:coursecode], 
    :coursetitle => params[:coursetitle], :courseunit=> params[:courseunit],
    :created_at=> Time.now, :updated_at=> Time.now)
  
  redirect '/classii'
end

get '/classii' do
  
 erb :classii

end


post '/classiii' do
  Classiii.create(:coursecode => params[:coursecode], 
    :coursetitle=> params[:coursetitle], :courseunit=> params[:courseunit], 
    :created_at=> Time.now, :updated_at=> Time.now)

  redirect '/classiii'
end

get '/classiii' do
  
 erb :classiii

end




get '/' do
  @name = Students.fName + lName
 @title = "Welcome" + @name
 erb :dashboard

end

get '/dashboard' do
  
 erb :dashboard

end

 

get '/courses' do
  
 erb :courses

end





end

