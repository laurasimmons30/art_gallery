class Artist < ActiveRecord::Base
  has_many :pictures
  has_many :artistgalleries
  has_many :galleries, :through => :artistgalleries
end
