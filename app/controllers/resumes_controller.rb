class ResumesController < ApplicationController
  def show
    respond_to do |format|
      format.json {
        render :json => Resume.first
      }
    end
  end
end
