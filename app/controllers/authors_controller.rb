class AuthorsController < ApplicationController
  def new
  end
  def create
    render plain: params[:author].inspect
  endgit
end
