require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    if @artist.include?(artist) == false
      @@artists << artist
      #binding.pry
    end
  end

  def self.count
    @@count
  end

end
