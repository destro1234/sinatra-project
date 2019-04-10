class OwnerController < ApplicationController

  get '/signup' do
    erb :'/owners/signup'
  end

  get '/login' do
    if logged_in?
      redirect '/walks'
    else
    erb :'/owners/login'
  end
  end

  post '/login' do
    @owner = Owner.new(:user_name => params[:username], :password_digest => params[:password])
    @owner.save

  end






end
