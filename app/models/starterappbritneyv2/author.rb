module Starterappbritneyv2
  class Author < ActiveRecord::Base
    is_addressable path: "/authors"
    has_and_belongs_to_many :books
    acts_as_content_block
    content_module :authors
    has_attachment :headshot

    validates_presence_of :name
  end
end
