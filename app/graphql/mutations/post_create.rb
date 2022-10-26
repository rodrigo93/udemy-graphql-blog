class Mutations::PostCreate < GraphQL::Schema::Mutation
  description "Creates an Post."

  null true

  argument :post, Types::PostInputType, required: true

  def resolve(post:)
    Post.create(post.to_h)
  end
end