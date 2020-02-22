class MusicLibraryController
  attr_accessor :path
  
  
  def initialize(path = './db/mp3s')
    @path = path
    importer = MusicImporter.new(path)
    importer.import
  end
  
  def call 
    input = "" #acts as a switch for the while loop
    while (input != "exit")
      input = gets.strip
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      
      #some case stuff will go here
      
    end
  end
  
  def list_songs
    #we will need all the songs plus their indexes to number the list.
    #Song.all will give us alll instances of the song class
    #we want a custom sorting method to sort instances by name.
    #the final product should be the format 1.artist - name - genre.
    Song.all.sort {|a, b| a.name <=> b.name}.each_with_index do |song_instance, index|
      puts "#{index + 1}. #{song.artist} - #{song.name} - #{song.genre}"
    end
  end
  
end