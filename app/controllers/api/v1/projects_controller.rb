module Api
  module V1
    class ProjectsController < ApplicationController
      def index
        projects = Project.all

        respond_to do |format|
          format.json {
            render :json => projects
          }
        end
      end
    end
  end
end
