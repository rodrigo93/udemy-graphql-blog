class Types::PostType < Types::BaseObject
  description "A Post instance"

  field :id, ID, null: true
  field :body, String, null: false
  field :user_id, ID, null: false

  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

  field :errors, [Types::ErrorType], null: true
  def errors
    object.errors.map { |error| { field_name: error.attribute, errors: object.errors[error.attribute] } }
  end
end

class Types::PostInputType < GraphQL::Schema::InputObject
  graphql_name "PostInputType"
  description "Attributes needed to create or update an Post"

  argument :id, ID, required: false
  argument :body, String, required: true
  argument :user_id, Int, required: true
end