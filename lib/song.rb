class Song

  @@all = []

  attr_reader :name
  attr_accessor :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
