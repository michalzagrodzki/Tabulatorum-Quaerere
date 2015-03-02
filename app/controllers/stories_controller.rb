class StoriesController < ApplicationController

  before_action :fetch_stories, only: [:index, :show ]

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
  end

  private

  def fetch_stories
    @stories = Story.all
  end
end
