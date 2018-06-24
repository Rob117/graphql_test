# frozen_string_literal: true

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :allLinks, !types[Types::LinkType] do
    argument :limit, types.Int, default_value: 20, prepare: ->(limit) { [limit, 30].min }
    resolve ->(_obj, args, _ctx) { Link.limit(args[:limit]).order(id: :desc) }
  end
end
