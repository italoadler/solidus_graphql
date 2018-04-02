module Solidus
  module GraphQL
    TaxonType = ::GraphQL::ObjectType.define do
      name "Taxon"

      field :id,          !types.ID
      field :name,        !types.String
      field :pretty_name, !types.String

      connection :products, ProductType.connection_type do
        resolve ProductResolver::ByTaxon
      end
    end
  end
end
