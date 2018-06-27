require 'sinatra'

get '/home' do
  erb(:index)
end

get '/portfolio' do
  erb(:gallery)
end

get '/about_me' do
  @skills = ['git', 'html', 'css', 'ruby']
  @interests = ['wine', 'tv shows', 'bears']
  erb(:aboutme)
end

get '/favourites' do
  @fav_links = ['https://www.netflix.com/browse', 'https://www.facebook.com/', 'https://soundcloud.com/']
  erb(:fav_links)
end

get '/' do
  redirect to ('/home')
end

get '/gallery' do
  redirect to ('/portfolio')
end
