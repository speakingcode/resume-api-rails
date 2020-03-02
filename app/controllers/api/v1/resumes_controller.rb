module Api
  module V1
    class ResumesController < ApiController
      def show
        resume = Resume.first

        respond_to do |format|
          format.json {
            render :json    => resume,
                   :include => [
                     :work_history,
                     :startup_experience,
                     :skillsets,
                     :community_efforts
                    ]
          }

          format.pdf {
            pdf_html = ActionController::Base.new.render_to_string(
              :template => 'resume/show',
              :locals   => { :resume => resume}
            )
            pdf = WickedPdf.new.pdf_from_string(pdf_html)
            send_data pdf, :filename => "daniel_lissner-resume.pdf"
          }
        end
      end
    end
  end
end
