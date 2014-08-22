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

  def new
  	@tag = Tag.new
  	render("tags/new.html.erb")
  end

  def show
  	@tag = Tag.find(params[:id])
  	render('tags/show.html.erb')
  end

  def edit
  	@tag = Tag.find(params[:id])
  	render('tags/edit.html.erb')
  end

  def update
  	@tag = Tag.find(params[:id])
  	if @tag.update(params[:tag])
  		flash[:notice] = "The tag was updated."
  		redirect_to("/tags/#{@tag.id}")
  	else
  		render("tags/edit.html.erb")
  	end
  end
end
