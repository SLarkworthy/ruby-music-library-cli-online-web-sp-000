class MusicImporter
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    puts Dir.entries(@path)
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def self.import 
    
  end
  
  
end