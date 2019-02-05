Types::UserType = GraphQLObjectType.define do
  name 'User'

  field :id, !types.ID
  field :name, !types.String
  field :email, !types.String
end
