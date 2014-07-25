class GenresPortlet < Cms::Portlet

  description "TODO: Provide a suitable description for this portlet."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @genres = Cms::CategoryType.find{|category| category.name == "Genres"}
  end
end