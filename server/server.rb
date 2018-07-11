 require 'sinatra'
 set :bind, '0.0.0.0'
get '/' do
"Hello world"
end
get "/sinatra" do
"Hello Sinatra"
end
            