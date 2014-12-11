class RedirectionsController < ApplicationController
  def index
    @redirections = Redirection.all
  end

  def new
    @redirection = Redirection.new
  end

  def create
    @redirection = Redirection.create(redirection_params)
    redirect_to redirections_path
  end

  def edit
  end

  def update
  end

  def show
  end

  def delete
  end

  private 

  def redirection_params
    params.require(:redirection).permit(:route, :redirect)
  end

end
