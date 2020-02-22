class MusicImporter
  attr_accessor :path 
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    puts Dir.entries(@path)
    
    # Dir.entries(@path).select! {|entry| entry.end_with?(".mp3")}
    # @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def self.import 
    
  end
  
  
end