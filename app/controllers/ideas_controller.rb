class IdeasController < ApplicationController
  respond_to :html, :js

   def index
    @ideas = Idea.all
    respond_to do |format|
      format.html {@idea = Idea.new; render :index}
      format.json {render json: {message: 'Your item was created', idea: @ideas}}
    end
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      respond_to do |format|
        format.html {redirect_to ideas_path}
      end
    else
      respond_to do |format|
        format.html {render :new}
      end
    end
  end

  private

  def idea_params
    params.require(:idea).permit(:title, :body, :quality)
  end

end