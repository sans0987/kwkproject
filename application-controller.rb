require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end
 
 get '/questions.erb' do
  erb :questions
 end
 
 get '/great.erb' do
  erb :great
 end
 
 get '/good.erb' do
  erb :good
 end
 
 get '/okay.erb' do
  erb :okay
end

get '/iffy.erb' do
 erb :iffy
end

get 'bad.erb' do
 erb :bad
end

get '/terrible.erb' do
 erb :terrible
end

get '/getHelp.erb' do
 erb :getHelp
end

get '/websites.erb' do
 erb :websites
end

 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total
   
 @health = mental_state(@total)
   if @health == "great"
     erb :great
   elsif @health == "good"
     erb :good
   elsif @health == "okay"
     erb :okay
   elsif @health == "iffy"
     erb :iffy
   elsif @health == "bad"
     erb :bad
   elsif @health == "terrible"
     erb :terrible
   end
    
  end
end