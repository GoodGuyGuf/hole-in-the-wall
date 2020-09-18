class SessionsController < ApplicationController

    get "/login" do # sessions#new
        redirect_inside?
        erb :'/sessions/login'
    end

    post "/" do # sessions#create
        @user = User.find_by_username(params[:user][:username])

        if !@user.nil? && !!@user.authenticate(params[:user][:password]) 
            session[:user_id] = @user.id 
            redirect '/'
        else
            flash[:invalid]     = "Authentication Failed."
            flash[:credentials] = {username: params[:user][:username], password: params[:user][:password]}
            redirect '/login'
        end
    end

    get "/" do # root
        redirect_outside?
        @home_feed_reviews = Review.last(5).reverse 
        erb :'/sessions/root'
    end

    get "/logout" do # sessions#destroy
		session.clear
		redirect "/login"
    end

end