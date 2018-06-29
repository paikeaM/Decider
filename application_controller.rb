class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :main
  end
  
  get "/number" do
  	erb :number
  end
  
  post "/answer" do
    @params = params
   	erb :answer
  end

  
  post '/choices' do
    @num = params[:num].to_i
    erb :choices
  end
  
  get "/about" do
    erb :about
  end
end
