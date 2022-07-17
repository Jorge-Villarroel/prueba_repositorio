class TvShowsController < ApplicationController
  
  
  
  def index
    @tv_shows = TvShow.all
    #@search = params[:query]
  end

  def create
    @tv_show = TvShow.new(tv_show_params)
    @tv_show.save
    redirect_to tv_shows_path 
  end

  private

  def tv_show_params
      params.require(:tv_show).permit(:name, :summary, :release_date, :rating)
  end

  before_action :authenticate_user!, except: %i[index]

  # ...

  # GET /tv_shows/new

  def create
      @tv_show = current_user.tv_shows.build(tv_show_params)
      # ...
  end

end
 