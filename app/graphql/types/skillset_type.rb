class Types::SkillsetType < GraphQL::Schema::Object
  graphql_name 'Skillset'

  field :id, ID, :null => false
  field :title, String, :null => false
  field :skills, [String], :null => false
end
