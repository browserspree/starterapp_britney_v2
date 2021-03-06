module Starterappbritneyv2
  class Book < ActiveRecord::Base
    is_addressable path: "/books"
    has_and_belongs_to_many :authors
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'
    acts_as_content_block
    content_module :books
    has_attachment :cover

    validates_presence_of :name
    validates_uniqueness_of :book_slug

    scope :available, -> status { where(in_stock: status) }

    scope :types, -> n { joins(:categories).where('category_id = ?', n) }

    def genres
      genres = Array.new
      categories.each do |c|
         genres << c if c.category_type.name=="Genres" 
      end
      genres
    end

    def related_books
      
    end  
  end
end
