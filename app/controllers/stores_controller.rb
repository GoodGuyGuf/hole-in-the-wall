class StoresController < ApplicationController

    before { redirect_if_not_logged_in? }

    get ('/stores') { erb :'/stores/index' }

    get '/stores/:id' do
        @store = Store.find_by_id(params[:id])
        erb :'/stores/show'
    end

    get ('/stores/new') { erb :'/stores/new' }

    post '/stores' do
        @store = Store.create(
            :name => params[:name], 
            :address => params[:address], 
            :url => params[:url], 
            :description => params[:description],
            :image => params[:image],
            user_id: current_user.id
        )
    end

    get '/my-stores' do
        @my_stores = UserStore.all
        erb :'/stores/my_stores'
    end

    get'/my-stores/:id' do
        @user_store = UserStore.find_by_id(params[:id]) 
        @store = Store.find_by_id(@user_store.store_id)
        redirect "/stores/#{@store.id}"
    end

    post '/my-stores/:id' do 
        @store = Store.find_by_id(params[:id])
        @favorited_store = UserStore.create(:user_id => current_user.id, :store_id => @store.id)
        redirect to "/my-stores"
    end

    delete '/my-stores/:id' do
        @user_store = UserStore.find_by_id(params[:id]) 
        @user_store.delete
        redirect "/my-stores" 
    end

end