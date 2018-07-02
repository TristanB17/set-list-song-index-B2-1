class Song < ActiveRecord::Base
  # validates :title, presence: true
  # validates(:title, presence: true)
  belongs_to :playlist
  validates_presence_of :title, :length

  def self.total_play_count
    sum(:play_count)
  end

  def self.average_play_count
    average(:play_count)
  end

  def self.filter
    
  end
end
