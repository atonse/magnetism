class DispatchController < ApplicationController
  def show
    page = Page.find_by_path(params[:path] || '')
    # params[:path] is nil when / is requested

    raise Magnetism::PageNotFound if page.nil?

    page.current!
    render :text => Liquify.render(page.template.content)
  rescue
      render :text => 'Page not found', :status => 404
  end
end
