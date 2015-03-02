class StoriesController < ApplicationController

  before_action :fetch_stories, only: [:index ]

  def index
    @stories = Story.all
  end

  private

  def fetch_stories
    @stories = Story.all
  end
end
