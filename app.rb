require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

	get '/' do
		erb :user_input
	end

	post '/piglatinize' do
		new_pig = PigLatinizer.new
		"#{new_pig.to_pig_latin(params["user_phrase"])}"
	end
end
