require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
      #binding.pry
  end

  def self.count
    @@count
  end

  def self.artists
    if @@artists.include?(artist) == false
      @@artists << artist
    end
  end

end
