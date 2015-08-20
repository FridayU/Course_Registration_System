require 'sinatra/base'
require 'data_mapper'

class Server < Sinatra::Base


get '/' do
  
erb :index
end

post '/register' do
  Students.create(:fName => params[:fName], 
    :lName => params[:lName], :sex => params[:sex], :address => params[:address], 
    :date_of_birth => params[:date_of_birth], :matric_number => params[:matric_number],
    :course => params[:course], :department => params[:department], :level => params[:level],
    :password => params[:password], :created_at => Time.now, :updated_at => Time.now)
  
  redirect '/dashboard'
end


get '/register' do
  
 erb :register

end




get '/dashboard' do
  
 erb :dashboard

end
get '/courses' do
  
 erb :courses

end


end

