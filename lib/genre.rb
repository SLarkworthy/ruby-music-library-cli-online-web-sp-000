class Genre
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end
  
  def save
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def self.create(name)
    genre = self.new(name)
    genre.save
    genre
  end
  
  def songs 
    @songs 
  end
  
  def artists
    artists = []
    @songs.each do |song|
      artists << song.artist if !artists.include?(song.artist)
    end
    artists
  end
  
end