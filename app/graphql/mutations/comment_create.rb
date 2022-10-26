class Mutations::CommentCreate < GraphQL::Schema::Mutation
  description "Creates an Comment."

  null true

  argument :comment, Types::CommentInputType, required: true

  def resolve(comment:)
    Comment.create(comment.to_h)
  end
end