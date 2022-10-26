class AddComments < ActiveRecord::Migration[7.0]
  def up
    Comment.create(post_id: Post.where(body: "I know nothing").first.id, body: "Of course you don't!")

    Comment.create(post_id: Post.where(body: "I am no one").first.id, body: "Who are you?")

    Comment.create(post_id: Post.where(body: "I am Bond").first.id, body: "James Bond! :gun:")
  end

  def down
    Comment.delete_all
  end
end
