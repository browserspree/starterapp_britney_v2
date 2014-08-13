class RelatedBooksPortlet < Cms::Portlet

  description "TODO: Provide a suitable description for this portlet."

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false
     
  def render
    @slug = params[:book_slug]
    sn = Cms::SectionNode.where(node_type: "Starterappbritneyv2::Book", slug: "the-world-in-half")
    book = Starterappbritneyv2::Book.find(sn.first.node_id)
    @books = Starterappbritneyv2::Book.types(book.categories.first{|c| c.id}).order("created_at desc")
  end

end