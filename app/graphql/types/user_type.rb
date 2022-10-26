class Types::UserType < Types::BaseObject

  description "An User instance."

  # Table fields
  field :id, ID, null: false
  field :first_name, String, null: false
  field :last_name, String, null: false
  field :street, String, null: false
  field :number, String, null: false
  field :city, String, null: false
  field :postcode, String, null: false
  field :country, String, null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

  # Relational fields
  field :posts, [Types::PostType], null: true

  # Custom fields
  field :full_address, String, null: false, description: "The full address of the User"
  def full_address
    "#{object.street} #{object.number}, #{object.city}, #{object.postcode}, #{object.country}"
  end

  field :errors, [Types::ErrorType], null: true
  def errors
    object.errors.map { |error| { field_name: error.attribute, errors: object.errors[error.attribute] } }
  end
end

class Types::UserInputType < GraphQL::Schema::InputObject
  graphql_name "UserInputType"
  description "Attributes needed to create or update an User"

  argument :id, ID, required: false
  argument :first_name, String, required: false
  argument :last_name, String, required: false
  argument :street, String, required: false
  argument :number, String, required: false
  argument :city, String, required: false
  argument :postcode, String, required: false
  argument :country, String, required: false
end