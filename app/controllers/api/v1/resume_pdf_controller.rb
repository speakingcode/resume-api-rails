class Api::V1::ResumePdfController < ActionController::Base

  def view
    resume = Resume.first

    respond_to do |format|
      format.pdf {
        render :pdf      => "daniel_lissner-resume",
               :template => "resume/show.html.erb",
               :locals   => { :resume => resume}
      }
    end
  end
end
