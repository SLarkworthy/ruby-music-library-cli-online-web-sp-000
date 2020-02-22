class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist != nil
    self.genre = genre if genre != nil
  end
  
  def genre=(genre)
    @genre = genre
    genre.songs << self if !genre.songs.include?(self)
  end
  
  def artist=(artist)
    #song.artist = 
    @artist = artist 
    artist.add_song(self)
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
  
  def self.create(name, artist = nil, genre = nil)
   song = self.new(name, artist = nil, genre = nil)
   song.save
   song
  end
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if !self.find_by_name(name)
      self.create(name)
    else
      self.find_by_name(name)
    end
  end
  
  def self.new_from_filename(filename)
    splitfile = filename.split(" - ")
    name = splitfile[0]
    artist = splitfile[1]
    genre = splitfile[2].gsub(".mp3", "")
    
    self.new(name, artist, genre)
  end
      
  
end