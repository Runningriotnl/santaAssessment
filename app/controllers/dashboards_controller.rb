class DashboardsController < ApplicationController
  respond_to :html
  def index
  	@q = Elf.all.search params[:q]
    @elves = @q.result.page(params[:page])
    respond_with @elves, meta: pagination_meta(@elves)
  end
end
