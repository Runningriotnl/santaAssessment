class DashboardsController < ApplicationController
  respond_to :html
  def index
  	@q = Elf.all.search params[:q]
    @elves = @q.result.page(params[:page])
    #respond_with @elves, meta: pagination_meta(@elves)

    #Also add presents to the controller
  	@q = Present.all.search params[:q]
    @presents = @q.result.page(params[:page])

    respond_with @presents, meta: pagination_meta(@presents)

  end
end
