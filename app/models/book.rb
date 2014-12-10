class Book < ActiveRecord::Base
  has_many :checkout
  has_many :categorizations
end
