class TopBooksForSalePortlet < Cms::Portlet

  description "TODO: Provide a suitable description for this portlet."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @books = Starterappbritneyv2::Book.order("created_at desc").limit(self.limit)
  end
    
end