Spree::Core::Engine.routes.draw do
  post "/graphql", to: "graphql#execute"
end
