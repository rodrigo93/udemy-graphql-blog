class Types::UserType < Types::BaseObject

  description "An User instance."

  # Table fields
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
end