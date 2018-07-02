class SetList < Sinatra::Base

  get '/songs' do
    songs = Song.all.includes(:playlist)
    erb :"songs/index", locals: {songs: songs}
  end

  get '/songs/new' do
    erb :"songs/new"
  end

  get '/songs/:id' do
    song = Song.find(params[:id])
    erb :"songs/show", locals: {:song => song}
  end

  post '/songs' do
    Song.create(params[:song])
    redirect '/songs'
  end

  get '/' do
    @songs = Song.all
    erb :welcome
  end

end
