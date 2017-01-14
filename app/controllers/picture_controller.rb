class PictureController < ApplicationController
  def sort
  	puts params
  	@picture = Picture.find(params[:id])
    @picture.attributes = params.require(:picture).permit(:picture_order_position)
    @picture.save
    # this action will be called via ajax
    render body: nil
  end
end
