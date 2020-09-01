class SearchController < ApplicationController
  def index
    @facade = HouseMembersFacade.new(params[:house])
  end
end
