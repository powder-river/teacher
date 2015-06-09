class EducatorsController < ApplicationController
  before_action :set_educator, only: [:show, :edit, :update, :destroy]


  def edit
    @educator = Educator.find_by_id(session[:educator_id])
  end

  def update
    respond_to do |format|
      if @educator.update(educator_params)
        format.html { redirect_to parents_path, notice: 'Educator was successfully updated.' }
        format.json { render :show, status: :ok, location: @educator }
      else
        format.html { render :edit }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def set_educator
      @educator = Educator.find(params[:id])
    end

    def educator_params
      params.require(:educator).permit(:name, :email, :password)
    end

end
