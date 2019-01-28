module Types
  class QueryType < Types::BaseObject
    field :province, [Types::ProvinceType], null: false do
      argument :id, Integer, required: false
    end

    def province(id: nil)
      Province.all
    end
  end
end
