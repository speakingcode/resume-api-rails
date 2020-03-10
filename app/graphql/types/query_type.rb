module Types
  class QueryType < Types::BaseObject
    field :resume, Types::ResumeType, :null => false

    def resume
      Resume.first
    end

    field :projects, [Types::ProjectType], :null => false

    def projects
      Project.all
    end
  end
end
