module Types
  class MutationType < Types::BaseObject
    field :user_create, Types::UserType, mutation: Mutations::UserCreate

    field :user_update, Boolean, null: false, description: "Updates an user." do
      argument :user, Types::UserInputType, required: true
    end
    def user_update(user:)
      User.where(id: user[:id]).first&.update(user.to_h) || false
    end

    field :user_delete, Boolean, null: false, description: "Deletes an user." do
      argument :id, ID, required: true
    end
    def user_delete(id:)
      User.where(id: id).delete_all
    end

    field :post_create, Types::PostType, mutation: Mutations::PostCreate

    field :post_update, Boolean, null: false, description: "Updates an post." do
      argument :post, Types::PostInputType, required: true
    end
    def post_update(post:)
      Post.where(id: post[:id]).first&.update(post.to_h) || false
    end

    field :post_delete, Boolean, null: false, description: "Deletes an post." do
      argument :id, ID, required: true
    end
    def post_delete(id:)
      Post.where(id: id).delete_all
    end

    field :comment_create, Types::CommentType, mutation: Mutations::CommentCreate

    field :comment_update, Boolean, null: false, description: "Updates an comment." do
      argument :comment, Types::CommentInputType, required: true
    end
    def comment_update(comment:)
      Comment.where(id: comment[:id]).first&.update(comment.to_h) || false
    end

    field :comment_delete, Boolean, null: false, description: "Deletes an comment." do
      argument :id, ID, required: true
    end
    def comment_delete(id:)
      Comment.where(id: id).delete_all
    end
  end
end
