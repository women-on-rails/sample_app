class Post < ApplicationRecord
  belongs_to :user
  
  has_many :comments
  
  def self.first_five
    all[0...4]
  end
end
