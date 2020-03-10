class Types::CommunityEffortType < GraphQL::Schema::Object
  graphql_name 'CommunityEffort'

  field :id, ID, :null => false
  field :description, String, :null => false
  field :date, String, :null => true
  field :url, String, :null => true
end
