class Song 
  attr_accessor :name,  :artist 
  @@all = []  
  
 
  def initialize(name) 
    @name = name
  end 
  
  
  def self.new_by_filename(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end
  
  
  def artist_name=(name) 
    self.artist = Artist.find_or_create_by_name(name) 
    artist.add_song(self)
  end




end
