# frozen_string_literal: true

class Resolvers::CreateLink < GraphQL::Function
  # Argument passed as args
  argument :description, !types.String
  argument :url, !types.String

  # Return type from the mutation
  type Types::LinkType

  # The mutation method
  # _obj is parent object (nil here)
  # args - arguments passed
  # ctx - context
  def call(_obj, args, _ctx)
    Link.create!(
      description: args[:description],
      url: args[:url]
    )
  end
end
