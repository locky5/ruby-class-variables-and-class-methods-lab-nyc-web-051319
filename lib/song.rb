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
      if hash[genre] # if the genre already exists in hash and is not nil (false)...
        hash[genre] += 1 #increment by one
      else
        hash[genre] = 1 # if genre is not there, just set value to 1
      end
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if hash[artist]
        hash[artist] += 1 
      else
        hash[artist] = 1 
      end
    end
  end

end