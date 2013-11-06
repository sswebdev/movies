class Movie < ActiveRecord::Base

  def reviews
    Review.where(movie_id: self.id)
  end

  def average_rating
    reviews.average(:rating)
  end

  def director
    Director.find_by(id: self.director_id)
  end

end
