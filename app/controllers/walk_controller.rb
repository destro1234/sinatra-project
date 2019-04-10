class WalkController < ApplicationController

  get '/walks' do
    @walks = Walk.all
    erb :'/walks/index'
  end

end
