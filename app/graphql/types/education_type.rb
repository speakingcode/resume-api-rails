class Types::EducationType < GraphQL::Schema::Object
  graphql_name 'Education'

  field :degree, String, :null => false
  field :department, String, :null => false
  field :institution, String, :null => false
  field :year, String, :null => false
end
