class Types::CommentType < Types::BaseObject
  description "A Comment instance"

  # Table fields
  field :body, String, null: false
  field :post_id, ID, null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

  # Relational fields
  field :comments, [Types::CommentType], null: true
end