module Api
  module V1
    class ResumesController < ApiController
  include ActionController::MimeResponds
      def show
        respond_to do |format|
          format.json {
            render :json    => Resume.first,
                   :include => [:work_history, :skillsets]
          }

          format.pdf {
            pdf_html = ActionController::Base.new.render_to_string(template: 'resume/show')
            pdf = WickedPdf.new.pdf_from_string(pdf_html)
            send_data pdf, :filename => "daniel_lissner-resume.pdf"
          }
        end
      end
    end
  end
end
