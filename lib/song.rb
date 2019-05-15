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
    hash = {}
    @@genres.each do |genre|
      if hash[genre]
        hash[genre] += 1 
      else
        hash[genre] = 1 
      end
    end
    hash
  end
  
  def self.artist_count
  end

end