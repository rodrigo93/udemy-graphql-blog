class Types::ErrorType < Types::BaseObject

  description "An representation of an ActiveRecord errors."

  field :field_name, String, null: false
  field :errors, [String], null: false
end