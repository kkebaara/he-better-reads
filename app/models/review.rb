class Review < ApplicationRecord
  belongs_to :book
  belongs_to :user


  validates :rating, presence: true
  #validates :rating, numericality: { in: 1..5 }
  validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }


  validates :book_id, uniqueness: { scope: :user_id, message: "single review per book" }


  def self.sorted(order = "DESC")
    order(rating: order)
  end
  

end
