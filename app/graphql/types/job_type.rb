class Types::JobType < GraphQL::Schema::Object
  graphql_name 'Job'

  field :id, ID, :null => false
  field :title, String, :null => false
  field :company_name, String, :null => false
  field :location, String, :null => false
  field :start_date, String, :null => false
  field :end_date, String, :null => false
  field :team_name, String, :null => true
  field :url, String, :null => false
  field :highlights, [String], :null => false
end
