class MusicImporter
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    puts Dir.entries(@path)
  end
  
  def self.import 
    
  end
  
  
end