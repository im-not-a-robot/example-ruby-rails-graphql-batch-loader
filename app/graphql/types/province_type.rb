module Types
    class ProvinceType < GraphQL::Schema::Object
        
        field :id, ID, null: true
        field :name, String, null: true
        field :city, [Types::CityType], null: true

        def city
            # object.city

            BatchLoader.for(object.id).batch(default_value: []) do |province_ids, loader|
                City.where(province_id: province_ids).each do |city|
                    loader.call(city.province_id) { |data| data << city }
                end
            end

            # cities_data = BatchLoader.for(object.id).batch(default_value: []) do |province_ids, loader|
            #     City.where(province_id: province_ids).each do |city|
            #         loader.call(city.province_id) { |data| data << city }
            #     end
            # end
            # BatchLoader::GraphQL::Wrapper.new(cities_data)
        end
    end
end