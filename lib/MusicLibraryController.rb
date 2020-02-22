class MusicLibraryController
  aattr_accessor :path
  
  
  def initialize(path = nil)
    @path = path
    
    
  end
  
end