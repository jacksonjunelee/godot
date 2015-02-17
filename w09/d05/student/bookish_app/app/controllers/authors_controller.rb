class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Cheese.new
  end

  def create
    author = Author.create(author_params)
    author.save
    redirect_to authors_path
  end

  def destroy
    Author.destroy(params[:id])
    redirect_to authors_path
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update(author_params)
    redirect_to author
  end

  def author_params
    params.require(:author).permit(:name, :born_on, :died_on, :gender, :has_pseudonym)
  end

end
