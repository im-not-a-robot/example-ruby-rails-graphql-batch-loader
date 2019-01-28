module Types
  class BaseObject < GraphQL::Schema::Object

     # Call this method in an Object class to set the permission level:
    
     # field_class AuthorizedField

    
    # Customizing type definitions
    # def self.required_permission(permission_level)
      
    #   @required_permission = permission_level
    # end

    # # This method is overridden to customize object types:
    # def self.to_graphql
    #   type_defn = super # returns a GraphQL::ObjectType
    #   # Get a configured value and assign it to metadata
    #   type_defn.metadata[:required_permission] = @required_permission
      
    #   type_defn
      
    # end
  end
end
