class Gallery < ActiveRecord::Base
  has_many :artistgalleries
  has_many :artists, :through => :artistgalleries
end
