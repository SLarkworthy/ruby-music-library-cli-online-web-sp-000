class MusicLibraryController
  attr_accessor :path
  
  
  def initialize(path = nil)
    @path = path
    MusicImporter.new
    
  end
  
end