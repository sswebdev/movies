class Movie < ActiveRecord::Base

  validates_presence_of :title

  has_many :roles, :class_name => "Role", :foreign_key => :movie_id
  has_many :actors, :through => :roles

  has_many :reviews, :class_name => "Review", :foreign_key => :movie_id
  belongs_to :director, :class_name => "Director", :foreign_key => :director_id

  scope :eighties, -> { where(year: 1980..1989) }
  scope :ninties, -> { where(year: 1990..1999) }

  def average_rating
    reviews.average(:rating)
  end


end
