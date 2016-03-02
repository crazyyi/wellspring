module Wellspring
  class Tag < ActiveRecord::Base
  	has_many :taggings
	has_many :entries, through: :taggings, class_name: "Wellspring:Entry"
  end
end
