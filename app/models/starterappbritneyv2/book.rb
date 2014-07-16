module Starterappbritneyv2
  class Book < ActiveRecord::Base
    acts_as_content_block
    content_module :books
    has_attachment :cover
  end
end
