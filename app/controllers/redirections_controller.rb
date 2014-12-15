class RedirectionsController < ApplicationController
  def index
    @redirections = Redirection.all
  end

  def new
    @redirection = Redirection.new
    @redirections = Redirection.all
  end

  def create
    binding.pry
    @redirection = Redirection.create(redirection_params)

    redirect = @redirection.redirect
    route = @redirection.route

    # Uncomment this when you want to use the fallback method
    # begin
    #   routes = CustomRedirection::Application.routes
    #   routes.disable_clear_and_finalize = true
    #   # routes.clear!
    #   # CustomRedirection::Application.routes_reloader.paths.each{ |path| load(path) }
    #   routes.draw { get "#{route}", to: redirect("#{redirect}") }
    #   ActiveSupport.on_load(:action_controller) { routes.finalize! }
    # ensure
    #   routes.disable_clear_and_finalize = false
    # end
    # ==============================================================

    redirect_to new_redirection_path
  end

  def fallback
    query_string = "/" + params[:route]
    redirection = Redirection.find_by_route(query_string)
    if redirection
      redirection_string = redirection.redirect
      status = redirection.status || 301
      redirect_to redirection_string, status: status
    else
      render file: "#{Rails.root}/public/404.html", layout: false, status: 404
    end
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
    params.require(:redirection).permit(:route, :redirect, :status)
  end

end



# match "#{route}", to: redirect("#{redirect}"), via: :get, status: '301'