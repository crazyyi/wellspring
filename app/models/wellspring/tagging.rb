module Wellspring
  class Tagging < ActiveRecord::Base
    belongs_to :entry, class_name: "Wellspring::Entry"
    belongs_to :tag, class_name: "Wellspring::Tag"
  end
end
