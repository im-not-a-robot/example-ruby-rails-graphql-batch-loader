class GraphqlApiSchema < GraphQL::Schema
 # mutation(Types::MutationType)
  query(Types::QueryType)
  use BatchLoader::GraphQL
  
  def self.unauthorized_object(error)
    # Add a top-level error to the response instead of returning nil:
    raise GraphQL::ExecutionError, "An object of type #{error.type.graphql_name} was hidden due to permissions"
  end
  
end
