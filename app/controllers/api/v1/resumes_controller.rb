module Api
  module V1
    class ResumesController < ApiController
      def show
        respond_to do |format|
          format.json {
            render :json    => Resume.first,
                   :include => [:work_history, :skillsets]
          }
        end
      end
    end
  end
end
