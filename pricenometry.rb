require "rubygems"
require "sinatra/base"

class Pricenometry < Sinatra::Base

  get '/' do
    'Hello, nginx and unicorn!'
  end

  get '/search/:query' do
    "#{params[:query]}"
  end

  get '/search' do
    "#{params[:query]}"
  end

  get '/:container/:id' do
    "#{params[:container]} #{params[:id]}"
  end

  get '/:container/sitemap(:id).:format.:compression' do
    'Hello, nginx and unicorn!'
  end

end

Pricenometry.run!
