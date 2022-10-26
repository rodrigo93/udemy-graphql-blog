class Types::PostType < Types::BaseObject
  description "A Post instance"

  field :body, String, null: false
  field :user_id, ID, null: false

  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
end