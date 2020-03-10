class Types::ProjectType < GraphQL::Schema::Object
  grapql_name 'Project'

  field :id, ID, :null => true
end
