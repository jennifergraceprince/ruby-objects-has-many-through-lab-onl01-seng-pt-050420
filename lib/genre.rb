class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all{|song| song.genre == self}
  end

  def artists
    songs.map{|song| song.artist}
  end

  def add_song(song)
    self.songs << song
  end
  
  def self.all
    @@all
  end

end