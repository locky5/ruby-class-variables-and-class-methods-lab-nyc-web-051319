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
    @@genres << self.genre
    @@artists << self.artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    all_genres = @@genres
    return all_genres.uniq
  end
  
  def self.artists
    all_artists = @@artists
    return all_artists.uniq
  end
  
  def self.genre_count
    all_genres = @@genres 
  end
  
  def self.artist_count
  end

end