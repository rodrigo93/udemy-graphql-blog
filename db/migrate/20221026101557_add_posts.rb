class AddPosts < ActiveRecord::Migration[7.0]
  def up
    Post.create(user_id: User.where(last_name: "Snow").first.id, body: "I know nothing")

    Post.create(user_id: User.where(last_name: "Doe").first.id, body: "I am no one")

    Post.create(user_id: User.where(last_name: "Bond").first.id, body: "I am Bond")
  end

  def down
    Post.delete_all
  end
end
