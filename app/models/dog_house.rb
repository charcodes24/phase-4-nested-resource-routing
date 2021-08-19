class DogHouse < ApplicationRecord
  has_many :reviews

  def reviews_index
    dog_house = DogHouse.find(params[:dog_house_id])
    reviews = dog_house.reviews
    render json: reviews, include: :dog_house 
  end

  def review
    review = Review.find(params[:id])
    render json: review, include: :dog_house 
  end
end
