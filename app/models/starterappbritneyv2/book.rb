module Starterappbritneyv2
  class Book < ActiveRecord::Base
    is_addressable path: "/books"
    acts_as_content_block
    content_module :books
    has_attachment :cover

    validates_presence_of :name
  end
end
