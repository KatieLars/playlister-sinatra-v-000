class ArtistController <ApplicationController

  get '/artists' do #shows a list of all artists
    @artists = Artist.all
    erb :'artists/index'
  end

  #get '/artists/new' do

  #end

  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    erb :'artists/show'
  end

end