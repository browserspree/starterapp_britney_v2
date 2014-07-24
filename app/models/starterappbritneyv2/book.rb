module Starterappbritneyv2
  class Book < ActiveRecord::Base
    is_addressable path: "/books"
    has_and_belongs_to_many :authors
    has_and_belongs_to_many :categories, class_name: 'Cms::Category'
    acts_as_content_block
    content_module :books
    has_attachment :cover

    validates_presence_of :name

    def self.for_sale
      where(in_stock: true)
    end

    def self.not_for_sale
      where(in_stock: false)
    end

  end
end
