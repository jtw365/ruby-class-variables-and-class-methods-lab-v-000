require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    if @@artist_count[artist] == nil

    @@genres << genre
    if @@genre_count[genre] == nil
      @@genre_count[genre] = 1
    else
      @@genre_count[genre] += 1
    end
      #binding.pry
  end

  def self.genre_count
    @@genre_count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end


end
