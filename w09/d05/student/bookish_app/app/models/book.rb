class Book < ActiveRecord::Base
  has_many :characters
  belongs_to :author
end
