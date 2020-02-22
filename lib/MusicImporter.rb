class MusicImporter
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files 
    puts @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end
  
  def self.import 
    #files.each{|f| Song.new_by_filename(f)}
  end
  
  
end