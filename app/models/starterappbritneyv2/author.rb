module Starterappbritneyv2
  class Author < ActiveRecord::Base
    acts_as_content_block
    content_module :authors
    has_attachment :headshot
  end
end
