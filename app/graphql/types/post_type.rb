class Types::PostType < Types::BaseObject
  description "A Post instance"

  field :body, String, null: false
  field :user_id, ID, null: false
end