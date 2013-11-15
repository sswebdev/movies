class Director < ActiveRecord::Base

  # has_many :movies, :class_name => "Movie", :foreign_key => :director_id

  has_many :movies

end
