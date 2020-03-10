class Types::ResumeType < GraphQL::Schema::Object
  graphql_name 'Resume'

  field :id, ID, :null => false
  field :name, String, :null => false,
                       :description => "The name of the person whose resume this is"
  field :title, String, :null => false,
                        :description => "The professional title of this person"
  field :summary, String, :null => false,
                           :description => "Professional summary of the person"
  field :website, String, :null => false,
                             :description => "URL of person's website"
  field :github, String, :null => false,
                         :description => "URL of github profile"
  field :stack_overflow, String, :null => false,
                                 :description => "URL of stack overflow profile"

  field :work_history, [Types::JobType], :null => false,
                                         :description => "Jobs worked and positions held"

  field :startup_experience, [Types::StartupType], :null => false,
                                                   :description => "Experience with entreprenuership"

  field :community_efforts, [Types::CommunityEffortType], :null => false,
                                                          :description => "Tech-related outreach and community building"
  field :skillsets, [Types::SkillsetType], :null => false,
                                           :description => "Collections of related skills"

  field :educations, [Types::EducationType], :null => false,
                                             :description => "Educational achievements"
end
