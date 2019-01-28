module Types
    class CityType < GraphQL::Schema::Object
        field :id, ID, null: false
        field :province_id, ID, null: false
        field :name, String, null: false
    end
end