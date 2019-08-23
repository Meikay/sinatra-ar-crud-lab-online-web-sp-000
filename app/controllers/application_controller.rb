
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles' do
      @articles = Article.all

      erb :'articles/index'
  end

  get '/articles/new' do
    erb :'articles/new'
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    binding.pry
    erb :'articles/show'
  end

  # POST '/articles' do
  #
  # end
end
