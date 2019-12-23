class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genre << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists(artist)
    if @@artists.includes?(artist) == false
      @@artists << artist
    end
  end
  
  def self.genres(genre)
    if @@genre.includes?(genre) == false
      @@genre << genre
    end
  end
  
  
      
end