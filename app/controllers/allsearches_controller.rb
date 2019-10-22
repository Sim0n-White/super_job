class AllsearchesController < ApplicationController
  before_action :authenticate_user!
  def output
    @searchers = Searcher.all
  end
end
