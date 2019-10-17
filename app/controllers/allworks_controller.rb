class AllworksController < ApplicationController
  before_action :authenticate_user!
  def output
    @works = Work.all
  end
end
