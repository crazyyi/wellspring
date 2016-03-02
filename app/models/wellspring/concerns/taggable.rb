module Wellspring
	module Concerns
		module Taggable
			extend ActiveSupport::Concern

			included do
				has_many :taggings, as: :taggable
				has_many :tags, through: :taggings

			end

			def all_tags
				tags.map(&:name).join(', ')
			end

			def all_tags=(tag_string)
				tag_names = tag_string.to_s.split(', ')

				tag_names.each do |tag_name|
					tags.build(name: tag_name)
				end
			end
		end
	end
end