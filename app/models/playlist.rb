class Playlist < ActiveRecord::Base
  has_many  :songs
end
