require 'sinatra'
set :bind, '0.0.0.0'
get'/' do
    send_file "public/learn_jquery.html"
end
