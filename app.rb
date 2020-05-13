require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        # binding.pry
        @puppy = Puppy.new(name: params[:name],breed: params[:breed], age: params[:age])
        erb :display_puppy
    end 

end
