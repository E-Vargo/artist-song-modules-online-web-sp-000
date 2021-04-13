require 'pry'
require_relative '../config/environment'

class Song
  extend Findable
  extend Memorable::ClassMethods
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
