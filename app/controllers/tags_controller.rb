class TagsController < ApplicationController
  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = "New tag was added."
      redirect_to("/tags/#{@tag.id}")
    else
      render("tags/new.html.erb")
    end
  end
end
