class Api::V1::ResumePdfController < ActionController::Base

  def view
    respond_to do |format|
      format.pdf {
        render :pdf      => "daniel_lissner-resume",
               :template => "resume/show.html.erb"
      }
    end
  end
end
