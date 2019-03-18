class Genre
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|x| x.genre == self}
  end

  def self.all
    @@all
  end

  def artists
    songs.map {|x| x.artist}
  end
end
