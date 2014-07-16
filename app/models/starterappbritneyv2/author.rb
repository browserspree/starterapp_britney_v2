module Starterappbritneyv2
  class Author < ActiveRecord::Base
    is_addressable path: "/authors"
    acts_as_content_block
    content_module :authors
    has_attachment :headshot

    validates_presense_of :name
  end
end
