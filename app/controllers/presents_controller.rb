
class PresentsController < ApplicationController
  respond_to :html

  def index
    @q = Present.all.search params[:q]
    @presents = @q.result.page(params[:page])

    respond_with @presents, meta: pagination_meta(@presents)
  end

  def show
    @present = Present.find params[:id]
    respond_with @present
  end

  def new
    if(params[:contents] && params[:name_recepient])
        @present = Present.find(params[:present_contents, :name_recepient, :elf_id])
        @inspiration = Inspiration.find(params[:inspiration_id])
    else
      @present = Present.new
    end
  end

  def edit
    @present = Present.find params[:id]
    respond_with @present
  end

  def create
    @present = Present.new(present_params)
    @present.save
    respond_with @present
  end

  def update
    @present = Present.find params[:id]
    @present.update(present_params)
    respond_with @present
  end

  def destroy
    @present = Present.find params[:id]
    @present.destroy
    respond_with @present
  end

  private

  def present_params
    params.require(:present).permit(
      :contents, 
      :name_recepient, 
      :elf_id, 
      :status
      )
  end


end
