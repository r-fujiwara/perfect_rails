require 'sprockets'
require "coffee-script"
require "therubyracer"
require "sass"

map '/assets' do
  enviroment = Sprockets::Environment.new
  enviroment.append_path 'assets/javascripts'
  enviroment.append_path 'assets/stylesheets'
  run enviroment
end

map '/' do
  run Proc.new {|env| [200, {"Content-Type" => "text/html"}, ["Hello World"]]}
end
