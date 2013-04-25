class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :post
  attr_accessible :name
end
