class Mutations::UserCreate < GraphQL::Schema::Mutation
  description "Creates an User."

  null true

  argument :user, Types::UserInputType, required: true

  def resolve(user:)
    User.create(user.to_h)
  end
end