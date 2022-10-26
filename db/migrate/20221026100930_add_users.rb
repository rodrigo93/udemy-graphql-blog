class AddUsers < ActiveRecord::Migration[7.0]
  def up
    User.create(first_name: "Jonh", last_name: "Snow", street: "Great Wall", number: "No Number", city: "Ice City",
                postcode: "4200-000", country: "Thrones")

    User.create(first_name: "Jonh", last_name: "Doe", street: "No Where", number: "123", city: "Noland",
                postcode: "123-456", country: "NA")

    User.create(first_name: "James", last_name: "Bond", street: "St. Secret", number: "007", city: "The One",
                postcode: "123-007", country: "US")
  end

  def down
    User.delete_all
  end
end
