class RelatedBooksPortlet < Cms::Portlet

  description "TODO: Provide a suitable description for this portlet."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @books = Starterappbritneyv2::Book.types(category_ids).order("created_at desc").limit(self.limit)
    @book = Starterappbritneyv2::Book.find(2)
  end
    
  def category_ids
    2
  end 
end