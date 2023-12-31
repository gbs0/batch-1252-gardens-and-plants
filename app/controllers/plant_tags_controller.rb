class PlantTagsController < ApplicationController
  # P/ criamos um model novo:
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag_id])
    @tags.each do |tag|
      @plant_tag = PlantTag.new(plant: @plant, tag: tag)
      @plant_tag.save!
    end
    redirect_to garden_path(@plant.garden)
  end

  def destroy
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag)
  end
end
