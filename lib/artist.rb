class Artist
  attr_accessor :name
 

  @@artists = []

  def initialize(name)
    @@artists << self
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self 
  end
 
 def songs
    @songs
  end
  def add_song_by_name(name)
    a=Song.new(name)
    add_song(a)
  end
  
  
  
  def self.all
    @@artists
  end
  def self.song_count
    self.songs.count
  end
end