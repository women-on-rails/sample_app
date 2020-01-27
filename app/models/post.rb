class Post < ApplicationRecord
  belongs_to :user
  
  has_many :comments
  
  def self.first_five
    [0...4]
  end
end
