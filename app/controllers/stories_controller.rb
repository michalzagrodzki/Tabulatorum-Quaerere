class StoriesController < ApplicationController

  before_action :fetch_stories, only: [:index, :show ]

  def index
    @stories = Story.all

    if params[:search]
      @stories = Story.search(params[:search]).order('created_at desc')
    else
      @stories = Story.order('created_at desc')
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  private

  def fetch_stories
    @stories = Story.all
  end
end
