class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def destroy
    Author.find(params[:id]).destroy
    redirect_to action: "index"
  end

  def update
    @author = Author.find(params[:id])
    @author.update(author_params)
    redirect_to action: "show", id: @author.id
  end

  def create
    @author = Author.create(author_params)
    redirect_to action: "show", id: @author.id
  end

  private

  def author_params
    params.require(:author).permit(:name, :notes)
  end
end
